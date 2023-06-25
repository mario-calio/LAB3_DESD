`timescale 1ns / 1ps
`default_nettype none

module axis_i2s_wrapper (
    input  wire        i2s_clk, // require: approx 22.591MHz
    input  wire        i2s_resetn,

    input  wire        aclk,
    input  wire        aresetn,

    input  wire [23:0] s_axis_tdata,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire        s_axis_tlast,

    output wire [23:0] m_axis_tdata,
    output wire        m_axis_tvalid,
    input  wire        m_axis_tready,
    output wire        m_axis_tlast,

    output wire tx_mclk,
    output wire tx_lrck,
    output wire tx_sclk,
    output wire tx_sdout,
    output wire rx_mclk,
    output wire rx_lrck,
    output wire rx_sclk,
    input  wire rx_sdin
);

wire [23:0] tx_axis_s_data;
wire        tx_axis_s_valid;
wire        tx_axis_s_ready;
wire        tx_axis_s_last;

wire [23:0] rx_axis_m_data;
wire        rx_axis_m_valid;
wire        rx_axis_m_ready;
wire        rx_axis_m_last;

xpm_fifo_axis #(
    .CDC_SYNC_STAGES(2),
    .CLOCKING_MODE("independent_clock"),
    .ECC_MODE("no_ecc"),
    .FIFO_DEPTH(1024),
    .FIFO_MEMORY_TYPE("auto"),
    .PACKET_FIFO("false"),
    .PROG_EMPTY_THRESH(10),
    .PROG_FULL_THRESH(10),
    .RD_DATA_COUNT_WIDTH(1),
    .RELATED_CLOCKS(0),
    .SIM_ASSERT_CHK(1),
    .TDATA_WIDTH(24),
    .TDEST_WIDTH(1),
    .TID_WIDTH(1),
    .TUSER_WIDTH(1),
    .USE_ADV_FEATURES("0000"),
    .WR_DATA_COUNT_WIDTH(1)
)
rx_fifo (
    .s_aclk(aclk),
    .s_aresetn(aresetn),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tdest(1'b0),
    .s_axis_tid(1'b0),
    .s_axis_tkeep(1'b111),
    .s_axis_tstrb(1'b111),
    .s_axis_tuser(1'b0),

    .m_aclk(i2s_clk),
    .m_axis_tvalid(tx_axis_s_valid),
    .m_axis_tready(tx_axis_s_ready),
    .m_axis_tdata(tx_axis_s_data),
    .m_axis_tlast(tx_axis_s_last),
    .m_axis_tdest(),
    .m_axis_tid(),
    .m_axis_tkeep(),
    .m_axis_tstrb(),
    .m_axis_tuser(),

    .almost_empty_axis(),
    .almost_full_axis(),
    .dbiterr_axis(),
    .prog_empty_axis(),
    .prog_full_axis(),
    .rd_data_count_axis(),
    .sbiterr_axis(),
    .wr_data_count_axis(),
    .injectdbiterr_axis(1'b0),
    .injectsbiterr_axis(1'b0)
);

axis_dual_i2s axis_dual_i2s_inst (
    .axis_clk(i2s_clk),
    .axis_resetn(i2s_resetn),

    .tx_axis_s_data(tx_axis_s_data),
    .tx_axis_s_valid(tx_axis_s_valid),
    .tx_axis_s_ready(tx_axis_s_ready),
    .tx_axis_s_last(tx_axis_s_last),

    .rx_axis_m_data(rx_axis_m_data),
    .rx_axis_m_valid(rx_axis_m_valid),
    .rx_axis_m_ready(rx_axis_m_ready),
    .rx_axis_m_last(rx_axis_m_last),

    .tx_mclk(tx_mclk),
    .tx_lrck(tx_lrck),
    .tx_sclk(tx_sclk),
    .tx_sdout(tx_sdout),
    .rx_mclk(rx_mclk),
    .rx_lrck(rx_lrck),
    .rx_sclk(rx_sclk),
    .rx_sdin(rx_sdin)
);

xpm_fifo_axis #(
    .CDC_SYNC_STAGES(2),
    .CLOCKING_MODE("independent_clock"),
    .ECC_MODE("no_ecc"),
    .FIFO_DEPTH(1024),
    .FIFO_MEMORY_TYPE("auto"),
    .PACKET_FIFO("false"),
    .PROG_EMPTY_THRESH(10),
    .PROG_FULL_THRESH(10),
    .RD_DATA_COUNT_WIDTH(1),
    .RELATED_CLOCKS(0),
    .SIM_ASSERT_CHK(1),
    .TDATA_WIDTH(24),
    .TDEST_WIDTH(1),
    .TID_WIDTH(1),
    .TUSER_WIDTH(1),
    .USE_ADV_FEATURES("0000"),
    .WR_DATA_COUNT_WIDTH(1)
)
tx_fifo (
    .s_aclk(i2s_clk),
    .s_aresetn(i2s_resetn),
    .s_axis_tvalid(rx_axis_m_valid),
    .s_axis_tready(rx_axis_m_ready),
    .s_axis_tdata(rx_axis_m_data),
    .s_axis_tlast(rx_axis_m_last),
    .s_axis_tdest(1'b0),
    .s_axis_tid(1'b0),
    .s_axis_tkeep(1'b111),
    .s_axis_tstrb(1'b111),
    .s_axis_tuser(1'b0),

    .m_aclk(aclk),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tdest(),
    .m_axis_tid(),
    .m_axis_tkeep(),
    .m_axis_tstrb(),
    .m_axis_tuser(),

    .almost_empty_axis(),
    .almost_full_axis(),
    .dbiterr_axis(),
    .prog_empty_axis(),
    .prog_full_axis(),
    .rd_data_count_axis(),
    .sbiterr_axis(),
    .wr_data_count_axis(),
    .injectdbiterr_axis(1'b0),
    .injectsbiterr_axis(1'b0)
);

endmodule
