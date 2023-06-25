// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 21 20:30:40 2023
// Host        : Pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mario/Desktop/Group_11A_assignement3.xpr/LAB3_Loopback/LAB3_Loopback.gen/sources_1/bd/design_1/ip/design_1_axi4stream_spi_master_0_0/design_1_axi4stream_spi_master_0_0_sim_netlist.v
// Design      : design_1_axi4stream_spi_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi4stream_spi_master_0_0,ipi_axis_lw_spi_master,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "ipi_axis_lw_spi_master,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_axi4stream_spi_master_0_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    cs_i,
    cs_o,
    cs_t,
    sclk_i,
    sclk_o,
    sclk_t,
    mosi_i,
    mosi_o,
    mosi_t,
    miso_i,
    miso_o,
    miso_t);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXIS:M_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M SS_I" *) input cs_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M SS_O" *) output cs_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M SS_T" *) output cs_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M SCK_I" *) input sclk_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M SCK_O" *) output sclk_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M SCK_T" *) output sclk_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M IO0_I" *) input mosi_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M IO0_O" *) output mosi_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M IO0_T" *) output mosi_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M IO1_I" *) input miso_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M IO1_O" *) output miso_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_M IO1_T" *) output miso_t;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire cs_o;
  wire [7:0]m_axis_tdata;
  wire m_axis_tvalid;
  wire miso_i;
  wire mosi_o;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire sclk_o;

  assign cs_t = \<const0> ;
  assign miso_o = \<const0> ;
  assign miso_t = \<const1> ;
  assign mosi_t = \<const0> ;
  assign s_axis_tready = m_axis_tvalid;
  assign sclk_t = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi4stream_spi_master_0_0_ipi_axis_lw_spi_master U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .cs_o(cs_o),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .miso_i(miso_i),
        .mosi_o(mosi_o),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .sclk_o(sclk_o));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "axis_lw_spi_master" *) 
