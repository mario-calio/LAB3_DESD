// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 21 20:28:22 2023
// Host        : Pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_balance_controller_0_0_sim_netlist.v
// Design      : design_1_balance_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_balance_controller
   (s_axis_tready_int_reg_0,
    m_axis_tvalid_int_reg_0,
    m_axis_tdata,
    m_axis_tlast,
    s_axis_tvalid,
    aclk,
    balance,
    s_axis_tdata,
    aresetn,
    m_axis_tready,
    s_axis_tlast);
  output s_axis_tready_int_reg_0;
  output m_axis_tvalid_int_reg_0;
  output [23:0]m_axis_tdata;
  output m_axis_tlast;
  input s_axis_tvalid;
  input aclk;
  input [9:0]balance;
  input [23:0]s_axis_tdata;
  input aresetn;
  input m_axis_tready;
  input s_axis_tlast;

  wire LorR;
  wire LorR_i_1_n_0;
  wire LorR_i_2_n_0;
  wire LorR_i_3_n_0;
  wire aclk;
  wire aresetn;
  wire [9:0]balance;
  wire [10:0]balance_temp;
  wire balance_temp0;
  wire [10:10]balance_temp00_in;
  wire [11:0]counter;
  wire [11:1]counter00_in;
  wire [11:1]counter05_in;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_10_n_0 ;
  wire \counter[11]_i_11_n_0 ;
  wire \counter[11]_i_12_n_0 ;
  wire \counter[11]_i_13_n_0 ;
  wire \counter[11]_i_14_n_0 ;
  wire \counter[11]_i_15_n_0 ;
  wire \counter[11]_i_16_n_0 ;
  wire \counter[11]_i_17_n_0 ;
  wire \counter[11]_i_18_n_0 ;
  wire \counter[11]_i_19_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[11]_i_20_n_0 ;
  wire \counter[11]_i_21_n_0 ;
  wire \counter[11]_i_2_n_0 ;
  wire \counter[11]_i_3_n_0 ;
  wire \counter[11]_i_5_n_0 ;
  wire \counter[11]_i_6_n_0 ;
  wire \counter[11]_i_7_n_0 ;
  wire \counter[11]_i_8_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[1]_i_2_n_0 ;
  wire \counter[1]_i_3_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[2]_i_2_n_0 ;
  wire \counter[2]_i_3_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[4]_i_6_n_0 ;
  wire \counter[4]_i_7_n_0 ;
  wire \counter[4]_i_8_n_0 ;
  wire \counter[4]_i_9_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[5]_i_2_n_0 ;
  wire \counter[5]_i_3_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[6]_i_2_n_0 ;
  wire \counter[6]_i_3_n_0 ;
  wire \counter[6]_i_4_n_0 ;
  wire \counter[6]_i_6_n_0 ;
  wire \counter[6]_i_7_n_0 ;
  wire \counter[6]_i_8_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[7]_i_3_n_0 ;
  wire \counter[8]_i_10_n_0 ;
  wire \counter[8]_i_11_n_0 ;
  wire \counter[8]_i_12_n_0 ;
  wire \counter[8]_i_13_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_6_n_0 ;
  wire \counter[8]_i_7_n_0 ;
  wire \counter[8]_i_8_n_0 ;
  wire \counter[8]_i_9_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter[9]_i_2_n_0 ;
  wire \counter[9]_i_3_n_0 ;
  wire \counter[9]_i_4_n_0 ;
  wire \counter[9]_i_5_n_0 ;
  wire \counter[9]_i_6_n_0 ;
  wire \counter[9]_i_7_n_0 ;
  wire \counter_reg[11]_i_4_n_2 ;
  wire \counter_reg[11]_i_4_n_3 ;
  wire \counter_reg[11]_i_9_n_2 ;
  wire \counter_reg[11]_i_9_n_3 ;
  wire \counter_reg[4]_i_4_n_0 ;
  wire \counter_reg[4]_i_4_n_1 ;
  wire \counter_reg[4]_i_4_n_2 ;
  wire \counter_reg[4]_i_4_n_3 ;
  wire \counter_reg[6]_i_5_n_0 ;
  wire \counter_reg[6]_i_5_n_1 ;
  wire \counter_reg[6]_i_5_n_2 ;
  wire \counter_reg[6]_i_5_n_3 ;
  wire \counter_reg[8]_i_3_n_0 ;
  wire \counter_reg[8]_i_3_n_1 ;
  wire \counter_reg[8]_i_3_n_2 ;
  wire \counter_reg[8]_i_3_n_3 ;
  wire \counter_reg[8]_i_5_n_0 ;
  wire \counter_reg[8]_i_5_n_1 ;
  wire \counter_reg[8]_i_5_n_2 ;
  wire \counter_reg[8]_i_5_n_3 ;
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
  wire \counter_span[0]_i_2_n_0 ;
  wire \counter_span[11]_i_1_n_0 ;
  wire \counter_span[11]_i_3_n_0 ;
  wire \counter_span[11]_i_4_n_0 ;
  wire \counter_span[11]_i_5_n_0 ;
  wire \counter_span[2]_i_2_n_0 ;
  wire \counter_span[2]_i_3_n_0 ;
  wire is_computing_counter_i_1_n_0;
  wire is_computing_counter_i_2_n_0;
  wire is_computing_counter_reg_n_0;
  wire is_computing_i_1_n_0;
  wire is_computing_reg_n_0;
  wire [23:0]m_axis_tdata;
  wire m_axis_tdata0;
  wire m_axis_tlast;
  wire m_axis_tlast_temp;
  wire m_axis_tlast_temp_i_1_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid_int_i_1_n_0;
  wire m_axis_tvalid_int_reg_0;
  wire new_data_i_1_n_0;
  wire new_data_reg_n_0;
  wire [23:0]output_temp;
  wire \output_temp[0]_i_1_n_0 ;
  wire \output_temp[10]_i_1_n_0 ;
  wire \output_temp[11]_i_1_n_0 ;
  wire \output_temp[12]_i_1_n_0 ;
  wire \output_temp[13]_i_1_n_0 ;
  wire \output_temp[14]_i_1_n_0 ;
  wire \output_temp[15]_i_1_n_0 ;
  wire \output_temp[16]_i_1_n_0 ;
  wire \output_temp[17]_i_1_n_0 ;
  wire \output_temp[18]_i_1_n_0 ;
  wire \output_temp[19]_i_1_n_0 ;
  wire \output_temp[1]_i_1_n_0 ;
  wire \output_temp[20]_i_1_n_0 ;
  wire \output_temp[21]_i_1_n_0 ;
  wire \output_temp[22]_i_1_n_0 ;
  wire \output_temp[22]_i_2_n_0 ;
  wire \output_temp[22]_i_3_n_0 ;
  wire \output_temp[23]_i_1_n_0 ;
  wire \output_temp[2]_i_1_n_0 ;
  wire \output_temp[3]_i_1_n_0 ;
  wire \output_temp[4]_i_1_n_0 ;
  wire \output_temp[5]_i_1_n_0 ;
  wire \output_temp[6]_i_1_n_0 ;
  wire \output_temp[7]_i_1_n_0 ;
  wire \output_temp[8]_i_1_n_0 ;
  wire \output_temp[9]_i_1_n_0 ;
  wire p_0_in;
  wire [11:0]p_2_in;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready_int0;
  wire s_axis_tready_int_reg_0;
  wire s_axis_tvalid;
  wire [3:2]\NLW_counter_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[11]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[11]_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[11]_i_9_O_UNCONNECTED ;
  wire [3:2]NLW_counter_span0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_counter_span0_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hF4FFFFFFF4000000)) 
    LorR_i_1
       (.I0(balance_temp[10]),
        .I1(balance_temp[0]),
        .I2(LorR_i_2_n_0),
        .I3(s_axis_tready_int_reg_0),
        .I4(s_axis_tvalid),
        .I5(LorR),
        .O(LorR_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFFE)) 
    LorR_i_2
       (.I0(balance_temp[1]),
        .I1(balance_temp[2]),
        .I2(balance_temp[3]),
        .I3(LorR_i_3_n_0),
        .I4(balance_temp[10]),
        .I5(balance_temp[4]),
        .O(LorR_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    LorR_i_3
       (.I0(balance_temp[7]),
        .I1(balance_temp[5]),
        .I2(balance_temp[6]),
        .I3(balance_temp[8]),
        .O(LorR_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    LorR_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(LorR_i_1_n_0),
        .Q(LorR));
  LUT3 #(
    .INIT(8'h80)) 
    \balance_temp[10]_i_1 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready_int_reg_0),
        .I2(aresetn),
        .O(balance_temp0));
  LUT1 #(
    .INIT(2'h1)) 
    \balance_temp[10]_i_2 
       (.I0(balance[9]),
        .O(balance_temp00_in));
  FDRE \balance_temp_reg[0] 
       (.C(aclk),
        .CE(balance_temp0),
        .D(balance[0]),
        .Q(balance_temp[0]),
        .R(1'b0));
  FDRE \balance_temp_reg[10] 
       (.C(aclk),
        .CE(balance_temp0),
        .D(balance_temp00_in),
        .Q(balance_temp[10]),
        .R(1'b0));
  FDRE \balance_temp_reg[1] 
       (.C(aclk),
        .CE(balance_temp0),
        .D(balance[1]),
        .Q(balance_temp[1]),
        .R(1'b0));
  FDRE \balance_temp_reg[2] 
       (.C(aclk),
        .CE(balance_temp0),
        .D(balance[2]),
        .Q(balance_temp[2]),
        .R(1'b0));
  FDRE \balance_temp_reg[3] 
       (.C(aclk),
        .CE(balance_temp0),
        .D(balance[3]),
        .Q(balance_temp[3]),
        .R(1'b0));
  FDRE \balance_temp_reg[4] 
       (.C(aclk),
        .CE(balance_temp0),
        .D(balance[4]),
        .Q(balance_temp[4]),
        .R(1'b0));
  FDRE \balance_temp_reg[5] 
       (.C(aclk),
        .CE(balance_temp0),
        .D(balance[5]),
        .Q(balance_temp[5]),
        .R(1'b0));
  FDRE \balance_temp_reg[6] 
       (.C(aclk),
        .CE(balance_temp0),
        .D(balance[6]),
        .Q(balance_temp[6]),
        .R(1'b0));
  FDRE \balance_temp_reg[7] 
       (.C(aclk),
        .CE(balance_temp0),
        .D(balance[7]),
        .Q(balance_temp[7]),
        .R(1'b0));
  FDRE \balance_temp_reg[8] 
       (.C(aclk),
        .CE(balance_temp0),
        .D(balance[8]),
        .Q(balance_temp[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \counter[0]_i_1 
       (.I0(counter[1]),
        .I1(\counter[9]_i_3_n_0 ),
        .I2(\counter[0]_i_2_n_0 ),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0050545000004400)) 
    \counter[0]_i_2 
       (.I0(counter[11]),
        .I1(\counter[0]_i_3_n_0 ),
        .I2(\counter[0]_i_4_n_0 ),
        .I3(is_computing_reg_n_0),
        .I4(counter[0]),
        .I5(balance_temp[0]),
        .O(\counter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[0]_i_3 
       (.I0(counter[11]),
        .I1(counter[10]),
        .I2(counter[1]),
        .I3(\counter[11]_i_11_n_0 ),
        .I4(\counter[11]_i_10_n_0 ),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \counter[0]_i_4 
       (.I0(\counter_span[11]_i_5_n_0 ),
        .I1(counter_span[1]),
        .I2(\counter_span[11]_i_4_n_0 ),
        .I3(\counter_span[2]_i_2_n_0 ),
        .I4(counter_span[0]),
        .I5(is_computing_counter_reg_n_0),
        .O(\counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter[10]_i_1 
       (.I0(counter05_in[10]),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter[11]_i_6_n_0 ),
        .I3(\counter[11]_i_7_n_0 ),
        .I4(\counter[11]_i_8_n_0 ),
        .I5(counter00_in[10]),
        .O(\counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \counter[11]_i_1 
       (.I0(s_axis_tready_int_reg_0),
        .I1(s_axis_tvalid),
        .I2(counter[11]),
        .I3(\counter[11]_i_3_n_0 ),
        .I4(is_computing_reg_n_0),
        .I5(\counter_span[11]_i_3_n_0 ),
        .O(\counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[11]_i_10 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[5]),
        .I3(counter[4]),
        .O(\counter[11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[11]_i_11 
       (.I0(counter[7]),
        .I1(counter[6]),
        .I2(counter[9]),
        .I3(counter[8]),
        .O(\counter[11]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[11]_i_12 
       (.I0(counter[11]),
        .O(\counter[11]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[11]_i_13 
       (.I0(counter[10]),
        .O(\counter[11]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[11]_i_14 
       (.I0(counter[9]),
        .O(\counter[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[11]_i_15 
       (.I0(is_computing_reg_n_0),
        .I1(counter[11]),
        .O(\counter[11]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter[11]_i_16 
       (.I0(counter[10]),
        .I1(counter[11]),
        .O(\counter[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[11]_i_17 
       (.I0(counter[8]),
        .I1(counter[9]),
        .I2(counter[6]),
        .I3(counter[7]),
        .I4(counter[1]),
        .I5(\counter[11]_i_16_n_0 ),
        .O(\counter[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111115)) 
    \counter[11]_i_18 
       (.I0(counter[11]),
        .I1(is_computing_counter_reg_n_0),
        .I2(counter_span[0]),
        .I3(\counter_span[2]_i_2_n_0 ),
        .I4(\counter[9]_i_7_n_0 ),
        .I5(\counter_span[11]_i_5_n_0 ),
        .O(\counter[11]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \counter[11]_i_19 
       (.I0(balance_temp[8]),
        .I1(balance_temp[6]),
        .I2(balance_temp[5]),
        .I3(balance_temp[7]),
        .I4(balance_temp[10]),
        .O(\counter[11]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \counter[11]_i_2 
       (.I0(counter05_in[11]),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter[11]_i_6_n_0 ),
        .I3(\counter[11]_i_7_n_0 ),
        .I4(\counter[11]_i_8_n_0 ),
        .I5(counter00_in[11]),
        .O(\counter[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \counter[11]_i_20 
       (.I0(balance_temp[7]),
        .I1(balance_temp[5]),
        .I2(balance_temp[6]),
        .I3(balance_temp[8]),
        .I4(balance_temp[10]),
        .O(\counter[11]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \counter[11]_i_21 
       (.I0(balance_temp[8]),
        .I1(balance_temp[6]),
        .I2(balance_temp[5]),
        .I3(balance_temp[7]),
        .I4(balance_temp[10]),
        .O(\counter[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[11]_i_3 
       (.I0(\counter[11]_i_10_n_0 ),
        .I1(\counter[11]_i_11_n_0 ),
        .I2(counter[1]),
        .I3(counter[10]),
        .I4(counter[11]),
        .I5(counter[0]),
        .O(\counter[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \counter[11]_i_5 
       (.I0(\counter[11]_i_15_n_0 ),
        .I1(counter[0]),
        .I2(\counter[11]_i_16_n_0 ),
        .I3(counter[1]),
        .I4(\counter[11]_i_11_n_0 ),
        .I5(\counter[11]_i_10_n_0 ),
        .O(\counter[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \counter[11]_i_6 
       (.I0(balance_temp[8]),
        .I1(balance_temp[6]),
        .I2(balance_temp[5]),
        .I3(balance_temp[7]),
        .I4(balance_temp[10]),
        .O(\counter[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h01FF000000000000)) 
    \counter[11]_i_7 
       (.I0(\counter[11]_i_17_n_0 ),
        .I1(\counter[11]_i_10_n_0 ),
        .I2(counter[0]),
        .I3(is_computing_reg_n_0),
        .I4(\counter[11]_i_18_n_0 ),
        .I5(LorR),
        .O(\counter[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001FF0000)) 
    \counter[11]_i_8 
       (.I0(\counter[11]_i_17_n_0 ),
        .I1(\counter[11]_i_10_n_0 ),
        .I2(counter[0]),
        .I3(is_computing_reg_n_0),
        .I4(\counter[11]_i_18_n_0 ),
        .I5(LorR),
        .O(\counter[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \counter[1]_i_1 
       (.I0(\counter[1]_i_2_n_0 ),
        .I1(\counter[1]_i_3_n_0 ),
        .I2(counter00_in[1]),
        .I3(\counter[11]_i_8_n_0 ),
        .I4(balance_temp[1]),
        .I5(\counter[11]_i_7_n_0 ),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_2 
       (.I0(\counter[11]_i_5_n_0 ),
        .I1(counter05_in[1]),
        .O(\counter[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_3 
       (.I0(\counter[9]_i_3_n_0 ),
        .I1(counter[2]),
        .O(\counter[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \counter[2]_i_1 
       (.I0(\counter[2]_i_2_n_0 ),
        .I1(\counter[2]_i_3_n_0 ),
        .I2(counter00_in[2]),
        .I3(\counter[11]_i_8_n_0 ),
        .I4(balance_temp[2]),
        .I5(\counter[11]_i_7_n_0 ),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_2 
       (.I0(\counter[11]_i_5_n_0 ),
        .I1(counter05_in[2]),
        .O(\counter[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_3 
       (.I0(\counter[9]_i_3_n_0 ),
        .I1(counter[3]),
        .O(\counter[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \counter[3]_i_1 
       (.I0(\counter[3]_i_2_n_0 ),
        .I1(\counter[3]_i_3_n_0 ),
        .I2(counter00_in[3]),
        .I3(\counter[11]_i_8_n_0 ),
        .I4(balance_temp[3]),
        .I5(\counter[11]_i_7_n_0 ),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_2 
       (.I0(\counter[11]_i_5_n_0 ),
        .I1(counter05_in[3]),
        .O(\counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_3 
       (.I0(\counter[9]_i_3_n_0 ),
        .I1(counter[4]),
        .O(\counter[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \counter[4]_i_1 
       (.I0(\counter[4]_i_2_n_0 ),
        .I1(\counter[4]_i_3_n_0 ),
        .I2(counter00_in[4]),
        .I3(\counter[11]_i_8_n_0 ),
        .I4(balance_temp[4]),
        .I5(\counter[11]_i_7_n_0 ),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_2 
       (.I0(\counter[11]_i_5_n_0 ),
        .I1(counter05_in[4]),
        .O(\counter[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_3 
       (.I0(\counter[9]_i_3_n_0 ),
        .I1(counter[5]),
        .O(\counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_5 
       (.I0(balance_temp[0]),
        .O(\counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_6 
       (.I0(balance_temp[4]),
        .O(\counter[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_7 
       (.I0(balance_temp[3]),
        .O(\counter[4]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_8 
       (.I0(balance_temp[2]),
        .O(\counter[4]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[4]_i_9 
       (.I0(balance_temp[1]),
        .O(\counter[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEEFEEE)) 
    \counter[5]_i_1 
       (.I0(\counter[5]_i_2_n_0 ),
        .I1(\counter[5]_i_3_n_0 ),
        .I2(counter00_in[5]),
        .I3(\counter[11]_i_8_n_0 ),
        .I4(balance_temp[5]),
        .I5(\counter[11]_i_7_n_0 ),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_2 
       (.I0(\counter[11]_i_5_n_0 ),
        .I1(counter05_in[5]),
        .O(\counter[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_3 
       (.I0(\counter[9]_i_3_n_0 ),
        .I1(counter[6]),
        .O(\counter[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \counter[6]_i_1 
       (.I0(\counter[6]_i_2_n_0 ),
        .I1(\counter[6]_i_3_n_0 ),
        .I2(\counter[6]_i_4_n_0 ),
        .I3(\counter[11]_i_7_n_0 ),
        .I4(counter00_in[6]),
        .I5(\counter[11]_i_8_n_0 ),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_2 
       (.I0(\counter[11]_i_5_n_0 ),
        .I1(counter05_in[6]),
        .O(\counter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_3 
       (.I0(\counter[9]_i_3_n_0 ),
        .I1(counter[7]),
        .O(\counter[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[6]_i_4 
       (.I0(balance_temp[5]),
        .I1(balance_temp[6]),
        .O(\counter[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h01FE)) 
    \counter[6]_i_6 
       (.I0(balance_temp[7]),
        .I1(balance_temp[5]),
        .I2(balance_temp[6]),
        .I3(balance_temp[8]),
        .O(\counter[6]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \counter[6]_i_7 
       (.I0(balance_temp[6]),
        .I1(balance_temp[5]),
        .I2(balance_temp[7]),
        .O(\counter[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[6]_i_8 
       (.I0(balance_temp[5]),
        .I1(balance_temp[6]),
        .O(\counter[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \counter[7]_i_1 
       (.I0(\counter[7]_i_2_n_0 ),
        .I1(\counter[9]_i_3_n_0 ),
        .I2(counter[8]),
        .I3(counter05_in[7]),
        .I4(\counter[11]_i_5_n_0 ),
        .O(\counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h99000000F0000000)) 
    \counter[7]_i_2 
       (.I0(balance_temp[7]),
        .I1(\counter[7]_i_3_n_0 ),
        .I2(counter00_in[7]),
        .I3(\counter[9]_i_5_n_0 ),
        .I4(\counter[11]_i_18_n_0 ),
        .I5(LorR),
        .O(\counter[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[7]_i_3 
       (.I0(balance_temp[5]),
        .I1(balance_temp[6]),
        .O(\counter[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \counter[8]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(\counter[9]_i_3_n_0 ),
        .I2(counter[9]),
        .I3(counter05_in[8]),
        .I4(\counter[11]_i_5_n_0 ),
        .O(\counter[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_10 
       (.I0(counter[4]),
        .O(\counter[8]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_11 
       (.I0(counter[3]),
        .O(\counter[8]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_12 
       (.I0(counter[2]),
        .O(\counter[8]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_13 
       (.I0(counter[1]),
        .O(\counter[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h99000000F0000000)) 
    \counter[8]_i_2 
       (.I0(balance_temp[8]),
        .I1(\counter[8]_i_4_n_0 ),
        .I2(counter00_in[8]),
        .I3(\counter[9]_i_5_n_0 ),
        .I4(\counter[11]_i_18_n_0 ),
        .I5(LorR),
        .O(\counter[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[8]_i_4 
       (.I0(balance_temp[6]),
        .I1(balance_temp[5]),
        .I2(balance_temp[7]),
        .O(\counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_6 
       (.I0(counter[8]),
        .O(\counter[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_7 
       (.I0(counter[7]),
        .O(\counter[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_8 
       (.I0(counter[6]),
        .O(\counter[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[8]_i_9 
       (.I0(counter[5]),
        .O(\counter[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \counter[9]_i_1 
       (.I0(\counter[9]_i_2_n_0 ),
        .I1(\counter[9]_i_3_n_0 ),
        .I2(counter[10]),
        .I3(counter05_in[9]),
        .I4(\counter[11]_i_5_n_0 ),
        .O(\counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h99000000F0000000)) 
    \counter[9]_i_2 
       (.I0(balance_temp[10]),
        .I1(\counter[9]_i_4_n_0 ),
        .I2(counter00_in[9]),
        .I3(\counter[9]_i_5_n_0 ),
        .I4(\counter[11]_i_18_n_0 ),
        .I5(LorR),
        .O(\counter[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \counter[9]_i_3 
       (.I0(\counter[9]_i_6_n_0 ),
        .I1(is_computing_counter_reg_n_0),
        .I2(\counter_span[2]_i_2_n_0 ),
        .I3(\counter_span[11]_i_5_n_0 ),
        .I4(\counter[9]_i_7_n_0 ),
        .I5(counter_span[0]),
        .O(\counter[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[9]_i_4 
       (.I0(balance_temp[7]),
        .I1(balance_temp[5]),
        .I2(balance_temp[6]),
        .I3(balance_temp[8]),
        .O(\counter[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \counter[9]_i_5 
       (.I0(\counter[11]_i_11_n_0 ),
        .I1(counter[1]),
        .I2(\counter[11]_i_16_n_0 ),
        .I3(\counter[11]_i_10_n_0 ),
        .I4(counter[0]),
        .I5(is_computing_reg_n_0),
        .O(\counter[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[9]_i_6 
       (.I0(counter[11]),
        .I1(is_computing_reg_n_0),
        .O(\counter[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[9]_i_7 
       (.I0(counter_span[11]),
        .I1(counter_span[10]),
        .I2(counter_span[1]),
        .O(\counter[9]_i_7_n_0 ));
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
  CARRY4 \counter_reg[11]_i_4 
       (.CI(\counter_reg[8]_i_3_n_0 ),
        .CO({\NLW_counter_reg[11]_i_4_CO_UNCONNECTED [3:2],\counter_reg[11]_i_4_n_2 ,\counter_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[10:9]}),
        .O({\NLW_counter_reg[11]_i_4_O_UNCONNECTED [3],counter05_in[11:9]}),
        .S({1'b0,\counter[11]_i_12_n_0 ,\counter[11]_i_13_n_0 ,\counter[11]_i_14_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[11]_i_9 
       (.CI(\counter_reg[6]_i_5_n_0 ),
        .CO({\NLW_counter_reg[11]_i_9_CO_UNCONNECTED [3:2],\counter_reg[11]_i_9_n_2 ,\counter_reg[11]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[11]_i_9_O_UNCONNECTED [3],counter00_in[11:9]}),
        .S({1'b0,\counter[11]_i_19_n_0 ,\counter[11]_i_20_n_0 ,\counter[11]_i_21_n_0 }));
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
  CARRY4 \counter_reg[4]_i_4 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_4_n_0 ,\counter_reg[4]_i_4_n_1 ,\counter_reg[4]_i_4_n_2 ,\counter_reg[4]_i_4_n_3 }),
        .CYINIT(\counter[4]_i_5_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter00_in[4:1]),
        .S({\counter[4]_i_6_n_0 ,\counter[4]_i_7_n_0 ,\counter[4]_i_8_n_0 ,\counter[4]_i_9_n_0 }));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[6]_i_5 
       (.CI(\counter_reg[4]_i_4_n_0 ),
        .CO({\counter_reg[6]_i_5_n_0 ,\counter_reg[6]_i_5_n_1 ,\counter_reg[6]_i_5_n_2 ,\counter_reg[6]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter00_in[8:5]),
        .S({\counter[6]_i_6_n_0 ,\counter[6]_i_7_n_0 ,\counter[6]_i_8_n_0 ,balance_temp[5]}));
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
  CARRY4 \counter_reg[8]_i_3 
       (.CI(\counter_reg[8]_i_5_n_0 ),
        .CO({\counter_reg[8]_i_3_n_0 ,\counter_reg[8]_i_3_n_1 ,\counter_reg[8]_i_3_n_2 ,\counter_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(counter[8:5]),
        .O(counter05_in[8:5]),
        .S({\counter[8]_i_6_n_0 ,\counter[8]_i_7_n_0 ,\counter[8]_i_8_n_0 ,\counter[8]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_5 
       (.CI(1'b0),
        .CO({\counter_reg[8]_i_5_n_0 ,\counter_reg[8]_i_5_n_1 ,\counter_reg[8]_i_5_n_2 ,\counter_reg[8]_i_5_n_3 }),
        .CYINIT(counter[0]),
        .DI(counter[4:1]),
        .O(counter05_in[4:1]),
        .S({\counter[8]_i_10_n_0 ,\counter[8]_i_11_n_0 ,\counter[8]_i_12_n_0 ,\counter[8]_i_13_n_0 }));
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \counter_span[0]_i_1 
       (.I0(counter_span[0]),
        .I1(is_computing_counter_reg_n_0),
        .I2(counter_span[11]),
        .I3(\counter_span[0]_i_2_n_0 ),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter_span[0]_i_2 
       (.I0(counter_span[11]),
        .I1(counter_span[10]),
        .I2(counter_span[1]),
        .I3(\counter_span[11]_i_5_n_0 ),
        .I4(\counter_span[2]_i_2_n_0 ),
        .O(\counter_span[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \counter_span[10]_i_1 
       (.I0(\counter_span[11]_i_3_n_0 ),
        .I1(counter_span[11]),
        .I2(counter_span0[10]),
        .O(p_2_in[10]));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \counter_span[11]_i_1 
       (.I0(counter_span[11]),
        .I1(s_axis_tready_int_reg_0),
        .I2(s_axis_tvalid),
        .I3(\counter_span[11]_i_3_n_0 ),
        .O(\counter_span[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \counter_span[11]_i_2 
       (.I0(\counter_span[11]_i_3_n_0 ),
        .I1(counter_span[11]),
        .I2(counter_span0[11]),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_span[11]_i_3 
       (.I0(counter_span[0]),
        .I1(\counter_span[11]_i_4_n_0 ),
        .I2(counter_span[1]),
        .I3(\counter_span[11]_i_5_n_0 ),
        .I4(\counter_span[2]_i_2_n_0 ),
        .I5(is_computing_counter_reg_n_0),
        .O(\counter_span[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter_span[11]_i_4 
       (.I0(counter_span[10]),
        .I1(counter_span[11]),
        .O(\counter_span[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter_span[11]_i_5 
       (.I0(counter_span[7]),
        .I1(counter_span[6]),
        .I2(counter_span[9]),
        .I3(counter_span[8]),
        .O(\counter_span[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00005557)) 
    \counter_span[1]_i_1 
       (.I0(is_computing_counter_reg_n_0),
        .I1(counter_span[0]),
        .I2(\counter_span[2]_i_2_n_0 ),
        .I3(\counter_span[2]_i_3_n_0 ),
        .I4(counter_span[11]),
        .I5(counter_span0[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'h0000FFFF00005557)) 
    \counter_span[2]_i_1 
       (.I0(is_computing_counter_reg_n_0),
        .I1(counter_span[0]),
        .I2(\counter_span[2]_i_2_n_0 ),
        .I3(\counter_span[2]_i_3_n_0 ),
        .I4(counter_span[11]),
        .I5(counter_span0[2]),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter_span[2]_i_2 
       (.I0(counter_span[3]),
        .I1(counter_span[2]),
        .I2(counter_span[5]),
        .I3(counter_span[4]),
        .O(\counter_span[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter_span[2]_i_3 
       (.I0(counter_span[8]),
        .I1(counter_span[9]),
        .I2(counter_span[6]),
        .I3(counter_span[7]),
        .I4(counter_span[1]),
        .I5(\counter_span[11]_i_4_n_0 ),
        .O(\counter_span[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \counter_span[3]_i_1 
       (.I0(\counter_span[11]_i_3_n_0 ),
        .I1(counter_span[11]),
        .I2(counter_span0[3]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \counter_span[4]_i_1 
       (.I0(\counter_span[11]_i_3_n_0 ),
        .I1(counter_span[11]),
        .I2(counter_span0[4]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \counter_span[5]_i_1 
       (.I0(\counter_span[11]_i_3_n_0 ),
        .I1(counter_span[11]),
        .I2(counter_span0[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \counter_span[6]_i_1 
       (.I0(\counter_span[11]_i_3_n_0 ),
        .I1(counter_span[11]),
        .I2(counter_span0[6]),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \counter_span[7]_i_1 
       (.I0(\counter_span[11]_i_3_n_0 ),
        .I1(counter_span[11]),
        .I2(counter_span0[7]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \counter_span[8]_i_1 
       (.I0(\counter_span[11]_i_3_n_0 ),
        .I1(counter_span[11]),
        .I2(counter_span0[8]),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \counter_span[9]_i_1 
       (.I0(\counter_span[11]_i_3_n_0 ),
        .I1(counter_span[11]),
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
        .D(p_2_in[1]),
        .Q(counter_span[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_span_reg[2] 
       (.C(aclk),
        .CE(\counter_span[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[2]),
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
    .INIT(16'hB888)) 
    is_computing_counter_i_1
       (.I0(is_computing_counter_i_2_n_0),
        .I1(is_computing_counter_reg_n_0),
        .I2(s_axis_tvalid),
        .I3(s_axis_tready_int_reg_0),
        .O(is_computing_counter_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    is_computing_counter_i_2
       (.I0(\counter_span[2]_i_2_n_0 ),
        .I1(\counter_span[11]_i_5_n_0 ),
        .I2(counter_span[1]),
        .I3(counter_span[10]),
        .I4(counter_span[11]),
        .I5(counter_span[0]),
        .O(is_computing_counter_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    is_computing_counter_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(is_computing_counter_i_1_n_0),
        .Q(is_computing_counter_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8B88)) 
    is_computing_i_1
       (.I0(\counter[11]_i_3_n_0 ),
        .I1(is_computing_reg_n_0),
        .I2(is_computing_counter_i_2_n_0),
        .I3(is_computing_counter_reg_n_0),
        .O(is_computing_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    is_computing_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(is_computing_i_1_n_0),
        .Q(is_computing_reg_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tdata[23]_i_1 
       (.I0(aresetn),
        .I1(new_data_reg_n_0),
        .I2(m_axis_tvalid_int_reg_0),
        .O(m_axis_tdata0));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[20]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[21]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[22]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[23]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(output_temp[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(m_axis_tlast_temp),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    m_axis_tlast_temp_i_1
       (.I0(s_axis_tlast),
        .I1(s_axis_tready_int_reg_0),
        .I2(s_axis_tvalid),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    m_axis_tvalid_int_i_1
       (.I0(m_axis_tready),
        .I1(new_data_reg_n_0),
        .I2(m_axis_tvalid_int_reg_0),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF404)) 
    new_data_i_1
       (.I0(\counter[11]_i_3_n_0 ),
        .I1(is_computing_reg_n_0),
        .I2(new_data_reg_n_0),
        .I3(m_axis_tvalid_int_reg_0),
        .O(new_data_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    new_data_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(new_data_i_1_n_0),
        .Q(new_data_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[0]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[1]),
        .O(\output_temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[10]_i_1 
       (.I0(s_axis_tdata[10]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[11]),
        .O(\output_temp[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[11]_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[12]),
        .O(\output_temp[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[12]_i_1 
       (.I0(s_axis_tdata[12]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[13]),
        .O(\output_temp[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[13]_i_1 
       (.I0(s_axis_tdata[13]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[14]),
        .O(\output_temp[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[14]_i_1 
       (.I0(s_axis_tdata[14]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[15]),
        .O(\output_temp[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[15]_i_1 
       (.I0(s_axis_tdata[15]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[16]),
        .O(\output_temp[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[16]_i_1 
       (.I0(s_axis_tdata[16]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[17]),
        .O(\output_temp[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[17]_i_1 
       (.I0(s_axis_tdata[17]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[18]),
        .O(\output_temp[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[18]_i_1 
       (.I0(s_axis_tdata[18]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[19]),
        .O(\output_temp[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[19]_i_1 
       (.I0(s_axis_tdata[19]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[20]),
        .O(\output_temp[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[1]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[2]),
        .O(\output_temp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[20]_i_1 
       (.I0(s_axis_tdata[20]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[21]),
        .O(\output_temp[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[21]_i_1 
       (.I0(s_axis_tdata[21]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[22]),
        .O(\output_temp[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \output_temp[22]_i_1 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready_int_reg_0),
        .I2(\output_temp[22]_i_3_n_0 ),
        .O(\output_temp[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[22]_i_2 
       (.I0(s_axis_tdata[22]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[23]),
        .O(\output_temp[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hD7FF)) 
    \output_temp[22]_i_3 
       (.I0(is_computing_reg_n_0),
        .I1(m_axis_tlast_temp),
        .I2(LorR),
        .I3(\counter[11]_i_3_n_0 ),
        .O(\output_temp[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \output_temp[23]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready_int_reg_0),
        .I3(\output_temp[22]_i_3_n_0 ),
        .I4(output_temp[23]),
        .O(\output_temp[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[2]_i_1 
       (.I0(s_axis_tdata[2]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[3]),
        .O(\output_temp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[3]_i_1 
       (.I0(s_axis_tdata[3]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[4]),
        .O(\output_temp[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[4]_i_1 
       (.I0(s_axis_tdata[4]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[5]),
        .O(\output_temp[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[5]_i_1 
       (.I0(s_axis_tdata[5]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[6]),
        .O(\output_temp[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[6]_i_1 
       (.I0(s_axis_tdata[6]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[7]),
        .O(\output_temp[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[7]_i_1 
       (.I0(s_axis_tdata[7]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[8]),
        .O(\output_temp[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[8]_i_1 
       (.I0(s_axis_tdata[8]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[9]),
        .O(\output_temp[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_temp[9]_i_1 
       (.I0(s_axis_tdata[9]),
        .I1(\output_temp[22]_i_3_n_0 ),
        .I2(output_temp[10]),
        .O(\output_temp[9]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[0] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[0]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[0]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[10] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[10]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[10]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[11] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[11]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[11]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[12] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[12]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[12]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[13] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[13]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[13]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[14] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[14]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[14]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[15] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[15]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[15]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[16] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[16]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[16]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[17] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[17]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[17]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[18] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[18]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[18]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[19] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[19]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[19]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[1] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[1]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[1]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[20] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[20]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[20]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[21] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[21]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[21]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[22] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[22]_i_2_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[22]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\output_temp[23]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[23]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[2] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[2]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[2]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[3] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[3]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[3]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[4] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[4]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[4]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[5] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[5]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[5]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[6] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[6]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[6]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[7] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[7]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[7]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[8] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[8]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[8]));
  FDPE #(
    .INIT(1'b1)) 
    \output_temp_reg[9] 
       (.C(aclk),
        .CE(\output_temp[22]_i_1_n_0 ),
        .D(\output_temp[9]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(output_temp[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axis_tready_int_i_1
       (.I0(is_computing_reg_n_0),
        .I1(is_computing_counter_reg_n_0),
        .O(s_axis_tready_int0));
  FDPE #(
    .INIT(1'b1)) 
    s_axis_tready_int_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tready_int0),
        .PRE(p_0_in),
        .Q(s_axis_tready_int_reg_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_balance_controller_0_0,balance_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "balance_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
    balance);
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
  input [9:0]balance;

  wire aclk;
  wire aresetn;
  wire [9:0]balance;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_balance_controller U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .balance(balance),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid_int_reg_0(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready_int_reg_0(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
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
