// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 21 20:28:20 2023
// Host        : Pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mute_0_0_sim_netlist.v
// Design      : design_1_mute_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mute_0_0,mute,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mute,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    m_axis_tlast,
    mute_enable,
    aclk,
    reset);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [23:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [23:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  input mute_enable;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;

  wire \<const1> ;
  wire aclk;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire mute_enable;
  wire reset;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign s_axis_tready = \<const1> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mute U0
       (.aclk(aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid_int_reg_0(m_axis_tvalid),
        .mute_enable(mute_enable),
        .reset(reset),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mute
   (m_axis_tvalid_int_reg_0,
    m_axis_tdata,
    m_axis_tlast,
    reset,
    s_axis_tvalid,
    s_axis_tdata,
    aclk,
    s_axis_tlast,
    m_axis_tready,
    mute_enable);
  output m_axis_tvalid_int_reg_0;
  output [23:0]m_axis_tdata;
  output m_axis_tlast;
  input reset;
  input s_axis_tvalid;
  input [23:0]s_axis_tdata;
  input aclk;
  input s_axis_tlast;
  input m_axis_tready;
  input mute_enable;

  wire aclk;
  wire is_mute;
  wire is_mute_i_1_n_0;
  wire [23:0]m_axis_tdata;
  wire \m_axis_tdata[23]_i_1_n_0 ;
  wire \m_axis_tdata[23]_i_2_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_temp;
  wire m_axis_tready;
  wire m_axis_tvalid_int_i_1_n_0;
  wire m_axis_tvalid_int_reg_0;
  wire mute_enable;
  wire new_data_i_1_n_0;
  wire new_data_reg_n_0;
  wire reset;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [23:0]unmuted_signal;

  LUT2 #(
    .INIT(4'h6)) 
    is_mute_i_1
       (.I0(mute_enable),
        .I1(is_mute),
        .O(is_mute_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    is_mute_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(reset),
        .D(is_mute_i_1_n_0),
        .Q(is_mute));
  LUT4 #(
    .INIT(16'h0008)) 
    \m_axis_tdata[23]_i_1 
       (.I0(is_mute),
        .I1(new_data_reg_n_0),
        .I2(m_axis_tvalid_int_reg_0),
        .I3(reset),
        .O(\m_axis_tdata[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \m_axis_tdata[23]_i_2 
       (.I0(m_axis_tvalid_int_reg_0),
        .I1(new_data_reg_n_0),
        .I2(reset),
        .O(\m_axis_tdata[23]_i_2_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[0]),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[10]),
        .Q(m_axis_tdata[10]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[11]),
        .Q(m_axis_tdata[11]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[12]),
        .Q(m_axis_tdata[12]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[13]),
        .Q(m_axis_tdata[13]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[14]),
        .Q(m_axis_tdata[14]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[15]),
        .Q(m_axis_tdata[15]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[16]),
        .Q(m_axis_tdata[16]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[17]),
        .Q(m_axis_tdata[17]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[18]),
        .Q(m_axis_tdata[18]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[19]),
        .Q(m_axis_tdata[19]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[1]),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[20]),
        .Q(m_axis_tdata[20]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[21]),
        .Q(m_axis_tdata[21]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[22]),
        .Q(m_axis_tdata[22]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[23]),
        .Q(m_axis_tdata[23]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[2]),
        .Q(m_axis_tdata[2]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[3]),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[4]),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[5]),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[6]),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[7]),
        .Q(m_axis_tdata[7]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[8]),
        .Q(m_axis_tdata[8]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_2_n_0 ),
        .D(unmuted_signal[9]),
        .Q(m_axis_tdata[9]),
        .R(\m_axis_tdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast_temp),
        .I1(m_axis_tvalid_int_reg_0),
        .I2(new_data_reg_n_0),
        .I3(reset),
        .I4(m_axis_tlast),
        .O(m_axis_tlast_i_1_n_0));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    m_axis_tlast_temp_reg
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tlast),
        .Q(m_axis_tlast_temp));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h74)) 
    m_axis_tvalid_int_i_1
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_int_reg_0),
        .I2(new_data_reg_n_0),
        .O(m_axis_tvalid_int_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    m_axis_tvalid_int_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(reset),
        .D(m_axis_tvalid_int_i_1_n_0),
        .Q(m_axis_tvalid_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    new_data_i_1
       (.I0(m_axis_tvalid_int_reg_0),
        .I1(new_data_reg_n_0),
        .I2(s_axis_tvalid),
        .O(new_data_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    new_data_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(reset),
        .D(new_data_i_1_n_0),
        .Q(new_data_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[0]),
        .Q(unmuted_signal[0]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[10]),
        .Q(unmuted_signal[10]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[11]),
        .Q(unmuted_signal[11]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[12]),
        .Q(unmuted_signal[12]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[13]),
        .Q(unmuted_signal[13]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[14]),
        .Q(unmuted_signal[14]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[15]),
        .Q(unmuted_signal[15]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[16] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[16]),
        .Q(unmuted_signal[16]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[17] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[17]),
        .Q(unmuted_signal[17]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[18] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[18]),
        .Q(unmuted_signal[18]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[19] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[19]),
        .Q(unmuted_signal[19]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[1]),
        .Q(unmuted_signal[1]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[20] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[20]),
        .Q(unmuted_signal[20]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[21] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[21]),
        .Q(unmuted_signal[21]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[22] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[22]),
        .Q(unmuted_signal[22]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[23] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[23]),
        .Q(unmuted_signal[23]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[2]),
        .Q(unmuted_signal[2]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[3]),
        .Q(unmuted_signal[3]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[4]),
        .Q(unmuted_signal[4]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[5]),
        .Q(unmuted_signal[5]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[6]),
        .Q(unmuted_signal[6]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[7]),
        .Q(unmuted_signal[7]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[8]),
        .Q(unmuted_signal[8]));
  FDCE #(
    .INIT(1'b0)) 
    \unmuted_signal_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .CLR(reset),
        .D(s_axis_tdata[9]),
        .Q(unmuted_signal[9]));
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