module design_1_axi4stream_spi_master_0_0_axis_lw_spi_master
   (m_axis_tdata,
    sclk_o,
    cs_o,
    mosi_o,
    m_axis_tvalid,
    aclk,
    miso_i,
    s_axis_tdata,
    aresetn,
    s_axis_tvalid);
  output [7:0]m_axis_tdata;
  output sclk_o;
  output cs_o;
  output mosi_o;
  output m_axis_tvalid;
  input aclk;
  input miso_i;
  input [7:0]s_axis_tdata;
  input aresetn;
  input s_axis_tvalid;

  wire aclk;
  wire aresetn;
  wire cs_o;
  wire data_ready_reg;
  wire inst_lw_spi_master_n_3;
  wire inst_lw_spi_master_n_4;
  wire [7:0]m_axis_tdata;
  wire m_axis_tvalid;
  wire miso_i;
  wire mosi_o;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire sclk_o;

  FDRE data_ready_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(inst_lw_spi_master_n_4),
        .Q(data_ready_reg),
        .R(1'b0));
  design_1_axi4stream_spi_master_0_0_lw_spi_master inst_lw_spi_master
       (.aclk(aclk),
        .aresetn(aresetn),
        .cs_o(cs_o),
        .data_ready_o_reg_0(inst_lw_spi_master_n_4),
        .data_ready_reg(data_ready_reg),
        .data_ready_reg_reg(inst_lw_spi_master_n_3),
        .m_axis_tdata(m_axis_tdata),
        .miso_i(miso_i),
        .mosi_o(mosi_o),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .sclk_o(sclk_o));
  FDRE new_data_reg
       (.C(aclk),
        .CE(1'b1),
        .D(inst_lw_spi_master_n_3),
        .Q(m_axis_tvalid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ipi_axis_lw_spi_master" *) 
module design_1_axi4stream_spi_master_0_0_ipi_axis_lw_spi_master
   (m_axis_tdata,
    sclk_o,
    cs_o,
    mosi_o,
    m_axis_tvalid,
    aclk,
    miso_i,
    s_axis_tdata,
    aresetn,
    s_axis_tvalid);
  output [7:0]m_axis_tdata;
  output sclk_o;
  output cs_o;
  output mosi_o;
  output m_axis_tvalid;
  input aclk;
  input miso_i;
  input [7:0]s_axis_tdata;
  input aresetn;
  input s_axis_tvalid;

  wire aclk;
  wire aresetn;
  wire cs_o;
  wire [7:0]m_axis_tdata;
  wire m_axis_tvalid;
  wire miso_i;
  wire mosi_o;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire sclk_o;

  design_1_axi4stream_spi_master_0_0_axis_lw_spi_master inst_axis_lw_spi_master
       (.aclk(aclk),
        .aresetn(aresetn),
        .cs_o(cs_o),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .miso_i(miso_i),
        .mosi_o(mosi_o),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .sclk_o(sclk_o));
endmodule

(* ORIG_REF_NAME = "lw_spi_master" *) 
module design_1_axi4stream_spi_master_0_0_lw_spi_master
   (cs_o,
    sclk_o,
    mosi_o,
    data_ready_reg_reg,
    data_ready_o_reg_0,
    m_axis_tdata,
    aclk,
    data_ready_reg,
    aresetn,
    s_axis_tvalid,
    miso_i,
    s_axis_tdata);
  output cs_o;
  output sclk_o;
  output mosi_o;
  output data_ready_reg_reg;
  output data_ready_o_reg_0;
  output [7:0]m_axis_tdata;
  input aclk;
  input data_ready_reg;
  input aresetn;
  input s_axis_tvalid;
  input miso_i;
  input [7:0]s_axis_tdata;

  wire aclk;
  wire aresetn;
  wire [3:0]cntr1_in;
  wire \cntr[3]_i_1_n_0 ;
  wire \cntr[3]_i_2_n_0 ;
  wire \cntr_reg_n_0_[0] ;
  wire \cntr_reg_n_0_[1] ;
  wire \cntr_reg_n_0_[2] ;
  wire \cntr_reg_n_0_[3] ;
  wire cs_o;
  wire cs_o_i_1_n_0;
  wire cs_o_i_2_n_0;
  wire [13:1]data0;
  wire data_ready;
  wire data_ready_o_i_1_n_0;
  wire data_ready_o_reg_0;
  wire data_ready_reg;
  wire data_ready_reg_reg;
  wire [13:0]edgecntr;
  wire edgecntr0_carry__0_n_0;
  wire edgecntr0_carry__0_n_1;
  wire edgecntr0_carry__0_n_2;
  wire edgecntr0_carry__0_n_3;
  wire edgecntr0_carry__1_n_0;
  wire edgecntr0_carry__1_n_1;
  wire edgecntr0_carry__1_n_2;
  wire edgecntr0_carry__1_n_3;
  wire edgecntr0_carry_n_0;
  wire edgecntr0_carry_n_1;
  wire edgecntr0_carry_n_2;
  wire edgecntr0_carry_n_3;
  wire \edgecntr[13]_i_1_n_0 ;
  wire \edgecntr[13]_i_3_n_0 ;
  wire \edgecntr[13]_i_4_n_0 ;
  wire \edgecntr[13]_i_5_n_0 ;
  wire [13:0]edgecntr_0;
  wire [7:0]m_axis_tdata;
  wire \miso_data_o[7]_i_1_n_0 ;
  wire miso_i;
  wire mosi_o;
  wire mosi_o_i_1_n_0;
  wire mosi_o_i_2_n_0;
  wire mosi_o_i_3_n_0;
  wire p_0_in;
  wire [7:0]read_reg;
  wire \read_reg[7]_i_1_n_0 ;
  wire \read_reg[7]_i_2_n_0 ;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire sclk_en;
  wire sclk_en_i_1_n_0;
  wire sclk_i_1_n_0;
  wire sclk_o;
  wire sclk_o_i_1_n_0;
  wire sclk_prev;
  wire sclk_prev_i_1_n_0;
  wire sclk_reg_n_0;
  wire sclk_rise;
  wire state_i_1_n_0;
  wire state_reg_n_0;
  wire \write_reg[0]_i_1_n_0 ;
  wire \write_reg[0]_i_2_n_0 ;
  wire \write_reg[1]_i_1_n_0 ;
  wire \write_reg[2]_i_1_n_0 ;
  wire \write_reg[3]_i_1_n_0 ;
  wire \write_reg[4]_i_1_n_0 ;
  wire \write_reg[5]_i_1_n_0 ;
  wire \write_reg[6]_i_1_n_0 ;
  wire \write_reg[7]_i_1_n_0 ;
  wire \write_reg[7]_i_2_n_0 ;
  wire \write_reg[7]_i_3_n_0 ;
  wire \write_reg[7]_i_4_n_0 ;
  wire \write_reg[7]_i_5_n_0 ;
  wire \write_reg[7]_i_6_n_0 ;
  wire \write_reg_reg_n_0_[0] ;
  wire \write_reg_reg_n_0_[1] ;
  wire \write_reg_reg_n_0_[2] ;
  wire \write_reg_reg_n_0_[3] ;
  wire \write_reg_reg_n_0_[4] ;
  wire \write_reg_reg_n_0_[5] ;
  wire \write_reg_reg_n_0_[6] ;
  wire [3:0]NLW_edgecntr0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_edgecntr0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h33313333)) 
    \cntr[0]_i_1 
       (.I0(s_axis_tvalid),
        .I1(\cntr_reg_n_0_[0] ),
        .I2(\cntr_reg_n_0_[2] ),
        .I3(\cntr_reg_n_0_[1] ),
        .I4(\cntr_reg_n_0_[3] ),
        .O(cntr1_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \cntr[1]_i_1 
       (.I0(\cntr_reg_n_0_[0] ),
        .I1(\cntr_reg_n_0_[1] ),
        .O(cntr1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cntr[2]_i_1 
       (.I0(\cntr_reg_n_0_[1] ),
        .I1(\cntr_reg_n_0_[0] ),
        .I2(\cntr_reg_n_0_[2] ),
        .O(cntr1_in[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \cntr[3]_i_1 
       (.I0(aresetn),
        .I1(state_reg_n_0),
        .O(\cntr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0C100000)) 
    \cntr[3]_i_2 
       (.I0(\cntr_reg_n_0_[0] ),
        .I1(cs_o_i_2_n_0),
        .I2(sclk_prev),
        .I3(sclk_reg_n_0),
        .I4(aresetn),
        .O(\cntr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7788EF00)) 
    \cntr[3]_i_3 
       (.I0(\cntr_reg_n_0_[2] ),
        .I1(\cntr_reg_n_0_[1] ),
        .I2(s_axis_tvalid),
        .I3(\cntr_reg_n_0_[3] ),
        .I4(\cntr_reg_n_0_[0] ),
        .O(cntr1_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[0] 
       (.C(aclk),
        .CE(\cntr[3]_i_2_n_0 ),
        .D(cntr1_in[0]),
        .Q(\cntr_reg_n_0_[0] ),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[1] 
       (.C(aclk),
        .CE(\cntr[3]_i_2_n_0 ),
        .D(cntr1_in[1]),
        .Q(\cntr_reg_n_0_[1] ),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[2] 
       (.C(aclk),
        .CE(\cntr[3]_i_2_n_0 ),
        .D(cntr1_in[2]),
        .Q(\cntr_reg_n_0_[2] ),
        .R(\cntr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[3] 
       (.C(aclk),
        .CE(\cntr[3]_i_2_n_0 ),
        .D(cntr1_in[3]),
        .Q(\cntr_reg_n_0_[3] ),
        .R(\cntr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777777777777F777)) 
    cs_o_i_1
       (.I0(aresetn),
        .I1(state_reg_n_0),
        .I2(\cntr_reg_n_0_[0] ),
        .I3(sclk_reg_n_0),
        .I4(sclk_prev),
        .I5(cs_o_i_2_n_0),
        .O(cs_o_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    cs_o_i_2
       (.I0(\cntr_reg_n_0_[2] ),
        .I1(\cntr_reg_n_0_[1] ),
        .I2(\cntr_reg_n_0_[3] ),
        .O(cs_o_i_2_n_0));
  FDRE cs_o_reg
       (.C(aclk),
        .CE(1'b1),
        .D(cs_o_i_1_n_0),
        .Q(cs_o),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFB0B000000000000)) 
    data_ready_o_i_1
       (.I0(sclk_reg_n_0),
        .I1(sclk_prev),
        .I2(\write_reg[0]_i_2_n_0 ),
        .I3(data_ready),
        .I4(aresetn),
        .I5(state_reg_n_0),
        .O(data_ready_o_i_1_n_0));
  FDRE data_ready_o_reg
       (.C(aclk),
        .CE(1'b1),
        .D(data_ready_o_i_1_n_0),
        .Q(data_ready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ready_reg_i_1
       (.I0(data_ready),
        .I1(aresetn),
        .I2(data_ready_reg),
        .O(data_ready_o_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 edgecntr0_carry
       (.CI(1'b0),
        .CO({edgecntr0_carry_n_0,edgecntr0_carry_n_1,edgecntr0_carry_n_2,edgecntr0_carry_n_3}),
        .CYINIT(edgecntr[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(edgecntr[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 edgecntr0_carry__0
       (.CI(edgecntr0_carry_n_0),
        .CO({edgecntr0_carry__0_n_0,edgecntr0_carry__0_n_1,edgecntr0_carry__0_n_2,edgecntr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(edgecntr[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 edgecntr0_carry__1
       (.CI(edgecntr0_carry__0_n_0),
        .CO({edgecntr0_carry__1_n_0,edgecntr0_carry__1_n_1,edgecntr0_carry__1_n_2,edgecntr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(edgecntr[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 edgecntr0_carry__2
       (.CI(edgecntr0_carry__1_n_0),
        .CO(NLW_edgecntr0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_edgecntr0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,edgecntr[13]}));
  LUT1 #(
    .INIT(2'h1)) 
    \edgecntr[0]_i_1 
       (.I0(edgecntr[0]),
        .O(edgecntr_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[10]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[10]),
        .O(edgecntr_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[11]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[11]),
        .O(edgecntr_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[12]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[12]),
        .O(edgecntr_0[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \edgecntr[13]_i_1 
       (.I0(sclk_en),
        .O(\edgecntr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[13]_i_2 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[13]),
        .O(edgecntr_0[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \edgecntr[13]_i_3 
       (.I0(\edgecntr[13]_i_4_n_0 ),
        .I1(edgecntr[3]),
        .I2(edgecntr[2]),
        .I3(edgecntr[5]),
        .I4(edgecntr[4]),
        .I5(\edgecntr[13]_i_5_n_0 ),
        .O(\edgecntr[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \edgecntr[13]_i_4 
       (.I0(edgecntr[7]),
        .I1(edgecntr[6]),
        .I2(edgecntr[9]),
        .I3(edgecntr[8]),
        .O(\edgecntr[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \edgecntr[13]_i_5 
       (.I0(edgecntr[12]),
        .I1(edgecntr[13]),
        .I2(edgecntr[11]),
        .I3(edgecntr[10]),
        .I4(edgecntr[1]),
        .I5(edgecntr[0]),
        .O(\edgecntr[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[1]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[1]),
        .O(edgecntr_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[2]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[2]),
        .O(edgecntr_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[3]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[3]),
        .O(edgecntr_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[4]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[4]),
        .O(edgecntr_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[5]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[5]),
        .O(edgecntr_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[6]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[6]),
        .O(edgecntr_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[7]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[7]),
        .O(edgecntr_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[8]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[8]),
        .O(edgecntr_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \edgecntr[9]_i_1 
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(data0[9]),
        .O(edgecntr_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[0]),
        .Q(edgecntr[0]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[10]),
        .Q(edgecntr[10]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[11]),
        .Q(edgecntr[11]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[12]),
        .Q(edgecntr[12]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[13]),
        .Q(edgecntr[13]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[1]),
        .Q(edgecntr[1]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[2]),
        .Q(edgecntr[2]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[3]),
        .Q(edgecntr[3]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[4]),
        .Q(edgecntr[4]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[5]),
        .Q(edgecntr[5]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[6]),
        .Q(edgecntr[6]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[7]),
        .Q(edgecntr[7]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[8]),
        .Q(edgecntr[8]),
        .R(\edgecntr[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edgecntr_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(edgecntr_0[9]),
        .Q(edgecntr[9]),
        .R(\edgecntr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \miso_data_o[7]_i_1 
       (.I0(aresetn),
        .I1(state_reg_n_0),
        .I2(\cntr_reg_n_0_[0] ),
        .I3(\cntr_reg_n_0_[2] ),
        .I4(\cntr_reg_n_0_[1] ),
        .I5(\cntr_reg_n_0_[3] ),
        .O(\miso_data_o[7]_i_1_n_0 ));
  FDRE \miso_data_o_reg[0] 
       (.C(aclk),
        .CE(\miso_data_o[7]_i_1_n_0 ),
        .D(read_reg[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \miso_data_o_reg[1] 
       (.C(aclk),
        .CE(\miso_data_o[7]_i_1_n_0 ),
        .D(read_reg[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \miso_data_o_reg[2] 
       (.C(aclk),
        .CE(\miso_data_o[7]_i_1_n_0 ),
        .D(read_reg[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \miso_data_o_reg[3] 
       (.C(aclk),
        .CE(\miso_data_o[7]_i_1_n_0 ),
        .D(read_reg[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \miso_data_o_reg[4] 
       (.C(aclk),
        .CE(\miso_data_o[7]_i_1_n_0 ),
        .D(read_reg[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \miso_data_o_reg[5] 
       (.C(aclk),
        .CE(\miso_data_o[7]_i_1_n_0 ),
        .D(read_reg[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \miso_data_o_reg[6] 
       (.C(aclk),
        .CE(\miso_data_o[7]_i_1_n_0 ),
        .D(read_reg[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \miso_data_o_reg[7] 
       (.C(aclk),
        .CE(\miso_data_o[7]_i_1_n_0 ),
        .D(read_reg[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    mosi_o_i_1
       (.I0(mosi_o_i_2_n_0),
        .I1(aresetn),
        .O(mosi_o_i_1_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8F888888808)) 
    mosi_o_i_2
       (.I0(p_0_in),
        .I1(state_reg_n_0),
        .I2(s_axis_tvalid),
        .I3(mosi_o_i_3_n_0),
        .I4(\write_reg[0]_i_2_n_0 ),
        .I5(s_axis_tdata[7]),
        .O(mosi_o_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    mosi_o_i_3
       (.I0(sclk_reg_n_0),
        .I1(sclk_prev),
        .O(mosi_o_i_3_n_0));
  FDRE mosi_o_reg
       (.C(aclk),
        .CE(1'b1),
        .D(mosi_o_i_1_n_0),
        .Q(mosi_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    new_data_i_1
       (.I0(data_ready_reg),
        .I1(data_ready),
        .I2(aresetn),
        .O(data_ready_reg_reg));
  LUT3 #(
    .INIT(8'h08)) 
    \read_reg[7]_i_1 
       (.I0(s_axis_tvalid),
        .I1(aresetn),
        .I2(state_reg_n_0),
        .O(\read_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \read_reg[7]_i_2 
       (.I0(state_reg_n_0),
        .I1(aresetn),
        .I2(sclk_reg_n_0),
        .I3(sclk_prev),
        .I4(cs_o_i_2_n_0),
        .O(\read_reg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg_reg[0] 
       (.C(aclk),
        .CE(\read_reg[7]_i_2_n_0 ),
        .D(miso_i),
        .Q(read_reg[0]),
        .R(\read_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg_reg[1] 
       (.C(aclk),
        .CE(\read_reg[7]_i_2_n_0 ),
        .D(read_reg[0]),
        .Q(read_reg[1]),
        .R(\read_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg_reg[2] 
       (.C(aclk),
        .CE(\read_reg[7]_i_2_n_0 ),
        .D(read_reg[1]),
        .Q(read_reg[2]),
        .R(\read_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg_reg[3] 
       (.C(aclk),
        .CE(\read_reg[7]_i_2_n_0 ),
        .D(read_reg[2]),
        .Q(read_reg[3]),
        .R(\read_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg_reg[4] 
       (.C(aclk),
        .CE(\read_reg[7]_i_2_n_0 ),
        .D(read_reg[3]),
        .Q(read_reg[4]),
        .R(\read_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg_reg[5] 
       (.C(aclk),
        .CE(\read_reg[7]_i_2_n_0 ),
        .D(read_reg[4]),
        .Q(read_reg[5]),
        .R(\read_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg_reg[6] 
       (.C(aclk),
        .CE(\read_reg[7]_i_2_n_0 ),
        .D(read_reg[5]),
        .Q(read_reg[6]),
        .R(\read_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_reg_reg[7] 
       (.C(aclk),
        .CE(\read_reg[7]_i_2_n_0 ),
        .D(read_reg[6]),
        .Q(read_reg[7]),
        .R(\read_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    sclk_en_i_1
       (.I0(s_axis_tvalid),
        .I1(state_reg_n_0),
        .I2(sclk_en),
        .I3(aresetn),
        .O(sclk_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sclk_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sclk_en_i_1_n_0),
        .Q(sclk_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h9)) 
    sclk_i_1
       (.I0(\edgecntr[13]_i_3_n_0 ),
        .I1(sclk_reg_n_0),
        .O(sclk_i_1_n_0));
  LUT6 #(
    .INIT(64'hAC8CACAC0C8C0C0C)) 
    sclk_o_i_1
       (.I0(state_reg_n_0),
        .I1(sclk_o),
        .I2(aresetn),
        .I3(cs_o_i_2_n_0),
        .I4(\cntr_reg_n_0_[0] ),
        .I5(sclk_reg_n_0),
        .O(sclk_o_i_1_n_0));
  FDRE sclk_o_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sclk_o_i_1_n_0),
        .Q(sclk_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sclk_prev_i_1
       (.I0(sclk_reg_n_0),
        .I1(aresetn),
        .I2(sclk_prev),
        .O(sclk_prev_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sclk_prev_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sclk_prev_i_1_n_0),
        .Q(sclk_prev),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sclk_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sclk_i_1_n_0),
        .Q(sclk_reg_n_0),
        .R(\edgecntr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFF00BF00FF00)) 
    state_i_1
       (.I0(cs_o_i_2_n_0),
        .I1(\cntr_reg_n_0_[0] ),
        .I2(sclk_rise),
        .I3(state_reg_n_0),
        .I4(aresetn),
        .I5(s_axis_tvalid),
        .O(state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    state_i_2
       (.I0(sclk_reg_n_0),
        .I1(sclk_prev),
        .O(sclk_rise));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(aclk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAFFEFAAAA0020)) 
    \write_reg[0]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(\write_reg[0]_i_2_n_0 ),
        .I2(aresetn),
        .I3(\write_reg[7]_i_4_n_0 ),
        .I4(\read_reg[7]_i_1_n_0 ),
        .I5(\write_reg_reg_n_0_[0] ),
        .O(\write_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \write_reg[0]_i_2 
       (.I0(\cntr_reg_n_0_[3] ),
        .I1(\cntr_reg_n_0_[1] ),
        .I2(\cntr_reg_n_0_[2] ),
        .I3(\cntr_reg_n_0_[0] ),
        .O(\write_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_reg[1]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(\write_reg[7]_i_5_n_0 ),
        .I2(\write_reg_reg_n_0_[0] ),
        .O(\write_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_reg[2]_i_1 
       (.I0(s_axis_tdata[2]),
        .I1(\write_reg[7]_i_5_n_0 ),
        .I2(\write_reg_reg_n_0_[1] ),
        .O(\write_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_reg[3]_i_1 
       (.I0(s_axis_tdata[3]),
        .I1(\write_reg[7]_i_5_n_0 ),
        .I2(\write_reg_reg_n_0_[2] ),
        .O(\write_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_reg[4]_i_1 
       (.I0(s_axis_tdata[4]),
        .I1(\write_reg[7]_i_5_n_0 ),
        .I2(\write_reg_reg_n_0_[3] ),
        .O(\write_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_reg[5]_i_1 
       (.I0(s_axis_tdata[5]),
        .I1(\write_reg[7]_i_5_n_0 ),
        .I2(\write_reg_reg_n_0_[4] ),
        .O(\write_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_reg[6]_i_1 
       (.I0(s_axis_tdata[6]),
        .I1(\write_reg[7]_i_5_n_0 ),
        .I2(\write_reg_reg_n_0_[5] ),
        .O(\write_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEEEE)) 
    \write_reg[7]_i_1 
       (.I0(\write_reg[7]_i_3_n_0 ),
        .I1(\read_reg[7]_i_1_n_0 ),
        .I2(\cntr_reg_n_0_[0] ),
        .I3(\cntr_reg_n_0_[3] ),
        .I4(aresetn),
        .I5(\write_reg[7]_i_4_n_0 ),
        .O(\write_reg[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \write_reg[7]_i_2 
       (.I0(s_axis_tdata[7]),
        .I1(\write_reg[7]_i_5_n_0 ),
        .I2(\write_reg_reg_n_0_[6] ),
        .O(\write_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1110111011111110)) 
    \write_reg[7]_i_3 
       (.I0(\write_reg[7]_i_6_n_0 ),
        .I1(mosi_o_i_3_n_0),
        .I2(\cntr_reg_n_0_[1] ),
        .I3(\cntr_reg_n_0_[2] ),
        .I4(\cntr_reg_n_0_[0] ),
        .I5(\cntr_reg_n_0_[3] ),
        .O(\write_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \write_reg[7]_i_4 
       (.I0(sclk_prev),
        .I1(sclk_reg_n_0),
        .I2(s_axis_tvalid),
        .O(\write_reg[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \write_reg[7]_i_5 
       (.I0(\cntr_reg_n_0_[0] ),
        .I1(\cntr_reg_n_0_[2] ),
        .I2(\cntr_reg_n_0_[1] ),
        .I3(\cntr_reg_n_0_[3] ),
        .I4(state_reg_n_0),
        .O(\write_reg[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \write_reg[7]_i_6 
       (.I0(state_reg_n_0),
        .I1(aresetn),
        .O(\write_reg[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\write_reg[0]_i_1_n_0 ),
        .Q(\write_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_reg_reg[1] 
       (.C(aclk),
        .CE(\write_reg[7]_i_1_n_0 ),
        .D(\write_reg[1]_i_1_n_0 ),
        .Q(\write_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_reg_reg[2] 
       (.C(aclk),
        .CE(\write_reg[7]_i_1_n_0 ),
        .D(\write_reg[2]_i_1_n_0 ),
        .Q(\write_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_reg_reg[3] 
       (.C(aclk),
        .CE(\write_reg[7]_i_1_n_0 ),
        .D(\write_reg[3]_i_1_n_0 ),
        .Q(\write_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_reg_reg[4] 
       (.C(aclk),
        .CE(\write_reg[7]_i_1_n_0 ),
        .D(\write_reg[4]_i_1_n_0 ),
        .Q(\write_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_reg_reg[5] 
       (.C(aclk),
        .CE(\write_reg[7]_i_1_n_0 ),
        .D(\write_reg[5]_i_1_n_0 ),
        .Q(\write_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_reg_reg[6] 
       (.C(aclk),
        .CE(\write_reg[7]_i_1_n_0 ),
        .D(\write_reg[6]_i_1_n_0 ),
        .Q(\write_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_reg_reg[7] 
       (.C(aclk),
        .CE(\write_reg[7]_i_1_n_0 ),
        .D(\write_reg[7]_i_2_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
