#!/usr/bin/env python3

import secrets

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, ClockCycles
from cocotbext.axi4stream.drivers import Axi4StreamMaster
from cocotbext.axi4stream.monitors import Axi4Stream
from cocotbext.spi import SpiSlaveBase, SpiSignals, SpiConfig

CLK_PERIOD = 10


class SimpleSpiSlave(SpiSlaveBase):
    def __init__(self, signals, config, data):
        self._config = config
        self.content = 0
        self.data = data
        super().__init__(signals)

    async def get_content(self):
        await self.idle.wait()
        return self.content

    async def _transaction(self, frame_start, frame_end):
        await frame_start
        self.idle.clear()

        self._miso.value = 1 if self.data[0] & 0x80 else 0
        self.content = int(await self._shift(len(self.data) * 8 - 1, tx_word=int.from_bytes(self.data, 'big')))
        await RisingEdge(self._sclk)
        self.content = self.content << 1 | int(self._mosi.value.integer)

        await frame_end


async def setup_dut(dut):
    cocotb.fork(Clock(dut.aclk, CLK_PERIOD, "ns").start())


@cocotb.test()
async def test_spi(dut, length=32):
    """TODO"""

    spi_signals = SpiSignals(
        sclk = dut.sclk,
        mosi = dut.mosi,
        miso = dut.miso,
        cs   = dut.cs
    )

    spi_config = SpiConfig(
        word_width = 8,
        cpol       = False,
        cpha       = False,
        data_output_idle = 0,
        msb_first  = True
    )

    mosi_tx = secrets.randbits(length * 8).to_bytes(length, 'little')
    miso_tx = secrets.randbits(length * 8).to_bytes(length, 'little')
    spi_slave = SimpleSpiSlave(spi_signals, spi_config, miso_tx)

    miso_rx = bytearray()

    axis_m = Axi4StreamMaster(dut, "s_axis", dut.aclk)
    axis_monitor = Axi4Stream(dut, "m_axis", dut.aclk, packets=False)
    axis_monitor.add_callback(lambda data: miso_rx.extend(data))

    await setup_dut(dut)
    await ClockCycles(dut.aclk, 10)

    await axis_m.write([b for b in mosi_tx])

    mosi_rx = (await spi_slave.get_content()).to_bytes(length, 'big')

    await ClockCycles(dut.aclk, 10)

    assert mosi_tx == mosi_rx, "Received MOSI data does not match transmitted one"
    assert miso_tx == miso_rx, "Received MISO data does not match transmitted one"

