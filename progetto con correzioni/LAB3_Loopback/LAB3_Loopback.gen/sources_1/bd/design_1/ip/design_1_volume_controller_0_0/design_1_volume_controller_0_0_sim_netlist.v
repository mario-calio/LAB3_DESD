// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 21 20:28:29 2023
// Host        : Pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mario/Desktop/Group_11A_assignement3.xpr/LAB3_Loopback/LAB3_Loopback.gen/sources_1/bd/design_1/ip/design_1_volume_controller_0_0/design_1_volume_controller_0_0_sim_netlist.v
// Design      : design_1_volume_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_volume_controller_0_0,volume_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "volume_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_volume_controller_0_0
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    m_axis_tlast,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    s_axis_tlast,
    volume);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [23:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [23:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  input [9:0]volume;

  wire aclk;
  wire aresetn;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [9:0]volume;

  design_1_volume_controller_0_0_volume_controller U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid_int_reg_0(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready_int_reg_0(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .volume(volume));
endmodule

(* ORIG_REF_NAME = "volume_controller" *) 
module design_1_volume_controller_0_0_volume_controller
   (s_axis_tready_int_reg_0,
    m_axis_tvalid_int_reg_0,
    m_axis_tdata,
    m_axis_tlast,
    s_axis_tvalid,
    aresetn,
    aclk,
    volume,
    s_axis_tdata,
    m_axis_tready,
    s_axis_tlast);
  output s_axis_tready_int_reg_0;
  output m_axis_tvalid_int_reg_0;
  output [23:0]m_axis_tdata;
  output m_axis_tlast;
  input s_axis_tvalid;
  input aresetn;
  input aclk;
  input [9:0]volume;
  input [23:0]s_axis_tdata;
  input m_axis_tready;
  input s_axis_tlast;

  wire DorM;
  wire DorM_i_1_n_0;
  wire DorM_i_2_n_0;
  wire DorM_i_3_n_0;
  wire aclk;
  wire aresetn;
  wire [11:0]counter;
  wire [11:1]counter00_in;
  wire [11:1]counter05_in;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[10]_i_2_n_0 ;
  wire \counter[11]_i_10_n_0 ;
  wire \counter[11]_i_11_n_0 ;
  wire \counter[11]_i_12_n_0 ;
  wire \counter[11]_i_13_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[11]_i_2_n_0 ;
  wire \counter[11]_i_3_n_0 ;
  wire \counter[11]_i_4_n_0 ;
  wire \counter[11]_i_6_n_0 ;
  wire \counter[11]_i_8_n_0 ;
  wire \counter[11]_i_9_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[1]_i_2_n_0 ;
  wire \counter[1]_i_3_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[2]_i_2_n_0 ;
  wire \counter[2]_i_3_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[4]_i_10_n_0 ;
  wire \counter[4]_i_11_n_0 ;
  wire \counter[4]_i_12_n_0 ;
  wire \counter[4]_i_13_n_0 ;
  wire \counter[4]_i_14_n_0 ;
  wire \counter[4]_i_15_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[4]_i_7_n_0 ;
  wire \counter[4]_i_8_n_0 ;
  wire \counter[4]_i_9_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[5]_i_2_n_0 ;
  wire \counter[5]_i_3_n_0 ;
  wire \counter[5]_i_4_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[6]_i_2_n_0 ;
  wire \counter[6]_i_3_n_0 ;
  wire \counter[6]_i_4_n_0 ;
  wire \counter[6]_i_5_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[7]_i_3_n_0 ;
  wire \counter[7]_i_4_n_0 ;
  wire \counter[7]_i_5_n_0 ;
  wire \counter[8]_i_10_n_0 ;
  wire \counter[8]_i_11_n_0 ;
  wire \counter[8]_i_12_n_0 ;
  wire \counter[8]_i_13_n_0 ;
  wire \counter[8]_i_14_n_0 ;
  wire \counter[8]_i_15_n_0 ;
  wire \counter[8]_i_16_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire \counter[8]_i_6_n_0 ;
  wire \counter[8]_i_8_n_0 ;
  wire \counter[8]_i_9_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter[9]_i_2_n_0 ;
  wire \counter[9]_i_3_n_0 ;
  wire \counter[9]_i_4_n_0 ;
  wire \counter_reg[11]_i_5_n_2 ;
  wire \counter_reg[11]_i_5_n_3 ;
  wire \counter_reg[11]_i_7_n_2 ;
  wire \counter_reg[11]_i_7_n_3 ;
  wire \counter_reg[4]_i_3_n_0 ;
  wire \counter_reg[4]_i_3_n_1 ;
  wire \counter_reg[4]_i_3_n_2 ;
  wire \counter_reg[4]_i_3_n_3 ;
  wire \counter_reg[4]_i_6_n_0 ;
  wire \counter_reg[4]_i_6_n_1 ;
  wire \counter_reg[4]_i_6_n_2 ;
  wire \counter_reg[4]_i_6_n_3 ;
  wire \counter_reg[8]_i_4_n_0 ;
  wire \counter_reg[8]_i_4_n_1 ;
  wire \counter_reg[8]_i_4_n_2 ;
  wire \counter_reg[8]_i_4_n_3 ;
  wire \counter_reg[8]_i_7_n_0 ;
  wire \counter_reg[8]_i_7_n_1 ;
  wire \counter_reg[8]_i_7_n_2 ;
  wire \counter_reg[8]_i_7_n_3 ;
  wire [11:0]counter_span;
  wire [11:1]counter_span0;
  wire counter_span0_carry__0_i_1_n_0;
  wire counter_span0_carry__0_i_2_n_0;
  wire counter_span0_carry__0_i_3_n_0;
  wire counter_span0_carry__0_i_4_n_0;
  wire counter_span0_carry__0_n_0;
  wire counter_span0_carry__0_n_1;
  wire counter_span0_carry__0_n_2;
  wire counter_span0_carry__0_n_3;
  wire counter_span0_carry__1_i_1_n_0;
  wire counter_span0_carry__1_i_2_n_0;
  wire counter_span0_carry__1_i_3_n_0;
  wire counter_span0_carry__1_n_2;
  wire counter_span0_carry__1_n_3;
  wire counter_span0_carry_i_1_n_0;
  wire counter_span0_carry_i_2_n_0;
  wire counter_span0_carry_i_3_n_0;
  wire counter_span0_carry_i_4_n_0;
  wire counter_span0_carry_n_0;
  wire counter_span0_carry_n_1;
  wire counter_span0_carry_n_2;
  wire counter_span0_carry_n_3;
  wire \counter_span[11]_i_1_n_0 ;
  wire \counter_span[11]_i_3_n_0 ;
  wire \counter_span[11]_i_4_n_0 ;
  wire \counter_span[11]_i_5_n_0 ;
  wire \counter_span[11]_i_6_n_0 ;
  wire \counter_span[1]_i_1_n_0 ;
  wire \counter_span[2]_i_1_n_0 ;
  wire is_computing_counter_i_1_n_0;
  wire is_computing_counter_i_2_n_0;
  wire is_computing_counter_i_3_n_0;
  wire is_computing_counter_reg_n_0;
  wire is_computing_i_1_n_0;
  wire is_computing_i_2_n_0;
  wire is_computing_reg_n_0;
  wire [23:0]m_axis_tdata;
  wire \m_axis_tdata[23]_i_1_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_temp;
  wire m_axis_tlast_temp_i_1_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid_int_i_1_n_0;
  wire m_axis_tvalid_int_reg_0;
  wire new_data_i_1_n_0;
  wire new_data_reg_n_0;
  wire \output_temp[0]_i_1_n_0 ;
  wire \output_temp[10]_i_1_n_0 ;
  wire \output_temp[10]_i_2_n_0 ;
  wire \output_temp[11]_i_1_n_0 ;
  wire \output_temp[11]_i_2_n_0 ;
  wire \output_temp[12]_i_1_n_0 ;
  wire \output_temp[12]_i_2_n_0 ;
  wire \output_temp[13]_i_1_n_0 ;
  wire \output_temp[13]_i_2_n_0 ;
  wire \output_temp[14]_i_1_n_0 ;
  wire \output_temp[14]_i_2_n_0 ;
  wire \output_temp[15]_i_1_n_0 ;
  wire \output_temp[15]_i_2_n_0 ;
  wire \output_temp[16]_i_1_n_0 ;
  wire \output_temp[16]_i_2_n_0 ;
  wire \output_temp[17]_i_1_n_0 ;
  wire \output_temp[17]_i_2_n_0 ;
  wire \output_temp[18]_i_1_n_0 ;
  wire \output_temp[18]_i_2_n_0 ;
  wire \output_temp[19]_i_1_n_0 ;
  wire \output_temp[19]_i_2_n_0 ;
  wire \output_temp[1]_i_1_n_0 ;
  wire \output_temp[1]_i_2_n_0 ;
  wire \output_temp[20]_i_1_n_0 ;
  wire \output_temp[20]_i_2_n_0 ;
  wire \output_temp[21]_i_1_n_0 ;
  wire \output_temp[22]_i_1_n_0 ;
  wire \output_temp[22]_i_2_n_0 ;
  wire \output_temp[23]_i_1_n_0 ;
  wire \output_temp[2]_i_1_n_0 ;
  wire \output_temp[2]_i_2_n_0 ;
  wire \output_temp[3]_i_1_n_0 ;
  wire \output_temp[3]_i_2_n_0 ;
  wire \output_temp[4]_i_1_n_0 ;
  wire \output_temp[4]_i_2_n_0 ;
  wire \output_temp[5]_i_1_n_0 ;
  wire \output_temp[5]_i_2_n_0 ;
  wire \output_temp[6]_i_1_n_0 ;
  wire \output_temp[6]_i_2_n_0 ;
  wire \output_temp[7]_i_1_n_0 ;
  wire \output_temp[7]_i_2_n_0 ;
  wire \output_temp[8]_i_1_n_0 ;
  wire \output_temp[8]_i_2_n_0 ;
  wire \output_temp[9]_i_1_n_0 ;
  wire \output_temp[9]_i_2_n_0 ;
  wire \output_temp_reg_n_0_[0] ;
  wire \output_temp_reg_n_0_[10] ;
  wire \output_temp_reg_n_0_[11] ;
  wire \output_temp_reg_n_0_[12] ;
  wire \output_temp_reg_n_0_[13] ;
  wire \output_temp_reg_n_0_[14] ;
  wire \output_temp_reg_n_0_[15] ;
  wire \output_temp_reg_n_0_[16] ;
  wire \output_temp_reg_n_0_[17] ;
  wire \output_temp_reg_n_0_[18] ;
  wire \output_temp_reg_n_0_[19] ;
  wire \output_temp_reg_n_0_[1] ;
  wire \output_temp_reg_n_0_[20] ;
  wire \output_temp_reg_n_0_[21] ;
  wire \output_temp_reg_n_0_[2] ;
  wire \output_temp_reg_n_0_[3] ;
  wire \output_temp_reg_n_0_[4] ;
  wire \output_temp_reg_n_0_[5] ;
  wire \output_temp_reg_n_0_[6] ;
  wire \output_temp_reg_n_0_[7] ;
  wire \output_temp_reg_n_0_[8] ;
  wire \output_temp_reg_n_0_[9] ;
  wire p_0_in;
  wire p_0_in16_in;
  wire p_1_in15_in;
  wire [11:0]p_2_in;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready_int0;
  wire s_axis_tready_int_reg_0;
  wire s_axis_tvalid;
  wire [9:0]volume;
  wire [10:0]volume_temp;
  wire [10:10]volume_temp00_in;
  wire \volume_temp[10]_i_1_n_0 ;
  wire [3:2]\NLW_counter_reg[11]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[11]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[11]_i_7_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[11]_i_7_O_UNCONNECTED ;
  wire [3:2]NLW_counter_span0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_counter_span0_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h45FFFFFF45000000)) 
    DorM_i_1
       (.I0(volume_temp[10]),
        .I1(DorM_i_2_n_0),
        .I2(DorM_i_3_n_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tready_int_reg_0),
        .I5(DorM),
        .O(DorM_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    DorM_i_2
       (.I0(volume_temp[4]),
        .I1(volume_temp[1]),
        .I2(volume_temp[2]),
        .I3(volume_temp[3]),
        .I4(volume_temp[0]),
        .O(DorM_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    DorM_i_3
       (.I0(volume_temp[8]),
        .I1(volume_temp[6]),
        .I2(volume_temp[5]),
        .I3(volume_temp[7]),
        .O(DorM_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    DorM_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(DorM_i_1_n_0),
        .Q(DorM));
  LUT6 #(
    .INIT(64'h0000555554045404)) 
    \counter[0]_i_1 
       (.I0(counter[11]),
        .I1(volume_temp[0]),
        .I2(\counter_span[11]_i_3_n_0 ),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(\counter[11]_i_3_n_0 ),
        .O(\counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55010001)) 
    \counter[10]_i_1 
       (.I0(counter[11]),
        .I1(\counter[10]_i_2_n_0 ),
        .I2(\counter_span[11]_i_3_n_0 ),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(counter05_in[10]),
        .O(\counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \counter[10]_i_2 
       (.I0(\counter[11]_i_6_n_0 ),
        .I1(counter00_in[10]),
        .I2(DorM),
        .O(\counter[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \counter[11]_i_1 
       (.I0(\counter[11]_i_3_n_0 ),
        .I1(s_axis_tready_int_reg_0),
        .I2(s_axis_tvalid),
        .I3(\counter_span[11]_i_3_n_0 ),
        .I4(counter[11]),
        .O(\counter[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[11]_i_10 
       (.I0(counter[9]),
        .O(\counter[11]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h55555554)) 
    \counter[11]_i_11 
       (.I0(volume_temp[10]),
        .I1(volume_temp[7]),
        .I2(volume_temp[5]),
        .I3(volume_temp[6]),
        .I4(volume_temp[8]),
        .O(\counter[11]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \counter[11]_i_12 
       (.I0(volume_temp[8]),
        .I1(volume_temp[6]),
        .I2(volume_temp[5]),
        .I3(volume_temp[7]),
        .I4(volume_temp[10]),
        .O(\counter[11]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \counter[11]_i_13 
       (.I0(volume_temp[7]),
        .I1(volume_temp[5]),
        .I2(volume_temp[6]),
        .I3(volume_temp[8]),
        .I4(volume_temp[10]),
        .O(\counter[11]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h55010001)) 
    \counter[11]_i_2 
       (.I0(counter[11]),
        .I1(\counter[11]_i_4_n_0 ),
        .I2(\counter_span[11]_i_3_n_0 ),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(counter05_in[11]),
        .O(\counter[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA2)) 
    \counter[11]_i_3 
       (.I0(is_computing_reg_n_0),
        .I1(is_computing_i_2_n_0),
        .I2(counter[10]),
        .I3(counter[11]),
        .O(\counter[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \counter[11]_i_4 
       (.I0(\counter[11]_i_6_n_0 ),
        .I1(counter00_in[11]),
        .I2(DorM),
        .O(\counter[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD555555500000000)) 
    \counter[11]_i_6 
       (.I0(volume_temp[10]),
        .I1(volume_temp[8]),
        .I2(volume_temp[6]),
        .I3(volume_temp[5]),
        .I4(volume_temp[7]),
        .I5(DorM),
        .O(\counter[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[11]_i_8 
       (.I0(counter[11]),
        .O(\counter[11]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[11]_i_9 
       (.I0(counter[10]),
        .O(\counter[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \counter[1]_i_1 
       (.I0(counter05_in[1]),
        .I1(\counter[11]_i_3_n_0 ),
        .I2(\counter[1]_i_2_n_0 ),
        .I3(counter[11]),
        .O(\counter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \counter[1]_i_2 
       (.I0(\counter[1]_i_3_n_0 ),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(volume_temp[1]),
        .I3(DorM),
        .I4(counter00_in[1]),
        .O(\counter[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[1]_i_3 
       (.I0(counter[11]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .O(\counter[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \counter[2]_i_1 
       (.I0(\counter[2]_i_2_n_0 ),
        .I1(\counter[11]_i_3_n_0 ),
        .I2(counter05_in[2]),
        .I3(counter[11]),
        .O(\counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \counter[2]_i_2 
       (.I0(\counter[2]_i_3_n_0 ),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(volume_temp[2]),
        .I3(DorM),
        .I4(counter00_in[2]),
        .O(\counter[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6666666A)) 
    \counter[2]_i_3 
       (.I0(counter[3]),
        .I1(counter[11]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .O(\counter[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00A3)) 
    \counter[3]_i_1 
       (.I0(counter05_in[3]),
        .I1(\counter[3]_i_2_n_0 ),
        .I2(\counter[11]_i_3_n_0 ),
        .I3(counter[11]),
        .O(\counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000474700FF4747)) 
    \counter[3]_i_2 
       (.I0(volume_temp[3]),
        .I1(DorM),
        .I2(counter00_in[3]),
        .I3(\counter[3]_i_3_n_0 ),
        .I4(\counter_span[11]_i_3_n_0 ),
        .I5(\counter[4]_i_5_n_0 ),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h666666666666666C)) 
    \counter[3]_i_3 
       (.I0(counter[11]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(counter[2]),
        .O(\counter[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \counter[4]_i_1 
       (.I0(\counter[4]_i_2_n_0 ),
        .I1(\counter[11]_i_3_n_0 ),
        .I2(counter05_in[4]),
        .I3(counter[11]),
        .O(\counter[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_10 
       (.I0(counter[1]),
        .O(\counter[4]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_11 
       (.I0(volume_temp[0]),
        .O(\counter[4]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_12 
       (.I0(volume_temp[4]),
        .O(\counter[4]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_13 
       (.I0(volume_temp[3]),
        .O(\counter[4]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_14 
       (.I0(volume_temp[2]),
        .O(\counter[4]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_15 
       (.I0(volume_temp[1]),
        .O(\counter[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \counter[4]_i_2 
       (.I0(\counter[4]_i_4_n_0 ),
        .I1(\counter[4]_i_5_n_0 ),
        .I2(\counter_span[11]_i_3_n_0 ),
        .I3(volume_temp[4]),
        .I4(DorM),
        .I5(counter00_in[4]),
        .O(\counter[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[4]_i_4 
       (.I0(counter[5]),
        .I1(counter[11]),
        .I2(\counter[6]_i_5_n_0 ),
        .O(\counter[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAA8)) 
    \counter[4]_i_5 
       (.I0(counter[11]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(counter[4]),
        .O(\counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_7 
       (.I0(counter[4]),
        .O(\counter[4]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_8 
       (.I0(counter[3]),
        .O(\counter[4]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_9 
       (.I0(counter[2]),
        .O(\counter[4]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \counter[5]_i_1 
       (.I0(\counter[5]_i_2_n_0 ),
        .I1(\counter[11]_i_3_n_0 ),
        .I2(counter05_in[5]),
        .I3(counter[11]),
        .O(\counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0EFEFEFE0EFE0)) 
    \counter[5]_i_2 
       (.I0(\counter[5]_i_3_n_0 ),
        .I1(\counter[5]_i_4_n_0 ),
        .I2(\counter_span[11]_i_3_n_0 ),
        .I3(counter00_in[5]),
        .I4(volume_temp[5]),
        .I5(DorM),
        .O(\counter[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[5]_i_3 
       (.I0(counter[6]),
        .I1(counter[11]),
        .I2(\counter[7]_i_5_n_0 ),
        .O(\counter[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAAAAAAAAA8)) 
    \counter[5]_i_4 
       (.I0(counter[11]),
        .I1(counter[5]),
        .I2(\counter[8]_i_13_n_0 ),
        .I3(counter[4]),
        .I4(\counter[8]_i_12_n_0 ),
        .I5(counter[6]),
        .O(\counter[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555541000005410)) 
    \counter[6]_i_1 
       (.I0(counter[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(\counter[6]_i_2_n_0 ),
        .I3(\counter[6]_i_3_n_0 ),
        .I4(\counter[11]_i_3_n_0 ),
        .I5(counter05_in[6]),
        .O(\counter[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \counter[6]_i_2 
       (.I0(volume_temp[5]),
        .I1(volume_temp[6]),
        .I2(DorM),
        .I3(counter00_in[6]),
        .O(\counter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCC6)) 
    \counter[6]_i_3 
       (.I0(counter[11]),
        .I1(counter[7]),
        .I2(counter[6]),
        .I3(\counter[6]_i_4_n_0 ),
        .I4(counter[5]),
        .I5(\counter[6]_i_5_n_0 ),
        .O(\counter[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000013)) 
    \counter[6]_i_4 
       (.I0(counter[11]),
        .I1(counter[4]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[2]),
        .I5(counter[3]),
        .O(\counter[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[6]_i_5 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[3]),
        .O(\counter[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555404400004044)) 
    \counter[7]_i_1 
       (.I0(counter[11]),
        .I1(\counter[7]_i_2_n_0 ),
        .I2(\counter[7]_i_3_n_0 ),
        .I3(\counter[7]_i_4_n_0 ),
        .I4(\counter[11]_i_3_n_0 ),
        .I5(counter05_in[7]),
        .O(\counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEFEFEFEFEAEAEAE)) 
    \counter[7]_i_2 
       (.I0(\counter_span[11]_i_3_n_0 ),
        .I1(counter00_in[7]),
        .I2(DorM),
        .I3(volume_temp[6]),
        .I4(volume_temp[5]),
        .I5(volume_temp[7]),
        .O(\counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02AAAAAAAAA8AAAA)) 
    \counter[7]_i_3 
       (.I0(counter[11]),
        .I1(\counter[7]_i_5_n_0 ),
        .I2(counter[6]),
        .I3(counter[7]),
        .I4(\counter[8]_i_5_n_0 ),
        .I5(counter[8]),
        .O(\counter[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888888804444444C)) 
    \counter[7]_i_4 
       (.I0(counter[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(counter[6]),
        .I3(\counter[7]_i_5_n_0 ),
        .I4(counter[7]),
        .I5(counter[8]),
        .O(\counter[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[7]_i_5 
       (.I0(counter[5]),
        .I1(counter[3]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[2]),
        .I5(counter[4]),
        .O(\counter[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555454000004540)) 
    \counter[8]_i_1 
       (.I0(counter[11]),
        .I1(\counter[8]_i_2_n_0 ),
        .I2(\counter_span[11]_i_3_n_0 ),
        .I3(\counter[8]_i_3_n_0 ),
        .I4(\counter[11]_i_3_n_0 ),
        .I5(counter05_in[8]),
        .O(\counter[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_10 
       (.I0(counter[6]),
        .O(\counter[8]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_11 
       (.I0(counter[5]),
        .O(\counter[8]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[8]_i_12 
       (.I0(counter[3]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .O(\counter[8]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFEFFEE)) 
    \counter[8]_i_13 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[11]),
        .I3(counter[1]),
        .I4(counter[0]),
        .O(\counter[8]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h01FE)) 
    \counter[8]_i_14 
       (.I0(volume_temp[6]),
        .I1(volume_temp[5]),
        .I2(volume_temp[7]),
        .I3(volume_temp[8]),
        .O(\counter[8]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \counter[8]_i_15 
       (.I0(volume_temp[5]),
        .I1(volume_temp[6]),
        .I2(volume_temp[7]),
        .O(\counter[8]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[8]_i_16 
       (.I0(volume_temp[5]),
        .I1(volume_temp[6]),
        .O(\counter[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCC66CCCCCCC)) 
    \counter[8]_i_2 
       (.I0(counter[11]),
        .I1(counter[9]),
        .I2(counter[8]),
        .I3(\counter[8]_i_5_n_0 ),
        .I4(counter[7]),
        .I5(\counter[8]_i_6_n_0 ),
        .O(\counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \counter[8]_i_3 
       (.I0(volume_temp[8]),
        .I1(volume_temp[6]),
        .I2(volume_temp[5]),
        .I3(volume_temp[7]),
        .I4(DorM),
        .I5(counter00_in[8]),
        .O(\counter[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000013)) 
    \counter[8]_i_5 
       (.I0(counter[11]),
        .I1(counter[6]),
        .I2(\counter[8]_i_12_n_0 ),
        .I3(counter[4]),
        .I4(\counter[8]_i_13_n_0 ),
        .I5(counter[5]),
        .O(\counter[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[8]_i_6 
       (.I0(counter[6]),
        .I1(\counter[7]_i_5_n_0 ),
        .O(\counter[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_8 
       (.I0(counter[8]),
        .O(\counter[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_9 
       (.I0(counter[7]),
        .O(\counter[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5555445400004454)) 
    \counter[9]_i_1 
       (.I0(counter[11]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(\counter_span[11]_i_3_n_0 ),
        .I3(\counter[9]_i_3_n_0 ),
        .I4(\counter[11]_i_3_n_0 ),
        .I5(counter05_in[9]),
        .O(\counter[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00006F60)) 
    \counter[9]_i_2 
       (.I0(volume_temp[10]),
        .I1(\counter[9]_i_4_n_0 ),
        .I2(DorM),
        .I3(counter00_in[9]),
        .I4(\counter_span[11]_i_3_n_0 ),
        .O(\counter[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \counter[9]_i_3 
       (.I0(is_computing_i_2_n_0),
        .I1(counter[11]),
        .I2(counter[10]),
        .O(\counter[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter[9]_i_4 
       (.I0(volume_temp[8]),
        .I1(volume_temp[6]),
        .I2(volume_temp[5]),
        .I3(volume_temp[7]),
        .O(\counter[9]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[10]_i_1_n_0 ),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[11]_i_2_n_0 ),
        .Q(counter[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[11]_i_5 
       (.CI(\counter_reg[8]_i_4_n_0 ),
        .CO({\NLW_counter_reg[11]_i_5_CO_UNCONNECTED [3:2],\counter_reg[11]_i_5_n_2 ,\counter_reg[11]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[10:9]}),
        .O({\NLW_counter_reg[11]_i_5_O_UNCONNECTED [3],counter05_in[11:9]}),
        .S({1'b0,\counter[11]_i_8_n_0 ,\counter[11]_i_9_n_0 ,\counter[11]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[11]_i_7 
       (.CI(\counter_reg[8]_i_7_n_0 ),
        .CO({\NLW_counter_reg[11]_i_7_CO_UNCONNECTED [3:2],\counter_reg[11]_i_7_n_2 ,\counter_reg[11]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[11]_i_7_O_UNCONNECTED [3],counter00_in[11:9]}),
        .S({1'b0,\counter[11]_i_11_n_0 ,\counter[11]_i_12_n_0 ,\counter[11]_i_13_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_3_n_0 ,\counter_reg[4]_i_3_n_1 ,\counter_reg[4]_i_3_n_2 ,\counter_reg[4]_i_3_n_3 }),
        .CYINIT(counter[0]),
        .DI(counter[4:1]),
        .O(counter05_in[4:1]),
        .S({\counter[4]_i_7_n_0 ,\counter[4]_i_8_n_0 ,\counter[4]_i_9_n_0 ,\counter[4]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_6 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_6_n_0 ,\counter_reg[4]_i_6_n_1 ,\counter_reg[4]_i_6_n_2 ,\counter_reg[4]_i_6_n_3 }),
        .CYINIT(\counter[4]_i_11_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter00_in[4:1]),
        .S({\counter[4]_i_12_n_0 ,\counter[4]_i_13_n_0 ,\counter[4]_i_14_n_0 ,\counter[4]_i_15_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[8]_i_1_n_0 ),
        .Q(counter[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_4 
       (.CI(\counter_reg[4]_i_3_n_0 ),
        .CO({\counter_reg[8]_i_4_n_0 ,\counter_reg[8]_i_4_n_1 ,\counter_reg[8]_i_4_n_2 ,\counter_reg[8]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[8:5]),
        .O(counter05_in[8:5]),
        .S({\counter[8]_i_8_n_0 ,\counter[8]_i_9_n_0 ,\counter[8]_i_10_n_0 ,\counter[8]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_7 
       (.CI(\counter_reg[4]_i_6_n_0 ),
        .CO({\counter_reg[8]_i_7_n_0 ,\counter_reg[8]_i_7_n_1 ,\counter_reg[8]_i_7_n_2 ,\counter_reg[8]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter00_in[8:5]),
        .S({\counter[8]_i_14_n_0 ,\counter[8]_i_15_n_0 ,\counter[8]_i_16_n_0 ,volume_temp[5]}));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(aclk),
        .CE(\counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter[9]_i_1_n_0 ),
        .Q(counter[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_span0_carry
       (.CI(1'b0),
        .CO({counter_span0_carry_n_0,counter_span0_carry_n_1,counter_span0_carry_n_2,counter_span0_carry_n_3}),
        .CYINIT(counter_span[0]),
        .DI(counter_span[4:1]),
        .O(counter_span0[4:1]),
        .S({counter_span0_carry_i_1_n_0,counter_span0_carry_i_2_n_0,counter_span0_carry_i_3_n_0,counter_span0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_span0_carry__0
       (.CI(counter_span0_carry_n_0),
        .CO({counter_span0_carry__0_n_0,counter_span0_carry__0_n_1,counter_span0_carry__0_n_2,counter_span0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_span[8:5]),
        .O(counter_span0[8:5]),
        .S({counter_span0_carry__0_i_1_n_0,counter_span0_carry__0_i_2_n_0,counter_span0_carry__0_i_3_n_0,counter_span0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_span0_carry__0_i_1
       (.I0(counter_span[8]),
        .O(counter_span0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_span0_carry__0_i_2
       (.I0(counter_span[7]),
        .O(counter_span0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_span0_carry__0_i_3
       (.I0(counter_span[6]),
        .O(counter_span0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_span0_carry__0_i_4
       (.I0(counter_span[5]),
        .O(counter_span0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_span0_carry__1
       (.CI(counter_span0_carry__0_n_0),
        .CO({NLW_counter_span0_carry__1_CO_UNCONNECTED[3:2],counter_span0_carry__1_n_2,counter_span0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter_span[10:9]}),
        .O({NLW_counter_span0_carry__1_O_UNCONNECTED[3],counter_span0[11:9]}),
        .S({1'b0,counter_span0_carry__1_i_1_n_0,counter_span0_carry__1_i_2_n_0,counter_span0_carry__1_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_span0_carry__1_i_1
       (.I0(counter_span[11]),
        .O(counter_span0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_span0_carry__1_i_2
       (.I0(counter_span[10]),
        .O(counter_span0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_span0_carry__1_i_3
       (.I0(counter_span[9]),
        .O(counter_span0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_span0_carry_i_1
       (.I0(counter_span[4]),
        .O(counter_span0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_span0_carry_i_2
       (.I0(counter_span[3]),
        .O(counter_span0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_span0_carry_i_3
       (.I0(counter_span[2]),
        .O(counter_span0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter_span0_carry_i_4
       (.I0(counter_span[1]),
        .O(counter_span0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter_span[0]_i_1 
       (.I0(counter_span[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(counter_span[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter_span[10]_i_1 
       (.I0(counter_span[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(counter_span0[10]),
        .O(p_2_in[10]));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \counter_span[11]_i_1 
       (.I0(counter_span[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(s_axis_tvalid),
        .I3(s_axis_tready_int_reg_0),
        .O(\counter_span[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter_span[11]_i_2 
       (.I0(counter_span[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(counter_span0[11]),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \counter_span[11]_i_3 
       (.I0(is_computing_counter_reg_n_0),
        .I1(\counter_span[11]_i_4_n_0 ),
        .I2(counter_span[5]),
        .I3(counter_span[8]),
        .I4(\counter_span[11]_i_5_n_0 ),
        .I5(\counter_span[11]_i_6_n_0 ),
        .O(\counter_span[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter_span[11]_i_4 
       (.I0(counter_span[1]),
        .I1(counter_span[3]),
        .I2(counter_span[9]),
        .I3(counter_span[6]),
        .O(\counter_span[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter_span[11]_i_5 
       (.I0(counter_span[11]),
        .I1(counter_span[10]),
        .O(\counter_span[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter_span[11]_i_6 
       (.I0(counter_span[4]),
        .I1(counter_span[2]),
        .I2(counter_span[7]),
        .I3(counter_span[0]),
        .O(\counter_span[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \counter_span[1]_i_1 
       (.I0(counter_span[11]),
        .I1(counter_span0[1]),
        .I2(\counter_span[11]_i_3_n_0 ),
        .O(\counter_span[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \counter_span[2]_i_1 
       (.I0(counter_span[11]),
        .I1(counter_span0[2]),
        .I2(\counter_span[11]_i_3_n_0 ),
        .O(\counter_span[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter_span[3]_i_1 
       (.I0(counter_span[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(counter_span0[3]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter_span[4]_i_1 
       (.I0(counter_span[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(counter_span0[4]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter_span[5]_i_1 
       (.I0(counter_span[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(counter_span0[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter_span[6]_i_1 
       (.I0(counter_span[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(counter_span0[6]),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter_span[7]_i_1 
       (.I0(counter_span[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(counter_span0[7]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter_span[8]_i_1 
       (.I0(counter_span[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(counter_span0[8]),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter_span[9]_i_1 
       (.I0(counter_span[11]),
        .I1(\counter_span[11]_i_3_n_0 ),
        .I2(counter_span0[9]),
        .O(p_2_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[0] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[0]),
        .Q(counter_span[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[10] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[10]),
        .Q(counter_span[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[11] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[11]),
        .Q(counter_span[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[1] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter_span[1]_i_1_n_0 ),
        .Q(counter_span[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[2] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\counter_span[2]_i_1_n_0 ),
        .Q(counter_span[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[3] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[3]),
        .Q(counter_span[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[4] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[4]),
        .Q(counter_span[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[5] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[5]),
        .Q(counter_span[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[6] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[6]),
        .Q(counter_span[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[7] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[7]),
        .Q(counter_span[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[8] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[8]),
        .Q(counter_span[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[9] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[9]),
        .Q(counter_span[9]));
  LUT4 #(
    .INIT(16'h7444)) 
    is_computing_counter_i_1
       (.I0(is_computing_counter_i_2_n_0),
        .I1(is_computing_counter_reg_n_0),
        .I2(s_axis_tready_int_reg_0),
        .I3(s_axis_tvalid),
        .O(is_computing_counter_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_computing_counter_i_2
       (.I0(counter_span[0]),
        .I1(counter_span[7]),
        .I2(counter_span[2]),
        .I3(counter_span[4]),
        .I4(is_computing_counter_i_3_n_0),
        .I5(\counter_span[11]_i_4_n_0 ),
        .O(is_computing_counter_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_computing_counter_i_3
       (.I0(counter_span[10]),
        .I1(counter_span[11]),
        .I2(counter_span[8]),
        .I3(counter_span[5]),
        .O(is_computing_counter_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    is_computing_counter_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(is_computing_counter_i_1_n_0),
        .Q(is_computing_counter_reg_n_0));
  LUT6 #(
    .INIT(64'hFDFFFD00FD00FD00)) 
    is_computing_i_1
       (.I0(is_computing_i_2_n_0),
        .I1(counter[10]),
        .I2(counter[11]),
        .I3(is_computing_reg_n_0),
        .I4(is_computing_counter_i_2_n_0),
        .I5(is_computing_counter_reg_n_0),
        .O(is_computing_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    is_computing_i_2
       (.I0(counter[9]),
        .I1(counter[7]),
        .I2(\counter[7]_i_5_n_0 ),
        .I3(counter[6]),
        .I4(counter[8]),
        .O(is_computing_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    is_computing_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(is_computing_i_1_n_0),
        .Q(is_computing_reg_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    \m_axis_tdata[23]_i_1 
       (.I0(m_axis_tvalid_int_reg_0),
        .I1(new_data_reg_n_0),
        .I2(aresetn),
        .O(\m_axis_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[0] ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[10] ),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[11] ),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[12] ),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[13] ),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[14] ),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[15] ),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[16] ),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[17] ),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[18] ),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[19] ),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[1] ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[20] ),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[21] ),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(p_0_in16_in),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(p_1_in15_in),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[2] ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[3] ),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[4] ),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[5] ),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[6] ),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[7] ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[8] ),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(\output_temp_reg_n_0_[9] ),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(\m_axis_tdata[23]_i_1_n_0 ),
        .D(m_axis_tlast_temp),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    m_axis_tlast_temp_i_1
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready_int_reg_0),
        .I3(m_axis_tlast_temp),
        .O(m_axis_tlast_temp_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    m_axis_tlast_temp_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(m_axis_tlast_temp_i_1_n_0),
        .Q(m_axis_tlast_temp));
  LUT3 #(
    .INIT(8'h74)) 
    m_axis_tvalid_int_i_1
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_int_reg_0),
        .I2(new_data_reg_n_0),
        .O(m_axis_tvalid_int_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_int_i_2
       (.I0(aresetn),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    m_axis_tvalid_int_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(m_axis_tvalid_int_i_1_n_0),
        .Q(m_axis_tvalid_int_reg_0));
  LUT6 #(
    .INIT(64'hFFFF000002000200)) 
    new_data_i_1
       (.I0(is_computing_i_2_n_0),
        .I1(counter[10]),
        .I2(counter[11]),
        .I3(is_computing_reg_n_0),
        .I4(m_axis_tvalid_int_reg_0),
        .I5(new_data_reg_n_0),
        .O(new_data_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    new_data_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(new_data_i_1_n_0),
        .Q(new_data_reg_n_0));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \output_temp[0]_i_1 
       (.I0(p_0_in16_in),
        .I1(p_1_in15_in),
        .I2(DorM),
        .I3(\output_temp_reg_n_0_[1] ),
        .I4(\counter[11]_i_3_n_0 ),
        .I5(s_axis_tdata[0]),
        .O(\output_temp[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[10]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[11] ),
        .I2(s_axis_tdata[10]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[10]_i_2_n_0 ),
        .O(\output_temp[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[10]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[9] ),
        .O(\output_temp[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[11]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[12] ),
        .I2(s_axis_tdata[11]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[11]_i_2_n_0 ),
        .O(\output_temp[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[11]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[10] ),
        .O(\output_temp[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[12]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[13] ),
        .I2(s_axis_tdata[12]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[12]_i_2_n_0 ),
        .O(\output_temp[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[12]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[11] ),
        .O(\output_temp[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[13]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[14] ),
        .I2(s_axis_tdata[13]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[13]_i_2_n_0 ),
        .O(\output_temp[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[13]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[12] ),
        .O(\output_temp[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[14]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[15] ),
        .I2(s_axis_tdata[14]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[14]_i_2_n_0 ),
        .O(\output_temp[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[14]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[13] ),
        .O(\output_temp[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[15]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[16] ),
        .I2(s_axis_tdata[15]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[15]_i_2_n_0 ),
        .O(\output_temp[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[15]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[14] ),
        .O(\output_temp[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[16]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[17] ),
        .I2(s_axis_tdata[16]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[16]_i_2_n_0 ),
        .O(\output_temp[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[16]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[15] ),
        .O(\output_temp[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[17]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[18] ),
        .I2(s_axis_tdata[17]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[17]_i_2_n_0 ),
        .O(\output_temp[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[17]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[16] ),
        .O(\output_temp[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[18]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[19] ),
        .I2(s_axis_tdata[18]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[18]_i_2_n_0 ),
        .O(\output_temp[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[18]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[17] ),
        .O(\output_temp[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[19]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[20] ),
        .I2(s_axis_tdata[19]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[19]_i_2_n_0 ),
        .O(\output_temp[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[19]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[18] ),
        .O(\output_temp[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[1]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[2] ),
        .I2(s_axis_tdata[1]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[1]_i_2_n_0 ),
        .O(\output_temp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[1]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[0] ),
        .O(\output_temp[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[20]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[21] ),
        .I2(s_axis_tdata[20]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[20]_i_2_n_0 ),
        .O(\output_temp[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[20]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[19] ),
        .O(\output_temp[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE2EE22E2EEEE2222)) 
    \output_temp[21]_i_1 
       (.I0(s_axis_tdata[21]),
        .I1(\counter[11]_i_3_n_0 ),
        .I2(\output_temp_reg_n_0_[20] ),
        .I3(p_1_in15_in),
        .I4(p_0_in16_in),
        .I5(DorM),
        .O(\output_temp[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \output_temp[22]_i_1 
       (.I0(s_axis_tready_int_reg_0),
        .I1(s_axis_tvalid),
        .I2(\counter[11]_i_3_n_0 ),
        .O(\output_temp[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2EE22E2EE22EE22)) 
    \output_temp[22]_i_2 
       (.I0(s_axis_tdata[22]),
        .I1(\counter[11]_i_3_n_0 ),
        .I2(\output_temp_reg_n_0_[21] ),
        .I3(p_1_in15_in),
        .I4(p_0_in16_in),
        .I5(DorM),
        .O(\output_temp[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \output_temp[23]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready_int_reg_0),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(p_1_in15_in),
        .O(\output_temp[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[2]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[3] ),
        .I2(s_axis_tdata[2]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[2]_i_2_n_0 ),
        .O(\output_temp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[2]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[1] ),
        .O(\output_temp[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[3]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[4] ),
        .I2(s_axis_tdata[3]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[3]_i_2_n_0 ),
        .O(\output_temp[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[3]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[2] ),
        .O(\output_temp[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[4]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[5] ),
        .I2(s_axis_tdata[4]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[4]_i_2_n_0 ),
        .O(\output_temp[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[4]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[3] ),
        .O(\output_temp[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[5]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[6] ),
        .I2(s_axis_tdata[5]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[5]_i_2_n_0 ),
        .O(\output_temp[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[5]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[4] ),
        .O(\output_temp[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[6]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[7] ),
        .I2(s_axis_tdata[6]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[6]_i_2_n_0 ),
        .O(\output_temp[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[6]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[5] ),
        .O(\output_temp[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[7]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[8] ),
        .I2(s_axis_tdata[7]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[7]_i_2_n_0 ),
        .O(\output_temp[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[7]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[6] ),
        .O(\output_temp[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[8]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[9] ),
        .I2(s_axis_tdata[8]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[8]_i_2_n_0 ),
        .O(\output_temp[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[8]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[7] ),
        .O(\output_temp[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF044F0)) 
    \output_temp[9]_i_1 
       (.I0(DorM),
        .I1(\output_temp_reg_n_0_[10] ),
        .I2(s_axis_tdata[9]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(\output_temp[9]_i_2_n_0 ),
        .O(\output_temp[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8A08)) 
    \output_temp[9]_i_2 
       (.I0(DorM),
        .I1(p_0_in16_in),
        .I2(p_1_in15_in),
        .I3(\output_temp_reg_n_0_[8] ),
        .O(\output_temp[9]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[0] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[0]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[10] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[10]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[10] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[11] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[11]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[11] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[12] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[12]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[12] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[13] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[13]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[13] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[14] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[14]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[14] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[15] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[15]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[15] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[16] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[16]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[16] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[17] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[17]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[17] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[18] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[18]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[18] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[19] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[19]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[19] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[1] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[1]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[20] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[20]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[20] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[21] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[21]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[21] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[22] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[22]_i_2_n_0 ),
        .PRE(p_0_in),
        .Q(p_0_in16_in));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\output_temp[23]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(p_1_in15_in));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[2] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[2]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[3] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[3]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[4] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[4]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[4] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[5] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[5]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[6] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[6]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[6] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[7] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[7]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[7] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[8] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[8]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[8] ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[9] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[9]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(\output_temp_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h1)) 
    s_axis_tready_int_i_1
       (.I0(is_computing_counter_reg_n_0),
        .I1(is_computing_reg_n_0),
        .O(s_axis_tready_int0));
  FDPE #(
    .INIT(1'b1)) 
    s_axis_tready_int_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tready_int0),
        .PRE(p_0_in),
        .Q(s_axis_tready_int_reg_0));
  LUT3 #(
    .INIT(8'h80)) 
    \volume_temp[10]_i_1 
       (.I0(s_axis_tready_int_reg_0),
        .I1(s_axis_tvalid),
        .I2(aresetn),
        .O(\volume_temp[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \volume_temp[10]_i_2 
       (.I0(volume[9]),
        .O(volume_temp00_in));
  FDRE \volume_temp_reg[0] 
       (.C(aclk),
        .CE(\volume_temp[10]_i_1_n_0 ),
        .D(volume[0]),
        .Q(volume_temp[0]),
        .R(1'b0));
  FDRE \volume_temp_reg[10] 
       (.C(aclk),
        .CE(\volume_temp[10]_i_1_n_0 ),
        .D(volume_temp00_in),
        .Q(volume_temp[10]),
        .R(1'b0));
  FDRE \volume_temp_reg[1] 
       (.C(aclk),
        .CE(\volume_temp[10]_i_1_n_0 ),
        .D(volume[1]),
        .Q(volume_temp[1]),
        .R(1'b0));
  FDRE \volume_temp_reg[2] 
       (.C(aclk),
        .CE(\volume_temp[10]_i_1_n_0 ),
        .D(volume[2]),
        .Q(volume_temp[2]),
        .R(1'b0));
  FDRE \volume_temp_reg[3] 
       (.C(aclk),
        .CE(\volume_temp[10]_i_1_n_0 ),
        .D(volume[3]),
        .Q(volume_temp[3]),
        .R(1'b0));
  FDRE \volume_temp_reg[4] 
       (.C(aclk),
        .CE(\volume_temp[10]_i_1_n_0 ),
        .D(volume[4]),
        .Q(volume_temp[4]),
        .R(1'b0));
  FDRE \volume_temp_reg[5] 
       (.C(aclk),
        .CE(\volume_temp[10]_i_1_n_0 ),
        .D(volume[5]),
        .Q(volume_temp[5]),
        .R(1'b0));
  FDRE \volume_temp_reg[6] 
       (.C(aclk),
        .CE(\volume_temp[10]_i_1_n_0 ),
        .D(volume[6]),
        .Q(volume_temp[6]),
        .R(1'b0));
  FDRE \volume_temp_reg[7] 
       (.C(aclk),
        .CE(\volume_temp[10]_i_1_n_0 ),
        .D(volume[7]),
        .Q(volume_temp[7]),
        .R(1'b0));
  FDRE \volume_temp_reg[8] 
       (.C(aclk),
        .CE(\volume_temp[10]_i_1_n_0 ),
        .D(volume[8]),
        .Q(volume_temp[8]),
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
