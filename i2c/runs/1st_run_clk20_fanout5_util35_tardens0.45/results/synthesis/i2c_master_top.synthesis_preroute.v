module i2c_master_top (arst_i,
    scl_pad_i,
    scl_pad_o,
    scl_padoen_o,
    sda_pad_i,
    sda_pad_o,
    sda_padoen_o,
    wb_ack_o,
    wb_clk_i,
    wb_cyc_i,
    wb_inta_o,
    wb_rst_i,
    wb_stb_i,
    wb_we_i,
    VPWR,
    VGND,
    wb_adr_i,
    wb_dat_i,
    wb_dat_o);
 input arst_i;
 input scl_pad_i;
 output scl_pad_o;
 output scl_padoen_o;
 input sda_pad_i;
 output sda_pad_o;
 output sda_padoen_o;
 output wb_ack_o;
 input wb_clk_i;
 input wb_cyc_i;
 output wb_inta_o;
 input wb_rst_i;
 input wb_stb_i;
 input wb_we_i;
 input VPWR;
 input VGND;
 input [2:0] wb_adr_i;
 input [7:0] wb_dat_i;
 output [7:0] wb_dat_o;

 sky130_fd_sc_hd__inv_2 _1054_ (.A(net16),
    .Y(_0854_));
 sky130_fd_sc_hd__clkbuf_2 _1055_ (.A(_0854_),
    .X(_0855_));
 sky130_fd_sc_hd__clkbuf_2 _1056_ (.A(_0855_),
    .X(_0856_));
 sky130_fd_sc_hd__nand2_1 _1057_ (.A(net18),
    .B(net23),
    .Y(_0857_));
 sky130_fd_sc_hd__inv_2 _1058_ (.A(\byte_controller.bit_controller.ena ),
    .Y(_0858_));
 sky130_fd_sc_hd__inv_2 _1059_ (.A(net6),
    .Y(_0859_));
 sky130_fd_sc_hd__or3_4 _1060_ (.A(net5),
    .B(net4),
    .C(_0859_),
    .X(_0860_));
 sky130_fd_sc_hd__or2_2 _1061_ (.A(_0858_),
    .B(_0860_),
    .X(_0861_));
 sky130_fd_sc_hd__o21ai_1 _1062_ (.A1(_0857_),
    .A2(_0861_),
    .B1(_0854_),
    .Y(_0862_));
 sky130_fd_sc_hd__inv_2 _1063_ (.A(_0862_),
    .Y(_0863_));
 sky130_fd_sc_hd__a32o_1 _1064_ (.A1(_0856_),
    .A2(net11),
    .A3(_0862_),
    .B1(\byte_controller.ack_in ),
    .B2(_0863_),
    .X(_0487_));
 sky130_fd_sc_hd__inv_2 _1065_ (.A(net1),
    .Y(_0864_));
 sky130_fd_sc_hd__clkbuf_2 _1066_ (.A(_0864_),
    .X(_0865_));
 sky130_fd_sc_hd__clkbuf_2 _1067_ (.A(_0865_),
    .X(_0361_));
 sky130_fd_sc_hd__inv_2 _1068_ (.A(net15),
    .Y(_0866_));
 sky130_fd_sc_hd__buf_1 _1069_ (.A(net16),
    .X(_0867_));
 sky130_fd_sc_hd__clkbuf_2 _1070_ (.A(_0857_),
    .X(_0868_));
 sky130_fd_sc_hd__or2_1 _1071_ (.A(_0867_),
    .B(_0868_),
    .X(_0869_));
 sky130_fd_sc_hd__buf_1 _1072_ (.A(_0869_),
    .X(_0870_));
 sky130_fd_sc_hd__clkbuf_2 _1073_ (.A(_0870_),
    .X(_0871_));
 sky130_fd_sc_hd__inv_2 _1074_ (.A(net5),
    .Y(_0872_));
 sky130_fd_sc_hd__or3_4 _1075_ (.A(_0872_),
    .B(net4),
    .C(net6),
    .X(_0873_));
 sky130_fd_sc_hd__clkbuf_2 _1076_ (.A(_0873_),
    .X(_0874_));
 sky130_fd_sc_hd__clkbuf_2 _1077_ (.A(_0868_),
    .X(_0875_));
 sky130_fd_sc_hd__buf_2 _1078_ (.A(_0854_),
    .X(_0876_));
 sky130_fd_sc_hd__o21ai_2 _1079_ (.A1(_0875_),
    .A2(_0873_),
    .B1(_0876_),
    .Y(_0877_));
 sky130_fd_sc_hd__clkbuf_2 _1080_ (.A(_0877_),
    .X(_0878_));
 sky130_fd_sc_hd__o32a_1 _1081_ (.A1(_0866_),
    .A2(_0871_),
    .A3(_0874_),
    .B1(_0858_),
    .B2(_0878_),
    .X(_0879_));
 sky130_fd_sc_hd__inv_2 _1082_ (.A(_0879_),
    .Y(_0486_));
 sky130_fd_sc_hd__clkbuf_1 _1083_ (.A(_0361_),
    .X(_0360_));
 sky130_fd_sc_hd__inv_2 _1084_ (.A(net14),
    .Y(_0880_));
 sky130_fd_sc_hd__buf_1 _1085_ (.A(_0873_),
    .X(_0881_));
 sky130_fd_sc_hd__inv_2 _1086_ (.A(\ctr[6] ),
    .Y(_0882_));
 sky130_fd_sc_hd__o32a_1 _1087_ (.A1(_0880_),
    .A2(_0871_),
    .A3(_0881_),
    .B1(_0882_),
    .B2(_0878_),
    .X(_0883_));
 sky130_fd_sc_hd__inv_2 _1088_ (.A(_0883_),
    .Y(_0485_));
 sky130_fd_sc_hd__clkbuf_1 _1089_ (.A(_0361_),
    .X(_0359_));
 sky130_fd_sc_hd__inv_2 _1090_ (.A(net13),
    .Y(_0884_));
 sky130_fd_sc_hd__inv_2 _1091_ (.A(\byte_controller.slave_en ),
    .Y(_0885_));
 sky130_fd_sc_hd__o32a_1 _1092_ (.A1(_0884_),
    .A2(_0871_),
    .A3(_0881_),
    .B1(_0885_),
    .B2(_0878_),
    .X(_0886_));
 sky130_fd_sc_hd__inv_2 _1093_ (.A(_0886_),
    .Y(_0484_));
 sky130_fd_sc_hd__clkbuf_1 _1094_ (.A(_0361_),
    .X(_0358_));
 sky130_fd_sc_hd__inv_2 _1095_ (.A(net12),
    .Y(_0887_));
 sky130_fd_sc_hd__inv_2 _1096_ (.A(\ctr[4] ),
    .Y(_0888_));
 sky130_fd_sc_hd__o32a_1 _1097_ (.A1(_0887_),
    .A2(_0871_),
    .A3(_0881_),
    .B1(_0888_),
    .B2(_0878_),
    .X(_0889_));
 sky130_fd_sc_hd__inv_2 _1098_ (.A(_0889_),
    .Y(_0483_));
 sky130_fd_sc_hd__clkbuf_1 _1099_ (.A(_0361_),
    .X(_0357_));
 sky130_fd_sc_hd__clkbuf_2 _1100_ (.A(_0875_),
    .X(_0890_));
 sky130_fd_sc_hd__nand2_1 _1101_ (.A(_0855_),
    .B(net11),
    .Y(_0891_));
 sky130_fd_sc_hd__inv_2 _1102_ (.A(\ctr[3] ),
    .Y(_0892_));
 sky130_fd_sc_hd__o32a_1 _1103_ (.A1(_0890_),
    .A2(_0873_),
    .A3(_0891_),
    .B1(_0892_),
    .B2(_0878_),
    .X(_0893_));
 sky130_fd_sc_hd__inv_2 _1104_ (.A(_0893_),
    .Y(_0482_));
 sky130_fd_sc_hd__clkbuf_2 _1105_ (.A(_0865_),
    .X(_0894_));
 sky130_fd_sc_hd__clkbuf_1 _1106_ (.A(_0894_),
    .X(_0356_));
 sky130_fd_sc_hd__inv_2 _1107_ (.A(net10),
    .Y(_0895_));
 sky130_fd_sc_hd__inv_2 _1108_ (.A(\ctr[2] ),
    .Y(_0896_));
 sky130_fd_sc_hd__o32a_1 _1109_ (.A1(_0895_),
    .A2(_0871_),
    .A3(_0881_),
    .B1(_0896_),
    .B2(_0877_),
    .X(_0897_));
 sky130_fd_sc_hd__inv_2 _1110_ (.A(_0897_),
    .Y(_0481_));
 sky130_fd_sc_hd__clkbuf_1 _1111_ (.A(_0894_),
    .X(_0355_));
 sky130_fd_sc_hd__inv_2 _1112_ (.A(net9),
    .Y(_0898_));
 sky130_fd_sc_hd__clkbuf_2 _1113_ (.A(_0870_),
    .X(_0899_));
 sky130_fd_sc_hd__inv_2 _1114_ (.A(\ctr[1] ),
    .Y(_0900_));
 sky130_fd_sc_hd__o32a_1 _1115_ (.A1(_0898_),
    .A2(_0899_),
    .A3(_0881_),
    .B1(_0900_),
    .B2(_0877_),
    .X(_0901_));
 sky130_fd_sc_hd__inv_2 _1116_ (.A(_0901_),
    .Y(_0480_));
 sky130_fd_sc_hd__clkbuf_1 _1117_ (.A(_0894_),
    .X(_0354_));
 sky130_fd_sc_hd__nand2_2 _1118_ (.A(_0855_),
    .B(net8),
    .Y(_0902_));
 sky130_fd_sc_hd__inv_2 _1119_ (.A(\ctr[0] ),
    .Y(_0903_));
 sky130_fd_sc_hd__o32a_1 _1120_ (.A1(_0890_),
    .A2(_0873_),
    .A3(_0902_),
    .B1(_0903_),
    .B2(_0877_),
    .X(_0904_));
 sky130_fd_sc_hd__inv_2 _1121_ (.A(_0904_),
    .Y(_0479_));
 sky130_fd_sc_hd__clkbuf_1 _1122_ (.A(_0894_),
    .X(_0353_));
 sky130_fd_sc_hd__clkbuf_2 _1123_ (.A(_0867_),
    .X(_0905_));
 sky130_fd_sc_hd__clkbuf_2 _1124_ (.A(_0905_),
    .X(_0906_));
 sky130_fd_sc_hd__inv_2 _1125_ (.A(net4),
    .Y(_0907_));
 sky130_fd_sc_hd__or3_4 _1126_ (.A(net5),
    .B(_0907_),
    .C(net6),
    .X(_0908_));
 sky130_fd_sc_hd__or2_2 _1127_ (.A(_0868_),
    .B(_0908_),
    .X(_0909_));
 sky130_fd_sc_hd__nand2_2 _1128_ (.A(_0876_),
    .B(_0909_),
    .Y(_0910_));
 sky130_fd_sc_hd__clkbuf_2 _1129_ (.A(_0910_),
    .X(_0911_));
 sky130_fd_sc_hd__o32a_1 _1130_ (.A1(_0906_),
    .A2(net15),
    .A3(_0909_),
    .B1(\byte_controller.bit_controller.clk_cnt[15] ),
    .B2(_0911_),
    .X(_0478_));
 sky130_fd_sc_hd__clkbuf_1 _1131_ (.A(_0894_),
    .X(_0352_));
 sky130_fd_sc_hd__inv_2 _1132_ (.A(_0910_),
    .Y(_0912_));
 sky130_fd_sc_hd__clkbuf_2 _1133_ (.A(_0912_),
    .X(_0913_));
 sky130_fd_sc_hd__o32a_1 _1134_ (.A1(_0906_),
    .A2(net14),
    .A3(_0913_),
    .B1(\byte_controller.bit_controller.clk_cnt[14] ),
    .B2(_0911_),
    .X(_0477_));
 sky130_fd_sc_hd__clkbuf_2 _1135_ (.A(_0865_),
    .X(_0914_));
 sky130_fd_sc_hd__clkbuf_1 _1136_ (.A(_0914_),
    .X(_0351_));
 sky130_fd_sc_hd__o32a_1 _1137_ (.A1(_0906_),
    .A2(net13),
    .A3(_0913_),
    .B1(\byte_controller.bit_controller.clk_cnt[13] ),
    .B2(_0911_),
    .X(_0476_));
 sky130_fd_sc_hd__clkbuf_1 _1138_ (.A(_0914_),
    .X(_0350_));
 sky130_fd_sc_hd__o32a_1 _1139_ (.A1(_0906_),
    .A2(net12),
    .A3(_0913_),
    .B1(\byte_controller.bit_controller.clk_cnt[12] ),
    .B2(_0911_),
    .X(_0475_));
 sky130_fd_sc_hd__clkbuf_1 _1140_ (.A(_0914_),
    .X(_0349_));
 sky130_fd_sc_hd__clkbuf_2 _1141_ (.A(_0905_),
    .X(_0915_));
 sky130_fd_sc_hd__o32a_1 _1142_ (.A1(_0915_),
    .A2(net11),
    .A3(_0913_),
    .B1(\byte_controller.bit_controller.clk_cnt[11] ),
    .B2(_0911_),
    .X(_0474_));
 sky130_fd_sc_hd__clkbuf_1 _1143_ (.A(_0914_),
    .X(_0348_));
 sky130_fd_sc_hd__o32a_1 _1144_ (.A1(_0915_),
    .A2(net10),
    .A3(_0913_),
    .B1(\byte_controller.bit_controller.clk_cnt[10] ),
    .B2(_0910_),
    .X(_0473_));
 sky130_fd_sc_hd__clkbuf_1 _1145_ (.A(_0914_),
    .X(_0347_));
 sky130_fd_sc_hd__o32a_1 _1146_ (.A1(_0915_),
    .A2(net9),
    .A3(_0912_),
    .B1(\byte_controller.bit_controller.clk_cnt[9] ),
    .B2(_0910_),
    .X(_0472_));
 sky130_fd_sc_hd__buf_1 _1147_ (.A(_0865_),
    .X(_0916_));
 sky130_fd_sc_hd__clkbuf_1 _1148_ (.A(_0916_),
    .X(_0346_));
 sky130_fd_sc_hd__o32a_1 _1149_ (.A1(_0915_),
    .A2(net8),
    .A3(_0909_),
    .B1(\byte_controller.bit_controller.clk_cnt[8] ),
    .B2(_0910_),
    .X(_0471_));
 sky130_fd_sc_hd__clkbuf_1 _1150_ (.A(_0916_),
    .X(_0345_));
 sky130_fd_sc_hd__inv_2 _1151_ (.A(_0868_),
    .Y(_0917_));
 sky130_fd_sc_hd__and3_1 _1152_ (.A(_0872_),
    .B(_0907_),
    .C(_0859_),
    .X(_0918_));
 sky130_fd_sc_hd__clkbuf_4 _1153_ (.A(_0918_),
    .X(_0157_));
 sky130_fd_sc_hd__nand2_1 _1154_ (.A(_0917_),
    .B(_0157_),
    .Y(_0919_));
 sky130_fd_sc_hd__nand2_2 _1155_ (.A(_0876_),
    .B(_0919_),
    .Y(_0920_));
 sky130_fd_sc_hd__clkbuf_2 _1156_ (.A(_0920_),
    .X(_0921_));
 sky130_fd_sc_hd__o32a_1 _1157_ (.A1(_0915_),
    .A2(net15),
    .A3(_0919_),
    .B1(\byte_controller.bit_controller.clk_cnt[7] ),
    .B2(_0921_),
    .X(_0470_));
 sky130_fd_sc_hd__clkbuf_1 _1158_ (.A(_0916_),
    .X(_0344_));
 sky130_fd_sc_hd__buf_1 _1159_ (.A(_0905_),
    .X(_0922_));
 sky130_fd_sc_hd__inv_2 _1160_ (.A(_0920_),
    .Y(_0923_));
 sky130_fd_sc_hd__buf_1 _1161_ (.A(_0923_),
    .X(_0924_));
 sky130_fd_sc_hd__o32a_1 _1162_ (.A1(_0922_),
    .A2(net14),
    .A3(_0924_),
    .B1(\byte_controller.bit_controller.clk_cnt[6] ),
    .B2(_0921_),
    .X(_0469_));
 sky130_fd_sc_hd__clkbuf_1 _1163_ (.A(_0916_),
    .X(_0343_));
 sky130_fd_sc_hd__o32a_1 _1164_ (.A1(_0922_),
    .A2(net13),
    .A3(_0924_),
    .B1(\byte_controller.bit_controller.clk_cnt[5] ),
    .B2(_0921_),
    .X(_0468_));
 sky130_fd_sc_hd__clkbuf_1 _1165_ (.A(_0916_),
    .X(_0342_));
 sky130_fd_sc_hd__o32a_1 _1166_ (.A1(_0922_),
    .A2(net12),
    .A3(_0924_),
    .B1(\byte_controller.bit_controller.clk_cnt[4] ),
    .B2(_0921_),
    .X(_0467_));
 sky130_fd_sc_hd__buf_1 _1167_ (.A(_0864_),
    .X(_0925_));
 sky130_fd_sc_hd__buf_2 _1168_ (.A(_0925_),
    .X(_0926_));
 sky130_fd_sc_hd__buf_1 _1169_ (.A(_0926_),
    .X(_0927_));
 sky130_fd_sc_hd__clkbuf_1 _1170_ (.A(_0927_),
    .X(_0341_));
 sky130_fd_sc_hd__o32a_1 _1171_ (.A1(_0922_),
    .A2(net11),
    .A3(_0924_),
    .B1(\byte_controller.bit_controller.clk_cnt[3] ),
    .B2(_0921_),
    .X(_0466_));
 sky130_fd_sc_hd__clkbuf_1 _1172_ (.A(_0927_),
    .X(_0340_));
 sky130_fd_sc_hd__o32a_1 _1173_ (.A1(_0922_),
    .A2(net10),
    .A3(_0924_),
    .B1(\byte_controller.bit_controller.clk_cnt[2] ),
    .B2(_0920_),
    .X(_0465_));
 sky130_fd_sc_hd__clkbuf_1 _1174_ (.A(_0927_),
    .X(_0339_));
 sky130_fd_sc_hd__clkbuf_2 _1175_ (.A(_0867_),
    .X(_0928_));
 sky130_fd_sc_hd__o32a_1 _1176_ (.A1(_0928_),
    .A2(net9),
    .A3(_0923_),
    .B1(\byte_controller.bit_controller.clk_cnt[1] ),
    .B2(_0920_),
    .X(_0464_));
 sky130_fd_sc_hd__clkbuf_1 _1177_ (.A(_0927_),
    .X(_0338_));
 sky130_fd_sc_hd__o32a_1 _1178_ (.A1(_0928_),
    .A2(net8),
    .A3(_0919_),
    .B1(\byte_controller.bit_controller.clk_cnt[0] ),
    .B2(_0920_),
    .X(_0463_));
 sky130_fd_sc_hd__clkbuf_1 _1179_ (.A(_0927_),
    .X(_0337_));
 sky130_fd_sc_hd__inv_2 _1180_ (.A(\cr[2] ),
    .Y(_0929_));
 sky130_fd_sc_hd__or3b_4 _1181_ (.A(_0867_),
    .B(_0875_),
    .C_N(_0861_),
    .X(_0930_));
 sky130_fd_sc_hd__o32a_1 _1182_ (.A1(_0895_),
    .A2(_0899_),
    .A3(_0861_),
    .B1(_0929_),
    .B2(_0930_),
    .X(_0931_));
 sky130_fd_sc_hd__inv_2 _1183_ (.A(_0931_),
    .Y(_0462_));
 sky130_fd_sc_hd__buf_2 _1184_ (.A(_0926_),
    .X(_0932_));
 sky130_fd_sc_hd__clkbuf_1 _1185_ (.A(_0932_),
    .X(_0336_));
 sky130_fd_sc_hd__inv_2 _1186_ (.A(\byte_controller.sl_cont ),
    .Y(_0933_));
 sky130_fd_sc_hd__clkbuf_2 _1187_ (.A(_0933_),
    .X(_0934_));
 sky130_fd_sc_hd__o32a_1 _1188_ (.A1(_0898_),
    .A2(_0899_),
    .A3(_0861_),
    .B1(_0934_),
    .B2(_0930_),
    .X(_0935_));
 sky130_fd_sc_hd__inv_2 _1189_ (.A(_0935_),
    .Y(_0461_));
 sky130_fd_sc_hd__clkbuf_1 _1190_ (.A(_0932_),
    .X(_0335_));
 sky130_fd_sc_hd__inv_2 _1191_ (.A(\cr[0] ),
    .Y(_0936_));
 sky130_fd_sc_hd__o32a_1 _1192_ (.A1(_0890_),
    .A2(_0861_),
    .A3(_0902_),
    .B1(_0936_),
    .B2(_0930_),
    .X(_0937_));
 sky130_fd_sc_hd__inv_2 _1193_ (.A(_0937_),
    .Y(_0460_));
 sky130_fd_sc_hd__clkbuf_1 _1194_ (.A(_0932_),
    .X(_0334_));
 sky130_fd_sc_hd__inv_2 _1195_ (.A(\byte_controller.cmd_ack ),
    .Y(_0938_));
 sky130_fd_sc_hd__buf_1 _1196_ (.A(_0855_),
    .X(_0939_));
 sky130_fd_sc_hd__buf_2 _1197_ (.A(_0939_),
    .X(_0940_));
 sky130_fd_sc_hd__o221a_1 _1198_ (.A1(slave_mode),
    .A2(\byte_controller.cmd_ack ),
    .B1(\byte_controller.slave_act ),
    .B2(_0938_),
    .C1(_0940_),
    .X(_0459_));
 sky130_fd_sc_hd__clkbuf_1 _1199_ (.A(_0932_),
    .X(_0333_));
 sky130_fd_sc_hd__inv_2 _1200_ (.A(\byte_controller.bit_controller.slave_wait ),
    .Y(_0941_));
 sky130_fd_sc_hd__inv_2 _1201_ (.A(\byte_controller.bit_controller.sSCL ),
    .Y(_0942_));
 sky130_fd_sc_hd__or2_2 _1202_ (.A(_0858_),
    .B(net16),
    .X(_0943_));
 sky130_fd_sc_hd__or2_1 _1203_ (.A(\byte_controller.bit_controller.cnt[15] ),
    .B(\byte_controller.bit_controller.cnt[14] ),
    .X(_0944_));
 sky130_fd_sc_hd__or2_1 _1204_ (.A(\byte_controller.bit_controller.cnt[11] ),
    .B(\byte_controller.bit_controller.cnt[10] ),
    .X(_0945_));
 sky130_fd_sc_hd__or2_1 _1205_ (.A(\byte_controller.bit_controller.cnt[1] ),
    .B(\byte_controller.bit_controller.cnt[0] ),
    .X(_0946_));
 sky130_fd_sc_hd__or2_1 _1206_ (.A(\byte_controller.bit_controller.cnt[2] ),
    .B(_0946_),
    .X(_0947_));
 sky130_fd_sc_hd__or2_1 _1207_ (.A(\byte_controller.bit_controller.cnt[3] ),
    .B(_0947_),
    .X(_0948_));
 sky130_fd_sc_hd__or3_1 _1208_ (.A(\byte_controller.bit_controller.cnt[5] ),
    .B(\byte_controller.bit_controller.cnt[4] ),
    .C(_0948_),
    .X(_0949_));
 sky130_fd_sc_hd__or2_1 _1209_ (.A(\byte_controller.bit_controller.cnt[6] ),
    .B(_0949_),
    .X(_0950_));
 sky130_fd_sc_hd__or2_2 _1210_ (.A(\byte_controller.bit_controller.cnt[7] ),
    .B(_0950_),
    .X(_0951_));
 sky130_fd_sc_hd__or4_4 _1211_ (.A(\byte_controller.bit_controller.cnt[9] ),
    .B(\byte_controller.bit_controller.cnt[8] ),
    .C(_0945_),
    .D(_0951_),
    .X(_0952_));
 sky130_fd_sc_hd__or4_4 _1212_ (.A(\byte_controller.bit_controller.cnt[13] ),
    .B(\byte_controller.bit_controller.cnt[12] ),
    .C(_0944_),
    .D(_0952_),
    .X(_0953_));
 sky130_fd_sc_hd__inv_2 _1213_ (.A(_0953_),
    .Y(_0954_));
 sky130_fd_sc_hd__a311o_4 _1214_ (.A1(_0942_),
    .A2(\byte_controller.bit_controller.dSCL ),
    .A3(net20),
    .B1(_0943_),
    .C1(_0954_),
    .X(_0028_));
 sky130_fd_sc_hd__or2_4 _1215_ (.A(_0941_),
    .B(_0028_),
    .X(_0955_));
 sky130_fd_sc_hd__clkbuf_2 _1216_ (.A(_0955_),
    .X(_0956_));
 sky130_fd_sc_hd__inv_2 _1217_ (.A(_0955_),
    .Y(_0957_));
 sky130_fd_sc_hd__clkbuf_2 _1218_ (.A(_0957_),
    .X(_0958_));
 sky130_fd_sc_hd__a22o_1 _1219_ (.A1(_0050_),
    .A2(_0956_),
    .B1(\byte_controller.bit_controller.cnt[15] ),
    .B2(_0958_),
    .X(_0458_));
 sky130_fd_sc_hd__clkbuf_1 _1220_ (.A(_0932_),
    .X(_0332_));
 sky130_fd_sc_hd__a22o_1 _1221_ (.A1(_0049_),
    .A2(_0956_),
    .B1(\byte_controller.bit_controller.cnt[14] ),
    .B2(_0958_),
    .X(_0457_));
 sky130_fd_sc_hd__clkbuf_2 _1222_ (.A(_0926_),
    .X(_0959_));
 sky130_fd_sc_hd__clkbuf_1 _1223_ (.A(_0959_),
    .X(_0331_));
 sky130_fd_sc_hd__a22o_1 _1224_ (.A1(_0048_),
    .A2(_0956_),
    .B1(\byte_controller.bit_controller.cnt[13] ),
    .B2(_0958_),
    .X(_0456_));
 sky130_fd_sc_hd__clkbuf_1 _1225_ (.A(_0959_),
    .X(_0330_));
 sky130_fd_sc_hd__a22o_1 _1226_ (.A1(_0047_),
    .A2(_0956_),
    .B1(\byte_controller.bit_controller.cnt[12] ),
    .B2(_0958_),
    .X(_0455_));
 sky130_fd_sc_hd__clkbuf_1 _1227_ (.A(_0959_),
    .X(_0329_));
 sky130_fd_sc_hd__a22o_1 _1228_ (.A1(_0046_),
    .A2(_0956_),
    .B1(\byte_controller.bit_controller.cnt[11] ),
    .B2(_0958_),
    .X(_0454_));
 sky130_fd_sc_hd__clkbuf_1 _1229_ (.A(_0959_),
    .X(_0328_));
 sky130_fd_sc_hd__clkbuf_2 _1230_ (.A(_0955_),
    .X(_0960_));
 sky130_fd_sc_hd__clkbuf_2 _1231_ (.A(_0957_),
    .X(_0961_));
 sky130_fd_sc_hd__a22o_1 _1232_ (.A1(_0045_),
    .A2(_0960_),
    .B1(\byte_controller.bit_controller.cnt[10] ),
    .B2(_0961_),
    .X(_0453_));
 sky130_fd_sc_hd__clkbuf_1 _1233_ (.A(_0959_),
    .X(_0327_));
 sky130_fd_sc_hd__a22o_1 _1234_ (.A1(_0059_),
    .A2(_0960_),
    .B1(\byte_controller.bit_controller.cnt[9] ),
    .B2(_0961_),
    .X(_0452_));
 sky130_fd_sc_hd__buf_1 _1235_ (.A(_0926_),
    .X(_0962_));
 sky130_fd_sc_hd__clkbuf_1 _1236_ (.A(_0962_),
    .X(_0326_));
 sky130_fd_sc_hd__a22o_1 _1237_ (.A1(_0058_),
    .A2(_0960_),
    .B1(\byte_controller.bit_controller.cnt[8] ),
    .B2(_0961_),
    .X(_0451_));
 sky130_fd_sc_hd__clkbuf_1 _1238_ (.A(_0962_),
    .X(_0325_));
 sky130_fd_sc_hd__a22o_1 _1239_ (.A1(_0057_),
    .A2(_0960_),
    .B1(\byte_controller.bit_controller.cnt[7] ),
    .B2(_0961_),
    .X(_0450_));
 sky130_fd_sc_hd__clkbuf_1 _1240_ (.A(_0962_),
    .X(_0324_));
 sky130_fd_sc_hd__a22o_1 _1241_ (.A1(_0056_),
    .A2(_0960_),
    .B1(\byte_controller.bit_controller.cnt[6] ),
    .B2(_0961_),
    .X(_0449_));
 sky130_fd_sc_hd__clkbuf_1 _1242_ (.A(_0962_),
    .X(_0323_));
 sky130_fd_sc_hd__clkbuf_2 _1243_ (.A(_0955_),
    .X(_0963_));
 sky130_fd_sc_hd__clkbuf_2 _1244_ (.A(_0957_),
    .X(_0964_));
 sky130_fd_sc_hd__a22o_1 _1245_ (.A1(_0055_),
    .A2(_0963_),
    .B1(\byte_controller.bit_controller.cnt[5] ),
    .B2(_0964_),
    .X(_0448_));
 sky130_fd_sc_hd__clkbuf_1 _1246_ (.A(_0962_),
    .X(_0322_));
 sky130_fd_sc_hd__a22o_1 _1247_ (.A1(_0054_),
    .A2(_0963_),
    .B1(\byte_controller.bit_controller.cnt[4] ),
    .B2(_0964_),
    .X(_0447_));
 sky130_fd_sc_hd__clkbuf_2 _1248_ (.A(_0926_),
    .X(_0965_));
 sky130_fd_sc_hd__clkbuf_1 _1249_ (.A(_0965_),
    .X(_0321_));
 sky130_fd_sc_hd__a22o_1 _1250_ (.A1(_0053_),
    .A2(_0963_),
    .B1(\byte_controller.bit_controller.cnt[3] ),
    .B2(_0964_),
    .X(_0446_));
 sky130_fd_sc_hd__clkbuf_1 _1251_ (.A(_0965_),
    .X(_0320_));
 sky130_fd_sc_hd__a22o_1 _1252_ (.A1(_0052_),
    .A2(_0963_),
    .B1(\byte_controller.bit_controller.cnt[2] ),
    .B2(_0964_),
    .X(_0445_));
 sky130_fd_sc_hd__clkbuf_1 _1253_ (.A(_0965_),
    .X(_0319_));
 sky130_fd_sc_hd__a22o_1 _1254_ (.A1(_0051_),
    .A2(_0963_),
    .B1(\byte_controller.bit_controller.cnt[1] ),
    .B2(_0964_),
    .X(_0444_));
 sky130_fd_sc_hd__clkbuf_1 _1255_ (.A(_0965_),
    .X(_0318_));
 sky130_fd_sc_hd__a22o_1 _1256_ (.A1(_0044_),
    .A2(_0955_),
    .B1(\byte_controller.bit_controller.cnt[0] ),
    .B2(_0957_),
    .X(_0443_));
 sky130_fd_sc_hd__buf_1 _1257_ (.A(_0965_),
    .X(_0317_));
 sky130_fd_sc_hd__or2_1 _1258_ (.A(\byte_controller.bit_controller.filter_cnt[11] ),
    .B(\byte_controller.bit_controller.filter_cnt[10] ),
    .X(_0966_));
 sky130_fd_sc_hd__or2_1 _1259_ (.A(\byte_controller.bit_controller.filter_cnt[1] ),
    .B(\byte_controller.bit_controller.filter_cnt[0] ),
    .X(_0967_));
 sky130_fd_sc_hd__or2_1 _1260_ (.A(\byte_controller.bit_controller.filter_cnt[2] ),
    .B(_0967_),
    .X(_0968_));
 sky130_fd_sc_hd__or2_1 _1261_ (.A(\byte_controller.bit_controller.filter_cnt[3] ),
    .B(_0968_),
    .X(_0969_));
 sky130_fd_sc_hd__or3_1 _1262_ (.A(\byte_controller.bit_controller.filter_cnt[5] ),
    .B(\byte_controller.bit_controller.filter_cnt[4] ),
    .C(_0969_),
    .X(_0970_));
 sky130_fd_sc_hd__or2_1 _1263_ (.A(\byte_controller.bit_controller.filter_cnt[6] ),
    .B(_0970_),
    .X(_0971_));
 sky130_fd_sc_hd__or2_2 _1264_ (.A(\byte_controller.bit_controller.filter_cnt[7] ),
    .B(_0971_),
    .X(_0972_));
 sky130_fd_sc_hd__or4_4 _1265_ (.A(\byte_controller.bit_controller.filter_cnt[9] ),
    .B(\byte_controller.bit_controller.filter_cnt[8] ),
    .C(_0966_),
    .D(_0972_),
    .X(_0973_));
 sky130_fd_sc_hd__or2_1 _1266_ (.A(\byte_controller.bit_controller.filter_cnt[12] ),
    .B(_0973_),
    .X(_0974_));
 sky130_fd_sc_hd__or2_2 _1267_ (.A(\byte_controller.bit_controller.filter_cnt[13] ),
    .B(_0974_),
    .X(_0975_));
 sky130_fd_sc_hd__inv_2 _1268_ (.A(_0975_),
    .Y(_0976_));
 sky130_fd_sc_hd__buf_6 _1269_ (.A(_0976_),
    .X(_0168_));
 sky130_fd_sc_hd__clkbuf_2 _1270_ (.A(_0975_),
    .X(_0977_));
 sky130_fd_sc_hd__clkbuf_2 _1271_ (.A(_0905_),
    .X(_0978_));
 sky130_fd_sc_hd__a221o_1 _1272_ (.A1(\byte_controller.bit_controller.fSDA[1] ),
    .A2(_0168_),
    .B1(\byte_controller.bit_controller.fSDA[2] ),
    .B2(_0977_),
    .C1(_0978_),
    .X(_0442_));
 sky130_fd_sc_hd__clkbuf_2 _1273_ (.A(_0864_),
    .X(_0979_));
 sky130_fd_sc_hd__clkbuf_2 _1274_ (.A(_0979_),
    .X(_0980_));
 sky130_fd_sc_hd__buf_1 _1275_ (.A(_0980_),
    .X(_0981_));
 sky130_fd_sc_hd__clkbuf_1 _1276_ (.A(_0981_),
    .X(_0316_));
 sky130_fd_sc_hd__a221o_1 _1277_ (.A1(\byte_controller.bit_controller.fSDA[0] ),
    .A2(_0168_),
    .B1(\byte_controller.bit_controller.fSDA[1] ),
    .B2(_0977_),
    .C1(_0978_),
    .X(_0441_));
 sky130_fd_sc_hd__clkbuf_1 _1278_ (.A(_0981_),
    .X(_0315_));
 sky130_fd_sc_hd__buf_2 _1279_ (.A(_0867_),
    .X(_0982_));
 sky130_fd_sc_hd__clkbuf_2 _1280_ (.A(_0982_),
    .X(_0983_));
 sky130_fd_sc_hd__a221o_1 _1281_ (.A1(\byte_controller.bit_controller.cSDA[1] ),
    .A2(_0168_),
    .B1(\byte_controller.bit_controller.fSDA[0] ),
    .B2(_0977_),
    .C1(_0983_),
    .X(_0440_));
 sky130_fd_sc_hd__clkbuf_1 _1282_ (.A(_0981_),
    .X(_0314_));
 sky130_fd_sc_hd__a221o_1 _1283_ (.A1(\byte_controller.bit_controller.fSCL[1] ),
    .A2(_0976_),
    .B1(\byte_controller.bit_controller.fSCL[2] ),
    .B2(_0977_),
    .C1(_0983_),
    .X(_0439_));
 sky130_fd_sc_hd__clkbuf_1 _1284_ (.A(_0981_),
    .X(_0313_));
 sky130_fd_sc_hd__a221o_1 _1285_ (.A1(\byte_controller.bit_controller.fSCL[0] ),
    .A2(_0976_),
    .B1(\byte_controller.bit_controller.fSCL[1] ),
    .B2(_0977_),
    .C1(_0983_),
    .X(_0438_));
 sky130_fd_sc_hd__clkbuf_1 _1286_ (.A(_0981_),
    .X(_0312_));
 sky130_fd_sc_hd__a221o_1 _1287_ (.A1(\byte_controller.bit_controller.cSCL[1] ),
    .A2(_0976_),
    .B1(\byte_controller.bit_controller.fSCL[0] ),
    .B2(_0975_),
    .C1(_0983_),
    .X(_0437_));
 sky130_fd_sc_hd__buf_1 _1288_ (.A(_0980_),
    .X(_0984_));
 sky130_fd_sc_hd__clkbuf_1 _1289_ (.A(_0984_),
    .X(_0311_));
 sky130_fd_sc_hd__inv_2 _1290_ (.A(\byte_controller.bit_controller.clk_en ),
    .Y(_0985_));
 sky130_fd_sc_hd__o221a_1 _1291_ (.A1(\byte_controller.bit_controller.cmd_stop ),
    .A2(\byte_controller.bit_controller.clk_en ),
    .B1(_0985_),
    .B2(\byte_controller.core_cmd[3] ),
    .C1(_0940_),
    .X(_0436_));
 sky130_fd_sc_hd__clkbuf_1 _1292_ (.A(_0984_),
    .X(_0310_));
 sky130_fd_sc_hd__or2_1 _1293_ (.A(\byte_controller.bit_controller.al ),
    .B(net16),
    .X(_0986_));
 sky130_fd_sc_hd__clkbuf_2 _1294_ (.A(_0986_),
    .X(_0987_));
 sky130_fd_sc_hd__buf_1 _1295_ (.A(\byte_controller.bit_controller.c_state[16] ),
    .X(_0988_));
 sky130_fd_sc_hd__clkbuf_2 _1296_ (.A(_0988_),
    .X(_0989_));
 sky130_fd_sc_hd__buf_1 _1297_ (.A(_0989_),
    .X(_0990_));
 sky130_fd_sc_hd__or4_4 _1298_ (.A(\byte_controller.bit_controller.c_state[9] ),
    .B(\byte_controller.bit_controller.c_state[8] ),
    .C(\byte_controller.bit_controller.c_state[11] ),
    .D(\byte_controller.bit_controller.c_state[10] ),
    .X(_0991_));
 sky130_fd_sc_hd__buf_1 _1299_ (.A(_0991_),
    .X(_0992_));
 sky130_fd_sc_hd__or4_4 _1300_ (.A(\byte_controller.bit_controller.c_state[5] ),
    .B(\byte_controller.bit_controller.c_state[4] ),
    .C(\byte_controller.bit_controller.c_state[7] ),
    .D(\byte_controller.bit_controller.c_state[6] ),
    .X(_0993_));
 sky130_fd_sc_hd__or4_4 _1301_ (.A(\byte_controller.bit_controller.c_state[3] ),
    .B(\byte_controller.bit_controller.c_state[2] ),
    .C(\byte_controller.bit_controller.c_state[1] ),
    .D(\byte_controller.bit_controller.c_state[0] ),
    .X(_0994_));
 sky130_fd_sc_hd__or2_1 _1302_ (.A(_0993_),
    .B(_0994_),
    .X(_0995_));
 sky130_fd_sc_hd__or4_4 _1303_ (.A(\byte_controller.bit_controller.c_state[15] ),
    .B(\byte_controller.bit_controller.c_state[14] ),
    .C(\byte_controller.bit_controller.c_state[13] ),
    .D(\byte_controller.bit_controller.c_state[12] ),
    .X(_0996_));
 sky130_fd_sc_hd__or2_2 _1304_ (.A(_0995_),
    .B(_0996_),
    .X(_0997_));
 sky130_fd_sc_hd__or2_1 _1305_ (.A(_0992_),
    .B(_0997_),
    .X(_0167_));
 sky130_fd_sc_hd__or2_1 _1306_ (.A(_0990_),
    .B(_0167_),
    .X(_0998_));
 sky130_fd_sc_hd__and2_2 _1307_ (.A(\byte_controller.bit_controller.clk_en ),
    .B(_0998_),
    .X(_0999_));
 sky130_fd_sc_hd__or3_1 _1308_ (.A(\byte_controller.bit_controller.c_state[13] ),
    .B(\byte_controller.bit_controller.c_state[12] ),
    .C(_0995_),
    .X(_1000_));
 sky130_fd_sc_hd__or2_1 _1309_ (.A(_0988_),
    .B(\byte_controller.bit_controller.c_state[15] ),
    .X(_1001_));
 sky130_fd_sc_hd__or4b_4 _1310_ (.A(_1000_),
    .B(_1001_),
    .C(_0992_),
    .D_N(\byte_controller.bit_controller.c_state[14] ),
    .X(_1002_));
 sky130_fd_sc_hd__inv_2 _1311_ (.A(\byte_controller.bit_controller.c_state[13] ),
    .Y(_1003_));
 sky130_fd_sc_hd__or2_1 _1312_ (.A(_0988_),
    .B(_1003_),
    .X(_1004_));
 sky130_fd_sc_hd__or3_1 _1313_ (.A(\byte_controller.bit_controller.c_state[15] ),
    .B(\byte_controller.bit_controller.c_state[14] ),
    .C(_0995_),
    .X(_1005_));
 sky130_fd_sc_hd__or4_4 _1314_ (.A(\byte_controller.bit_controller.c_state[12] ),
    .B(_1004_),
    .C(_0992_),
    .D(_1005_),
    .X(_1006_));
 sky130_fd_sc_hd__inv_2 _1315_ (.A(\byte_controller.bit_controller.din ),
    .Y(_1007_));
 sky130_fd_sc_hd__a31o_1 _1316_ (.A1(_1002_),
    .A2(_1006_),
    .A3(_0166_),
    .B1(_1007_),
    .X(_1008_));
 sky130_fd_sc_hd__buf_1 _1317_ (.A(\byte_controller.bit_controller.c_state[8] ),
    .X(_1009_));
 sky130_fd_sc_hd__clkbuf_2 _1318_ (.A(\byte_controller.bit_controller.c_state[16] ),
    .X(_1010_));
 sky130_fd_sc_hd__buf_1 _1319_ (.A(\byte_controller.bit_controller.c_state[10] ),
    .X(_1011_));
 sky130_fd_sc_hd__buf_1 _1320_ (.A(\byte_controller.bit_controller.c_state[11] ),
    .X(_1012_));
 sky130_fd_sc_hd__or3b_1 _1321_ (.A(_1010_),
    .B(_1011_),
    .C_N(_1012_),
    .X(_1013_));
 sky130_fd_sc_hd__or4_4 _1322_ (.A(\byte_controller.bit_controller.c_state[9] ),
    .B(_1009_),
    .C(_1013_),
    .D(_0997_),
    .X(_1014_));
 sky130_fd_sc_hd__inv_2 _1323_ (.A(\byte_controller.bit_controller.c_state[0] ),
    .Y(_1015_));
 sky130_fd_sc_hd__or2_2 _1324_ (.A(_0991_),
    .B(_0996_),
    .X(_1016_));
 sky130_fd_sc_hd__or4_4 _1325_ (.A(\byte_controller.bit_controller.c_state[3] ),
    .B(\byte_controller.bit_controller.c_state[2] ),
    .C(_0993_),
    .D(_1016_),
    .X(_1017_));
 sky130_fd_sc_hd__or4_4 _1326_ (.A(_0989_),
    .B(\byte_controller.bit_controller.c_state[1] ),
    .C(_1015_),
    .D(_1017_),
    .X(_1018_));
 sky130_fd_sc_hd__or3b_2 _1327_ (.A(_0988_),
    .B(_1012_),
    .C_N(_1011_),
    .X(_1019_));
 sky130_fd_sc_hd__or4_4 _1328_ (.A(\byte_controller.bit_controller.c_state[9] ),
    .B(_1009_),
    .C(_1019_),
    .D(_0997_),
    .X(_1020_));
 sky130_fd_sc_hd__inv_2 _1329_ (.A(\byte_controller.bit_controller.c_state[9] ),
    .Y(_1021_));
 sky130_fd_sc_hd__or3_1 _1330_ (.A(_0988_),
    .B(_1021_),
    .C(_1009_),
    .X(_1022_));
 sky130_fd_sc_hd__or4_4 _1331_ (.A(_1012_),
    .B(_1011_),
    .C(_1022_),
    .D(_0997_),
    .X(_1023_));
 sky130_fd_sc_hd__and4_1 _1332_ (.A(_1014_),
    .B(_1018_),
    .C(_1020_),
    .D(_1023_),
    .X(_1024_));
 sky130_fd_sc_hd__or4b_4 _1333_ (.A(\byte_controller.bit_controller.c_state[13] ),
    .B(_1005_),
    .C(_0992_),
    .D_N(\byte_controller.bit_controller.c_state[12] ),
    .X(_1025_));
 sky130_fd_sc_hd__clkbuf_1 _1334_ (.A(_1025_),
    .X(_0169_));
 sky130_fd_sc_hd__inv_2 _1335_ (.A(_0987_),
    .Y(_1026_));
 sky130_fd_sc_hd__or3b_2 _1336_ (.A(_1010_),
    .B(\byte_controller.bit_controller.c_state[9] ),
    .C_N(_1009_),
    .X(_1027_));
 sky130_fd_sc_hd__or4_4 _1337_ (.A(_1012_),
    .B(_1011_),
    .C(_1027_),
    .D(_0997_),
    .X(_1028_));
 sky130_fd_sc_hd__or4b_4 _1338_ (.A(_0989_),
    .B(_1017_),
    .C(\byte_controller.bit_controller.c_state[0] ),
    .D_N(\byte_controller.bit_controller.c_state[1] ),
    .X(_1029_));
 sky130_fd_sc_hd__o2111a_1 _1339_ (.A1(_0990_),
    .A2(_0169_),
    .B1(_1026_),
    .C1(_1028_),
    .D1(_1029_),
    .X(_1030_));
 sky130_fd_sc_hd__o2111ai_4 _1340_ (.A1(_0987_),
    .A2(_0999_),
    .B1(_1008_),
    .C1(_1024_),
    .D1(_1030_),
    .Y(_1031_));
 sky130_fd_sc_hd__o31a_1 _1341_ (.A1(_0987_),
    .A2(_0999_),
    .A3(\byte_controller.bit_controller.sda_oen_master ),
    .B1(_1031_),
    .X(_0435_));
 sky130_fd_sc_hd__clkbuf_1 _1342_ (.A(_0984_),
    .X(_0309_));
 sky130_fd_sc_hd__nand2_1 _1343_ (.A(_0999_),
    .B(_1018_),
    .Y(_1032_));
 sky130_fd_sc_hd__inv_2 _1344_ (.A(_0170_),
    .Y(_1033_));
 sky130_fd_sc_hd__or4_4 _1345_ (.A(\byte_controller.bit_controller.c_state[7] ),
    .B(\byte_controller.bit_controller.c_state[6] ),
    .C(_0994_),
    .D(_1016_),
    .X(_1034_));
 sky130_fd_sc_hd__inv_2 _1346_ (.A(\byte_controller.bit_controller.c_state[5] ),
    .Y(_1035_));
 sky130_fd_sc_hd__and4bb_1 _1347_ (.A_N(_0990_),
    .B_N(_1034_),
    .C(\byte_controller.bit_controller.c_state[4] ),
    .D(_1035_),
    .X(_1036_));
 sky130_fd_sc_hd__or4_4 _1348_ (.A(_1010_),
    .B(_1035_),
    .C(\byte_controller.bit_controller.c_state[4] ),
    .D(_1034_),
    .X(_1037_));
 sky130_fd_sc_hd__inv_2 _1349_ (.A(_1037_),
    .Y(_1038_));
 sky130_fd_sc_hd__or3b_1 _1350_ (.A(_1036_),
    .B(_1038_),
    .C_N(_1023_),
    .X(_1039_));
 sky130_fd_sc_hd__or4b_4 _1351_ (.A(_1033_),
    .B(_1032_),
    .C(_1039_),
    .D_N(_1006_),
    .X(_1040_));
 sky130_fd_sc_hd__inv_2 _1352_ (.A(_1040_),
    .Y(_1041_));
 sky130_fd_sc_hd__a211o_1 _1353_ (.A1(\byte_controller.bit_controller.scl_oen_master ),
    .A2(_1032_),
    .B1(_0987_),
    .C1(_1041_),
    .X(_0434_));
 sky130_fd_sc_hd__clkbuf_1 _1354_ (.A(_0984_),
    .X(_0308_));
 sky130_fd_sc_hd__or4b_4 _1355_ (.A(_1000_),
    .B(\byte_controller.bit_controller.c_state[14] ),
    .C(_0992_),
    .D_N(\byte_controller.bit_controller.c_state[15] ),
    .X(_0171_));
 sky130_fd_sc_hd__or2_1 _1356_ (.A(_0990_),
    .B(_0171_),
    .X(_1042_));
 sky130_fd_sc_hd__or2_2 _1357_ (.A(_0985_),
    .B(_0987_),
    .X(_1043_));
 sky130_fd_sc_hd__buf_1 _1358_ (.A(_1043_),
    .X(_1044_));
 sky130_fd_sc_hd__buf_1 _1359_ (.A(_1044_),
    .X(_1045_));
 sky130_fd_sc_hd__or2_2 _1360_ (.A(\byte_controller.bit_controller.clk_en ),
    .B(_0986_),
    .X(_0488_));
 sky130_fd_sc_hd__inv_2 _1361_ (.A(_0488_),
    .Y(_0489_));
 sky130_fd_sc_hd__clkbuf_2 _1362_ (.A(_0489_),
    .X(_0490_));
 sky130_fd_sc_hd__buf_1 _1363_ (.A(_0490_),
    .X(_0491_));
 sky130_fd_sc_hd__a2bb2o_1 _1364_ (.A1_N(_1042_),
    .A2_N(_1045_),
    .B1(_0990_),
    .B2(_0491_),
    .X(_0433_));
 sky130_fd_sc_hd__clkbuf_1 _1365_ (.A(_0984_),
    .X(_0307_));
 sky130_fd_sc_hd__a2bb2o_1 _1366_ (.A1_N(_1002_),
    .A2_N(_1045_),
    .B1(\byte_controller.bit_controller.c_state[15] ),
    .B2(_0491_),
    .X(_0432_));
 sky130_fd_sc_hd__clkbuf_2 _1367_ (.A(_0980_),
    .X(_0492_));
 sky130_fd_sc_hd__clkbuf_1 _1368_ (.A(_0492_),
    .X(_0306_));
 sky130_fd_sc_hd__a2bb2o_1 _1369_ (.A1_N(_1006_),
    .A2_N(_1045_),
    .B1(\byte_controller.bit_controller.c_state[14] ),
    .B2(_0491_),
    .X(_0431_));
 sky130_fd_sc_hd__clkbuf_1 _1370_ (.A(_0492_),
    .X(_0305_));
 sky130_fd_sc_hd__inv_2 _1371_ (.A(\byte_controller.core_cmd[2] ),
    .Y(_0493_));
 sky130_fd_sc_hd__or4_4 _1372_ (.A(\byte_controller.bit_controller.c_state[5] ),
    .B(\byte_controller.bit_controller.c_state[4] ),
    .C(_0994_),
    .D(_1016_),
    .X(_0494_));
 sky130_fd_sc_hd__or4b_4 _1373_ (.A(_0989_),
    .B(_0494_),
    .C(\byte_controller.bit_controller.c_state[6] ),
    .D_N(\byte_controller.bit_controller.c_state[7] ),
    .X(_0495_));
 sky130_fd_sc_hd__or4_4 _1374_ (.A(\byte_controller.bit_controller.c_state[1] ),
    .B(\byte_controller.bit_controller.c_state[0] ),
    .C(_0993_),
    .D(_1016_),
    .X(_0496_));
 sky130_fd_sc_hd__or4b_4 _1375_ (.A(_0989_),
    .B(_0496_),
    .C(\byte_controller.bit_controller.c_state[2] ),
    .D_N(\byte_controller.bit_controller.c_state[3] ),
    .X(_0497_));
 sky130_fd_sc_hd__or4b_4 _1376_ (.A(_1010_),
    .B(\byte_controller.bit_controller.c_state[7] ),
    .C(_0494_),
    .D_N(\byte_controller.bit_controller.c_state[6] ),
    .X(_0498_));
 sky130_fd_sc_hd__or4b_4 _1377_ (.A(_1010_),
    .B(\byte_controller.bit_controller.c_state[3] ),
    .C(_0496_),
    .D_N(\byte_controller.bit_controller.c_state[2] ),
    .X(_0499_));
 sky130_fd_sc_hd__nand4_2 _1378_ (.A(_0495_),
    .B(_0497_),
    .C(_0498_),
    .D(_0499_),
    .Y(_0500_));
 sky130_fd_sc_hd__nand2_1 _1379_ (.A(_1002_),
    .B(_1006_),
    .Y(_0501_));
 sky130_fd_sc_hd__or4b_4 _1380_ (.A(_0500_),
    .B(_1038_),
    .C(_0501_),
    .D_N(_1029_),
    .X(_0502_));
 sky130_fd_sc_hd__or3b_4 _1381_ (.A(_1033_),
    .B(_1036_),
    .C_N(_1028_),
    .X(_0503_));
 sky130_fd_sc_hd__nor3b_4 _1382_ (.A(_0502_),
    .B(_0503_),
    .C_N(_1024_),
    .Y(_0504_));
 sky130_fd_sc_hd__nand2_2 _1383_ (.A(_1042_),
    .B(_0504_),
    .Y(_0505_));
 sky130_fd_sc_hd__o32a_1 _1384_ (.A1(_0493_),
    .A2(_1043_),
    .A3(_0505_),
    .B1(_1003_),
    .B2(_0488_),
    .X(_0506_));
 sky130_fd_sc_hd__inv_2 _1385_ (.A(_0506_),
    .Y(_0430_));
 sky130_fd_sc_hd__clkbuf_1 _1386_ (.A(_0492_),
    .X(_0304_));
 sky130_fd_sc_hd__a2bb2o_1 _1387_ (.A1_N(_1014_),
    .A2_N(_1045_),
    .B1(\byte_controller.bit_controller.c_state[12] ),
    .B2(_0491_),
    .X(_0429_));
 sky130_fd_sc_hd__clkbuf_1 _1388_ (.A(_0492_),
    .X(_0303_));
 sky130_fd_sc_hd__a2bb2o_1 _1389_ (.A1_N(_1020_),
    .A2_N(_1045_),
    .B1(_1012_),
    .B2(_0491_),
    .X(_0428_));
 sky130_fd_sc_hd__clkbuf_1 _1390_ (.A(_0492_),
    .X(_0302_));
 sky130_fd_sc_hd__buf_1 _1391_ (.A(_1044_),
    .X(_0507_));
 sky130_fd_sc_hd__buf_1 _1392_ (.A(_0489_),
    .X(_0508_));
 sky130_fd_sc_hd__a2bb2o_1 _1393_ (.A1_N(_1023_),
    .A2_N(_0507_),
    .B1(_1011_),
    .B2(_0508_),
    .X(_0427_));
 sky130_fd_sc_hd__clkbuf_2 _1394_ (.A(_0980_),
    .X(_0509_));
 sky130_fd_sc_hd__clkbuf_1 _1395_ (.A(_0509_),
    .X(_0301_));
 sky130_fd_sc_hd__inv_2 _1396_ (.A(\byte_controller.core_cmd[1] ),
    .Y(_0510_));
 sky130_fd_sc_hd__o32a_1 _1397_ (.A1(_0510_),
    .A2(_1043_),
    .A3(_0505_),
    .B1(_1021_),
    .B2(_0488_),
    .X(_0511_));
 sky130_fd_sc_hd__inv_2 _1398_ (.A(_0511_),
    .Y(_0426_));
 sky130_fd_sc_hd__clkbuf_1 _1399_ (.A(_0509_),
    .X(_0300_));
 sky130_fd_sc_hd__a2bb2o_1 _1400_ (.A1_N(_0507_),
    .A2_N(_0495_),
    .B1(_1009_),
    .B2(_0508_),
    .X(_0425_));
 sky130_fd_sc_hd__clkbuf_1 _1401_ (.A(_0509_),
    .X(_0299_));
 sky130_fd_sc_hd__a2bb2o_1 _1402_ (.A1_N(_1044_),
    .A2_N(_0498_),
    .B1(\byte_controller.bit_controller.c_state[7] ),
    .B2(_0508_),
    .X(_0424_));
 sky130_fd_sc_hd__clkbuf_1 _1403_ (.A(_0509_),
    .X(_0298_));
 sky130_fd_sc_hd__a2bb2o_1 _1404_ (.A1_N(_1037_),
    .A2_N(_0507_),
    .B1(\byte_controller.bit_controller.c_state[6] ),
    .B2(_0508_),
    .X(_0423_));
 sky130_fd_sc_hd__clkbuf_1 _1405_ (.A(_0509_),
    .X(_0297_));
 sky130_fd_sc_hd__inv_2 _1406_ (.A(\byte_controller.core_cmd[3] ),
    .Y(_0512_));
 sky130_fd_sc_hd__o32a_1 _1407_ (.A1(_0512_),
    .A2(_1043_),
    .A3(_0505_),
    .B1(_1035_),
    .B2(_0488_),
    .X(_0513_));
 sky130_fd_sc_hd__inv_2 _1408_ (.A(_0513_),
    .Y(_0422_));
 sky130_fd_sc_hd__buf_1 _1409_ (.A(_0980_),
    .X(_0514_));
 sky130_fd_sc_hd__clkbuf_1 _1410_ (.A(_0514_),
    .X(_0296_));
 sky130_fd_sc_hd__a2bb2o_1 _1411_ (.A1_N(_1044_),
    .A2_N(_0497_),
    .B1(\byte_controller.bit_controller.c_state[4] ),
    .B2(_0508_),
    .X(_0421_));
 sky130_fd_sc_hd__clkbuf_1 _1412_ (.A(_0514_),
    .X(_0295_));
 sky130_fd_sc_hd__a2bb2o_1 _1413_ (.A1_N(_1044_),
    .A2_N(_0499_),
    .B1(\byte_controller.bit_controller.c_state[3] ),
    .B2(_0490_),
    .X(_0420_));
 sky130_fd_sc_hd__clkbuf_1 _1414_ (.A(_0514_),
    .X(_0294_));
 sky130_fd_sc_hd__a2bb2o_1 _1415_ (.A1_N(_1029_),
    .A2_N(_0507_),
    .B1(\byte_controller.bit_controller.c_state[2] ),
    .B2(_0490_),
    .X(_0419_));
 sky130_fd_sc_hd__clkbuf_1 _1416_ (.A(_0514_),
    .X(_0293_));
 sky130_fd_sc_hd__a2bb2o_1 _1417_ (.A1_N(_1018_),
    .A2_N(_0507_),
    .B1(\byte_controller.bit_controller.c_state[1] ),
    .B2(_0490_),
    .X(_0418_));
 sky130_fd_sc_hd__clkbuf_1 _1418_ (.A(_0514_),
    .X(_0292_));
 sky130_fd_sc_hd__inv_2 _1419_ (.A(\byte_controller.core_cmd[4] ),
    .Y(_0515_));
 sky130_fd_sc_hd__o32a_1 _1420_ (.A1(_0515_),
    .A2(_1043_),
    .A3(_0505_),
    .B1(_1015_),
    .B2(_0488_),
    .X(_0516_));
 sky130_fd_sc_hd__inv_2 _1421_ (.A(_0516_),
    .Y(_0417_));
 sky130_fd_sc_hd__buf_1 _1422_ (.A(_0979_),
    .X(_0517_));
 sky130_fd_sc_hd__clkbuf_2 _1423_ (.A(_0517_),
    .X(_0518_));
 sky130_fd_sc_hd__clkbuf_1 _1424_ (.A(_0518_),
    .X(_0291_));
 sky130_fd_sc_hd__a32o_1 _1425_ (.A1(_1026_),
    .A2(_0999_),
    .A3(_0504_),
    .B1(\byte_controller.bit_controller.sda_chk ),
    .B2(_0490_),
    .X(_0416_));
 sky130_fd_sc_hd__clkbuf_1 _1426_ (.A(_0518_),
    .X(_0290_));
 sky130_fd_sc_hd__clkbuf_2 _1427_ (.A(\byte_controller.bit_controller.sta_condition ),
    .X(_0519_));
 sky130_fd_sc_hd__inv_2 _1428_ (.A(\byte_controller.bit_controller.slave_act ),
    .Y(_0520_));
 sky130_fd_sc_hd__or3_1 _1429_ (.A(\byte_controller.bit_controller.slave_cnt[2] ),
    .B(\byte_controller.bit_controller.slave_cnt[1] ),
    .C(\byte_controller.bit_controller.slave_cnt[0] ),
    .X(_0521_));
 sky130_fd_sc_hd__or2_1 _1430_ (.A(\byte_controller.bit_controller.slave_cnt[3] ),
    .B(_0521_),
    .X(_0522_));
 sky130_fd_sc_hd__inv_2 _1431_ (.A(_0522_),
    .Y(_0523_));
 sky130_fd_sc_hd__nor2_1 _1432_ (.A(_0520_),
    .B(_0523_),
    .Y(_0524_));
 sky130_fd_sc_hd__inv_2 _1433_ (.A(\byte_controller.bit_controller.sto_condition ),
    .Y(_0525_));
 sky130_fd_sc_hd__o21a_1 _1434_ (.A1(_0519_),
    .A2(_0524_),
    .B1(_0525_),
    .X(_0415_));
 sky130_fd_sc_hd__clkbuf_1 _1435_ (.A(_0518_),
    .X(_0289_));
 sky130_fd_sc_hd__clkbuf_2 _1436_ (.A(\byte_controller.bit_controller.dSCL ),
    .X(_0526_));
 sky130_fd_sc_hd__or4_4 _1437_ (.A(_0942_),
    .B(_0526_),
    .C(_0520_),
    .D(_0521_),
    .X(_0527_));
 sky130_fd_sc_hd__a21o_1 _1438_ (.A1(\byte_controller.bit_controller.slave_cnt[3] ),
    .A2(_0527_),
    .B1(_0519_),
    .X(_0414_));
 sky130_fd_sc_hd__clkbuf_1 _1439_ (.A(_0518_),
    .X(_0288_));
 sky130_fd_sc_hd__inv_2 _1440_ (.A(\byte_controller.bit_controller.slave_cnt[2] ),
    .Y(_0528_));
 sky130_fd_sc_hd__nor2_4 _1441_ (.A(_0942_),
    .B(\byte_controller.bit_controller.dSCL ),
    .Y(_0529_));
 sky130_fd_sc_hd__and3_1 _1442_ (.A(\byte_controller.bit_controller.slave_act ),
    .B(_0529_),
    .C(_0522_),
    .X(_0530_));
 sky130_fd_sc_hd__inv_2 _1443_ (.A(_0530_),
    .Y(_0531_));
 sky130_fd_sc_hd__or2_1 _1444_ (.A(\byte_controller.bit_controller.slave_cnt[0] ),
    .B(_0531_),
    .X(_0532_));
 sky130_fd_sc_hd__or2_1 _1445_ (.A(\byte_controller.bit_controller.slave_cnt[1] ),
    .B(_0532_),
    .X(_0533_));
 sky130_fd_sc_hd__inv_2 _1446_ (.A(_0533_),
    .Y(_0534_));
 sky130_fd_sc_hd__inv_2 _1447_ (.A(_0519_),
    .Y(_0535_));
 sky130_fd_sc_hd__o221a_1 _1448_ (.A1(_0528_),
    .A2(_0533_),
    .B1(\byte_controller.bit_controller.slave_cnt[2] ),
    .B2(_0534_),
    .C1(_0535_),
    .X(_0413_));
 sky130_fd_sc_hd__clkbuf_1 _1449_ (.A(_0518_),
    .X(_0287_));
 sky130_fd_sc_hd__and2_1 _1450_ (.A(\byte_controller.bit_controller.slave_cnt[1] ),
    .B(_0532_),
    .X(_0536_));
 sky130_fd_sc_hd__o21a_1 _1451_ (.A1(_0534_),
    .A2(_0536_),
    .B1(_0535_),
    .X(_0412_));
 sky130_fd_sc_hd__clkbuf_2 _1452_ (.A(_0517_),
    .X(_0537_));
 sky130_fd_sc_hd__clkbuf_1 _1453_ (.A(_0537_),
    .X(_0286_));
 sky130_fd_sc_hd__inv_2 _1454_ (.A(_0532_),
    .Y(_0538_));
 sky130_fd_sc_hd__o31a_1 _1455_ (.A1(_0942_),
    .A2(_0526_),
    .A3(_0520_),
    .B1(\byte_controller.bit_controller.slave_cnt[0] ),
    .X(_0539_));
 sky130_fd_sc_hd__o21a_1 _1456_ (.A1(_0538_),
    .A2(_0539_),
    .B1(_0535_),
    .X(_0411_));
 sky130_fd_sc_hd__clkbuf_1 _1457_ (.A(_0537_),
    .X(_0285_));
 sky130_fd_sc_hd__inv_2 _1458_ (.A(\byte_controller.bit_controller.slave_adr[7] ),
    .Y(_0540_));
 sky130_fd_sc_hd__or2_2 _1459_ (.A(\byte_controller.bit_controller.sta_condition ),
    .B(_0530_),
    .X(_0541_));
 sky130_fd_sc_hd__clkbuf_2 _1460_ (.A(_0541_),
    .X(_0542_));
 sky130_fd_sc_hd__inv_2 _1461_ (.A(\byte_controller.bit_controller.slave_adr[6] ),
    .Y(_0543_));
 sky130_fd_sc_hd__or2_2 _1462_ (.A(_0519_),
    .B(_0531_),
    .X(_0544_));
 sky130_fd_sc_hd__clkbuf_2 _1463_ (.A(_0544_),
    .X(_0545_));
 sky130_fd_sc_hd__o22ai_1 _1464_ (.A1(_0540_),
    .A2(_0542_),
    .B1(_0543_),
    .B2(_0545_),
    .Y(_0410_));
 sky130_fd_sc_hd__clkbuf_1 _1465_ (.A(_0537_),
    .X(_0284_));
 sky130_fd_sc_hd__inv_2 _1466_ (.A(\byte_controller.bit_controller.slave_adr[5] ),
    .Y(_0546_));
 sky130_fd_sc_hd__o22ai_1 _1467_ (.A1(_0543_),
    .A2(_0542_),
    .B1(_0546_),
    .B2(_0545_),
    .Y(_0409_));
 sky130_fd_sc_hd__clkbuf_1 _1468_ (.A(_0537_),
    .X(_0283_));
 sky130_fd_sc_hd__inv_2 _1469_ (.A(\byte_controller.bit_controller.slave_adr[4] ),
    .Y(_0547_));
 sky130_fd_sc_hd__o22ai_1 _1470_ (.A1(_0546_),
    .A2(_0542_),
    .B1(_0547_),
    .B2(_0545_),
    .Y(_0408_));
 sky130_fd_sc_hd__clkbuf_1 _1471_ (.A(_0537_),
    .X(_0282_));
 sky130_fd_sc_hd__inv_2 _1472_ (.A(\byte_controller.bit_controller.slave_adr[3] ),
    .Y(_0548_));
 sky130_fd_sc_hd__o22ai_1 _1473_ (.A1(_0547_),
    .A2(_0542_),
    .B1(_0548_),
    .B2(_0545_),
    .Y(_0407_));
 sky130_fd_sc_hd__buf_1 _1474_ (.A(_0517_),
    .X(_0549_));
 sky130_fd_sc_hd__clkbuf_1 _1475_ (.A(_0549_),
    .X(_0281_));
 sky130_fd_sc_hd__inv_2 _1476_ (.A(\byte_controller.bit_controller.slave_adr[2] ),
    .Y(_0550_));
 sky130_fd_sc_hd__o22ai_1 _1477_ (.A1(_0548_),
    .A2(_0542_),
    .B1(_0550_),
    .B2(_0545_),
    .Y(_0406_));
 sky130_fd_sc_hd__clkbuf_1 _1478_ (.A(_0549_),
    .X(_0280_));
 sky130_fd_sc_hd__inv_2 _1479_ (.A(\byte_controller.bit_controller.slave_adr[1] ),
    .Y(_0551_));
 sky130_fd_sc_hd__o22ai_1 _1480_ (.A1(_0550_),
    .A2(_0541_),
    .B1(_0551_),
    .B2(_0544_),
    .Y(_0405_));
 sky130_fd_sc_hd__clkbuf_1 _1481_ (.A(_0549_),
    .X(_0279_));
 sky130_fd_sc_hd__inv_2 _1482_ (.A(\byte_controller.bit_controller.slave_adr[0] ),
    .Y(_0552_));
 sky130_fd_sc_hd__o22ai_1 _1483_ (.A1(_0551_),
    .A2(_0541_),
    .B1(_0552_),
    .B2(_0544_),
    .Y(_0404_));
 sky130_fd_sc_hd__clkbuf_1 _1484_ (.A(_0549_),
    .X(_0278_));
 sky130_fd_sc_hd__inv_2 _1485_ (.A(\byte_controller.bit_controller.sSDA ),
    .Y(_0553_));
 sky130_fd_sc_hd__o22ai_1 _1486_ (.A1(_0552_),
    .A2(_0541_),
    .B1(_0553_),
    .B2(_0544_),
    .Y(_0403_));
 sky130_fd_sc_hd__buf_1 _1487_ (.A(_0549_),
    .X(_0277_));
 sky130_fd_sc_hd__nor2_2 _1488_ (.A(\byte_controller.bit_controller.al ),
    .B(\byte_controller.cmd_ack ),
    .Y(_0554_));
 sky130_fd_sc_hd__o21ai_4 _1489_ (.A1(_0917_),
    .A2(_0554_),
    .B1(_0863_),
    .Y(_0555_));
 sky130_fd_sc_hd__inv_2 _1490_ (.A(_0555_),
    .Y(_0556_));
 sky130_fd_sc_hd__inv_2 _1491_ (.A(\byte_controller.start ),
    .Y(_0557_));
 sky130_fd_sc_hd__o32a_1 _1492_ (.A1(_0866_),
    .A2(_0899_),
    .A3(_0556_),
    .B1(_0557_),
    .B2(_0555_),
    .X(_0558_));
 sky130_fd_sc_hd__inv_2 _1493_ (.A(_0558_),
    .Y(_0402_));
 sky130_fd_sc_hd__clkbuf_2 _1494_ (.A(_0517_),
    .X(_0559_));
 sky130_fd_sc_hd__clkbuf_1 _1495_ (.A(_0559_),
    .X(_0276_));
 sky130_fd_sc_hd__inv_2 _1496_ (.A(\byte_controller.stop ),
    .Y(_0560_));
 sky130_fd_sc_hd__clkbuf_2 _1497_ (.A(_0560_),
    .X(_0561_));
 sky130_fd_sc_hd__o32a_1 _1498_ (.A1(_0880_),
    .A2(_0899_),
    .A3(_0556_),
    .B1(_0561_),
    .B2(_0555_),
    .X(_0562_));
 sky130_fd_sc_hd__inv_2 _1499_ (.A(_0562_),
    .Y(_0401_));
 sky130_fd_sc_hd__clkbuf_1 _1500_ (.A(_0559_),
    .X(_0275_));
 sky130_fd_sc_hd__dlymetal6s2s_1 _1501_ (.A(_0869_),
    .X(_0563_));
 sky130_fd_sc_hd__inv_2 _1502_ (.A(\byte_controller.read ),
    .Y(_0564_));
 sky130_fd_sc_hd__o32a_1 _1503_ (.A1(_0884_),
    .A2(_0563_),
    .A3(_0556_),
    .B1(_0564_),
    .B2(_0555_),
    .X(_0565_));
 sky130_fd_sc_hd__inv_2 _1504_ (.A(_0565_),
    .Y(_0400_));
 sky130_fd_sc_hd__clkbuf_1 _1505_ (.A(_0559_),
    .X(_0274_));
 sky130_fd_sc_hd__inv_2 _1506_ (.A(\byte_controller.write ),
    .Y(_0566_));
 sky130_fd_sc_hd__o32a_1 _1507_ (.A1(_0887_),
    .A2(_0563_),
    .A3(_0556_),
    .B1(_0566_),
    .B2(_0555_),
    .X(_0567_));
 sky130_fd_sc_hd__inv_2 _1508_ (.A(_0567_),
    .Y(_0399_));
 sky130_fd_sc_hd__clkbuf_1 _1509_ (.A(_0559_),
    .X(_0273_));
 sky130_fd_sc_hd__inv_2 _1510_ (.A(\byte_controller.bit_controller.slave_state[0] ),
    .Y(_0568_));
 sky130_fd_sc_hd__inv_2 _1511_ (.A(\byte_controller.bit_controller.slave_state[5] ),
    .Y(_0569_));
 sky130_fd_sc_hd__or2_2 _1512_ (.A(\byte_controller.bit_controller.sta_condition ),
    .B(_0943_),
    .X(_0570_));
 sky130_fd_sc_hd__inv_2 _1513_ (.A(_0570_),
    .Y(_0571_));
 sky130_fd_sc_hd__clkbuf_2 _1514_ (.A(_0571_),
    .X(_0572_));
 sky130_fd_sc_hd__inv_2 _1515_ (.A(\byte_controller.bit_controller.slave_cmd[0] ),
    .Y(_0573_));
 sky130_fd_sc_hd__nor2_1 _1516_ (.A(\byte_controller.bit_controller.sSCL ),
    .B(_0526_),
    .Y(_0574_));
 sky130_fd_sc_hd__o32a_1 _1517_ (.A1(_0573_),
    .A2(\byte_controller.bit_controller.slave_cmd[1] ),
    .A3(_0568_),
    .B1(_0569_),
    .B2(_0574_),
    .X(_0575_));
 sky130_fd_sc_hd__nor2_1 _1518_ (.A(_0570_),
    .B(_0575_),
    .Y(_0013_));
 sky130_fd_sc_hd__a31o_1 _1519_ (.A1(_0568_),
    .A2(_0569_),
    .A3(_0572_),
    .B1(_0013_),
    .X(_0576_));
 sky130_fd_sc_hd__and3_1 _1520_ (.A(\byte_controller.bit_controller.slave_state[5] ),
    .B(_1007_),
    .C(_0571_),
    .X(_0577_));
 sky130_fd_sc_hd__o2bb2ai_1 _1521_ (.A1_N(\byte_controller.bit_controller.sda_oen_slave ),
    .A2_N(_0576_),
    .B1(_0576_),
    .B2(_0577_),
    .Y(_0398_));
 sky130_fd_sc_hd__clkbuf_1 _1522_ (.A(_0559_),
    .X(_0272_));
 sky130_fd_sc_hd__clkbuf_2 _1523_ (.A(_0939_),
    .X(_0578_));
 sky130_fd_sc_hd__or3_4 _1524_ (.A(net16),
    .B(\byte_controller.ld ),
    .C(\byte_controller.shift ),
    .X(_0579_));
 sky130_fd_sc_hd__a21oi_4 _1525_ (.A1(\byte_controller.slave_act ),
    .A2(\byte_controller.slave_adr_received_d ),
    .B1(_0579_),
    .Y(_0580_));
 sky130_fd_sc_hd__inv_2 _1526_ (.A(_0580_),
    .Y(_0581_));
 sky130_fd_sc_hd__clkbuf_2 _1527_ (.A(_0581_),
    .X(_0582_));
 sky130_fd_sc_hd__clkbuf_2 _1528_ (.A(_0580_),
    .X(_0583_));
 sky130_fd_sc_hd__a32o_1 _1529_ (.A1(_0578_),
    .A2(_0582_),
    .A3(_0148_),
    .B1(\byte_controller.dout[7] ),
    .B2(_0583_),
    .X(_0397_));
 sky130_fd_sc_hd__clkbuf_2 _1530_ (.A(_0517_),
    .X(_0584_));
 sky130_fd_sc_hd__clkbuf_1 _1531_ (.A(_0584_),
    .X(_0271_));
 sky130_fd_sc_hd__a32o_1 _1532_ (.A1(_0578_),
    .A2(_0582_),
    .A3(_0146_),
    .B1(\byte_controller.dout[6] ),
    .B2(_0583_),
    .X(_0396_));
 sky130_fd_sc_hd__clkbuf_1 _1533_ (.A(_0584_),
    .X(_0270_));
 sky130_fd_sc_hd__a32o_1 _1534_ (.A1(_0578_),
    .A2(_0582_),
    .A3(_0144_),
    .B1(\byte_controller.dout[5] ),
    .B2(_0583_),
    .X(_0395_));
 sky130_fd_sc_hd__clkbuf_1 _1535_ (.A(_0584_),
    .X(_0269_));
 sky130_fd_sc_hd__a32o_1 _1536_ (.A1(_0578_),
    .A2(_0582_),
    .A3(_0142_),
    .B1(\byte_controller.dout[4] ),
    .B2(_0583_),
    .X(_0394_));
 sky130_fd_sc_hd__clkbuf_1 _1537_ (.A(_0584_),
    .X(_0268_));
 sky130_fd_sc_hd__a32o_1 _1538_ (.A1(_0578_),
    .A2(_0582_),
    .A3(_0140_),
    .B1(\byte_controller.dout[3] ),
    .B2(_0583_),
    .X(_0393_));
 sky130_fd_sc_hd__clkbuf_1 _1539_ (.A(_0584_),
    .X(_0267_));
 sky130_fd_sc_hd__clkbuf_2 _1540_ (.A(_0855_),
    .X(_0585_));
 sky130_fd_sc_hd__a32o_1 _1541_ (.A1(_0585_),
    .A2(_0581_),
    .A3(_0138_),
    .B1(\byte_controller.dout[2] ),
    .B2(_0580_),
    .X(_0392_));
 sky130_fd_sc_hd__clkbuf_2 _1542_ (.A(_0979_),
    .X(_0586_));
 sky130_fd_sc_hd__buf_1 _1543_ (.A(_0586_),
    .X(_0587_));
 sky130_fd_sc_hd__clkbuf_1 _1544_ (.A(_0587_),
    .X(_0266_));
 sky130_fd_sc_hd__a32o_1 _1545_ (.A1(_0585_),
    .A2(_0581_),
    .A3(_0136_),
    .B1(\byte_controller.dout[1] ),
    .B2(_0580_),
    .X(_0391_));
 sky130_fd_sc_hd__clkbuf_1 _1546_ (.A(_0587_),
    .X(_0265_));
 sky130_fd_sc_hd__a32o_1 _1547_ (.A1(_0585_),
    .A2(_0581_),
    .A3(_0134_),
    .B1(\byte_controller.dout[0] ),
    .B2(_0580_),
    .X(_0390_));
 sky130_fd_sc_hd__clkbuf_1 _1548_ (.A(_0587_),
    .X(_0264_));
 sky130_fd_sc_hd__o21a_1 _1549_ (.A1(\byte_controller.dcnt[1] ),
    .A2(\byte_controller.dcnt[0] ),
    .B1(\byte_controller.dcnt[2] ),
    .X(_0588_));
 sky130_fd_sc_hd__or3_4 _1550_ (.A(\byte_controller.dcnt[1] ),
    .B(\byte_controller.dcnt[0] ),
    .C(\byte_controller.dcnt[2] ),
    .X(_0589_));
 sky130_fd_sc_hd__inv_2 _1551_ (.A(_0589_),
    .Y(_0590_));
 sky130_fd_sc_hd__clkbuf_2 _1552_ (.A(_0590_),
    .X(_0591_));
 sky130_fd_sc_hd__or3_1 _1553_ (.A(\byte_controller.ld ),
    .B(_0588_),
    .C(_0591_),
    .X(_0592_));
 sky130_fd_sc_hd__inv_2 _1554_ (.A(_0579_),
    .Y(_0593_));
 sky130_fd_sc_hd__a32o_1 _1555_ (.A1(_0585_),
    .A2(_0579_),
    .A3(_0592_),
    .B1(\byte_controller.dcnt[2] ),
    .B2(_0593_),
    .X(_0389_));
 sky130_fd_sc_hd__clkbuf_1 _1556_ (.A(_0587_),
    .X(_0263_));
 sky130_fd_sc_hd__inv_2 _1557_ (.A(\byte_controller.dcnt[1] ),
    .Y(_0594_));
 sky130_fd_sc_hd__inv_2 _1558_ (.A(\byte_controller.dcnt[0] ),
    .Y(_0595_));
 sky130_fd_sc_hd__a221oi_2 _1559_ (.A1(_0594_),
    .A2(_0595_),
    .B1(\byte_controller.dcnt[1] ),
    .B2(\byte_controller.dcnt[0] ),
    .C1(\byte_controller.ld ),
    .Y(_0596_));
 sky130_fd_sc_hd__o32a_1 _1560_ (.A1(_0982_),
    .A2(_0593_),
    .A3(_0596_),
    .B1(_0594_),
    .B2(_0579_),
    .X(_0597_));
 sky130_fd_sc_hd__inv_2 _1561_ (.A(_0597_),
    .Y(_0388_));
 sky130_fd_sc_hd__clkbuf_1 _1562_ (.A(_0587_),
    .X(_0262_));
 sky130_fd_sc_hd__nor2_1 _1563_ (.A(_0595_),
    .B(\byte_controller.ld ),
    .Y(_0598_));
 sky130_fd_sc_hd__o32a_1 _1564_ (.A1(_0905_),
    .A2(_0593_),
    .A3(_0598_),
    .B1(_0595_),
    .B2(_0579_),
    .X(_0599_));
 sky130_fd_sc_hd__inv_2 _1565_ (.A(_0599_),
    .Y(_0387_));
 sky130_fd_sc_hd__clkbuf_2 _1566_ (.A(_0586_),
    .X(_0600_));
 sky130_fd_sc_hd__clkbuf_1 _1567_ (.A(_0600_),
    .X(_0261_));
 sky130_fd_sc_hd__inv_2 _1568_ (.A(\byte_controller.c_state[5] ),
    .Y(_0601_));
 sky130_fd_sc_hd__or3_4 _1569_ (.A(\byte_controller.bit_controller.sto_condition ),
    .B(\byte_controller.bit_controller.sta_condition ),
    .C(_0986_),
    .X(_0602_));
 sky130_fd_sc_hd__clkbuf_2 _1570_ (.A(_0602_),
    .X(_0603_));
 sky130_fd_sc_hd__nor2_2 _1571_ (.A(_0601_),
    .B(_0603_),
    .Y(_0604_));
 sky130_fd_sc_hd__inv_2 _1572_ (.A(\byte_controller.bit_controller.dout ),
    .Y(_0605_));
 sky130_fd_sc_hd__nor2_1 _1573_ (.A(_0605_),
    .B(_0602_),
    .Y(_0606_));
 sky130_fd_sc_hd__and3_1 _1574_ (.A(\byte_controller.c_state[5] ),
    .B(\byte_controller.bit_controller.cmd_slave_ack ),
    .C(_0606_),
    .X(_0607_));
 sky130_fd_sc_hd__inv_2 _1575_ (.A(\byte_controller.c_state[2] ),
    .Y(_0608_));
 sky130_fd_sc_hd__inv_2 _1576_ (.A(_0602_),
    .Y(_0609_));
 sky130_fd_sc_hd__o221a_1 _1577_ (.A1(_0933_),
    .A2(_0608_),
    .B1(_0601_),
    .B2(\byte_controller.c_state[2] ),
    .C1(_0609_),
    .X(_0610_));
 sky130_fd_sc_hd__inv_2 _1578_ (.A(\byte_controller.bit_controller.cmd_slave_ack ),
    .Y(_0611_));
 sky130_fd_sc_hd__nand2_1 _1579_ (.A(_0611_),
    .B(_0604_),
    .Y(_0612_));
 sky130_fd_sc_hd__or3b_4 _1580_ (.A(_0607_),
    .B(_0610_),
    .C_N(_0612_),
    .X(_0613_));
 sky130_fd_sc_hd__a21oi_1 _1581_ (.A1(\byte_controller.bit_controller.slave_adr[0] ),
    .A2(_0605_),
    .B1(_0613_),
    .Y(_0614_));
 sky130_fd_sc_hd__o22a_1 _1582_ (.A1(_0604_),
    .A2(_0613_),
    .B1(\byte_controller.slave_dat_avail ),
    .B2(_0614_),
    .X(_0386_));
 sky130_fd_sc_hd__clkbuf_1 _1583_ (.A(_0600_),
    .X(_0260_));
 sky130_fd_sc_hd__or3_4 _1584_ (.A(_0872_),
    .B(_0907_),
    .C(_0859_),
    .X(_0615_));
 sky130_fd_sc_hd__o21ai_2 _1585_ (.A1(_0868_),
    .A2(_0615_),
    .B1(_0876_),
    .Y(_0616_));
 sky130_fd_sc_hd__inv_2 _1586_ (.A(_0616_),
    .Y(_0617_));
 sky130_fd_sc_hd__buf_1 _1587_ (.A(_0617_),
    .X(_0618_));
 sky130_fd_sc_hd__buf_1 _1588_ (.A(_0616_),
    .X(_0619_));
 sky130_fd_sc_hd__o32a_1 _1589_ (.A1(_0928_),
    .A2(net14),
    .A3(_0618_),
    .B1(\byte_controller.my_addr[6] ),
    .B2(_0619_),
    .X(_0385_));
 sky130_fd_sc_hd__clkbuf_1 _1590_ (.A(_0600_),
    .X(_0259_));
 sky130_fd_sc_hd__o32a_1 _1591_ (.A1(_0928_),
    .A2(net13),
    .A3(_0618_),
    .B1(\byte_controller.my_addr[5] ),
    .B2(_0619_),
    .X(_0384_));
 sky130_fd_sc_hd__clkbuf_1 _1592_ (.A(_0600_),
    .X(_0258_));
 sky130_fd_sc_hd__o32a_1 _1593_ (.A1(_0928_),
    .A2(net12),
    .A3(_0618_),
    .B1(\byte_controller.my_addr[4] ),
    .B2(_0619_),
    .X(_0383_));
 sky130_fd_sc_hd__clkbuf_1 _1594_ (.A(_0600_),
    .X(_0257_));
 sky130_fd_sc_hd__o32a_1 _1595_ (.A1(_0982_),
    .A2(net11),
    .A3(_0618_),
    .B1(\byte_controller.my_addr[3] ),
    .B2(_0619_),
    .X(_0382_));
 sky130_fd_sc_hd__clkbuf_2 _1596_ (.A(_0586_),
    .X(_0620_));
 sky130_fd_sc_hd__clkbuf_1 _1597_ (.A(_0620_),
    .X(_0256_));
 sky130_fd_sc_hd__o32a_1 _1598_ (.A1(_0982_),
    .A2(net10),
    .A3(_0618_),
    .B1(\byte_controller.my_addr[2] ),
    .B2(_0619_),
    .X(_0381_));
 sky130_fd_sc_hd__clkbuf_1 _1599_ (.A(_0620_),
    .X(_0255_));
 sky130_fd_sc_hd__o32a_1 _1600_ (.A1(_0982_),
    .A2(net9),
    .A3(_0617_),
    .B1(\byte_controller.my_addr[1] ),
    .B2(_0616_),
    .X(_0380_));
 sky130_fd_sc_hd__clkbuf_1 _1601_ (.A(_0620_),
    .X(_0254_));
 sky130_fd_sc_hd__inv_2 _1602_ (.A(\byte_controller.my_addr[0] ),
    .Y(_0621_));
 sky130_fd_sc_hd__o32a_1 _1603_ (.A1(_0890_),
    .A2(_0615_),
    .A3(_0902_),
    .B1(_0621_),
    .B2(_0616_),
    .X(_0622_));
 sky130_fd_sc_hd__inv_2 _1604_ (.A(_0622_),
    .Y(_0379_));
 sky130_fd_sc_hd__clkbuf_1 _1605_ (.A(_0620_),
    .X(_0253_));
 sky130_fd_sc_hd__clkbuf_2 _1606_ (.A(_0609_),
    .X(_0623_));
 sky130_fd_sc_hd__and3_1 _1607_ (.A(\byte_controller.c_state[5] ),
    .B(\byte_controller.bit_controller.cmd_slave_ack ),
    .C(_0623_),
    .X(_0624_));
 sky130_fd_sc_hd__buf_1 _1608_ (.A(_0624_),
    .X(_0033_));
 sky130_fd_sc_hd__a31o_1 _1609_ (.A1(_0605_),
    .A2(_0033_),
    .A3(_0552_),
    .B1(_0613_),
    .X(_0625_));
 sky130_fd_sc_hd__mux2_1 _1610_ (.A0(_0604_),
    .A1(\byte_controller.slave_dat_req ),
    .S(_0625_),
    .X(_0378_));
 sky130_fd_sc_hd__clkbuf_1 _1611_ (.A(_0620_),
    .X(_0252_));
 sky130_fd_sc_hd__buf_1 _1612_ (.A(_0603_),
    .X(_0626_));
 sky130_fd_sc_hd__or2_1 _1613_ (.A(\byte_controller.c_state[7] ),
    .B(\byte_controller.c_state[5] ),
    .X(_0627_));
 sky130_fd_sc_hd__inv_2 _1614_ (.A(\byte_controller.c_state[7] ),
    .Y(_0628_));
 sky130_fd_sc_hd__or3_4 _1615_ (.A(\byte_controller.bit_controller.cmd_ack ),
    .B(_0628_),
    .C(_0626_),
    .X(_0629_));
 sky130_fd_sc_hd__o211a_1 _1616_ (.A1(_0626_),
    .A2(_0627_),
    .B1(_0629_),
    .C1(_0612_),
    .X(_0630_));
 sky130_fd_sc_hd__mux2_1 _1617_ (.A0(\byte_controller.ack_out ),
    .A1(_0606_),
    .S(_0630_),
    .X(_0377_));
 sky130_fd_sc_hd__buf_1 _1618_ (.A(_0586_),
    .X(_0631_));
 sky130_fd_sc_hd__clkbuf_1 _1619_ (.A(_0631_),
    .X(_0251_));
 sky130_fd_sc_hd__buf_1 _1620_ (.A(_0623_),
    .X(_0632_));
 sky130_fd_sc_hd__clkbuf_2 _1621_ (.A(_0632_),
    .X(_0633_));
 sky130_fd_sc_hd__inv_2 _1622_ (.A(\byte_controller.c_state[0] ),
    .Y(_0634_));
 sky130_fd_sc_hd__buf_1 _1623_ (.A(_0634_),
    .X(_0635_));
 sky130_fd_sc_hd__inv_2 _1624_ (.A(\byte_controller.my_addr[3] ),
    .Y(_0636_));
 sky130_fd_sc_hd__inv_2 _1625_ (.A(\byte_controller.my_addr[2] ),
    .Y(_0637_));
 sky130_fd_sc_hd__o22a_1 _1626_ (.A1(\byte_controller.bit_controller.slave_adr[3] ),
    .A2(\byte_controller.my_addr[2] ),
    .B1(_0548_),
    .B2(_0637_),
    .X(_0638_));
 sky130_fd_sc_hd__a221o_1 _1627_ (.A1(\byte_controller.bit_controller.slave_adr[4] ),
    .A2(_0636_),
    .B1(_0547_),
    .B2(\byte_controller.my_addr[3] ),
    .C1(_0638_),
    .X(_0639_));
 sky130_fd_sc_hd__o211a_1 _1628_ (.A1(_0551_),
    .A2(\byte_controller.my_addr[0] ),
    .B1(\byte_controller.slave_en ),
    .C1(\byte_controller.bit_controller.slave_adr_received ),
    .X(_0640_));
 sky130_fd_sc_hd__o221a_1 _1629_ (.A1(\byte_controller.bit_controller.slave_adr[1] ),
    .A2(_0621_),
    .B1(_0543_),
    .B2(\byte_controller.my_addr[5] ),
    .C1(_0640_),
    .X(_0641_));
 sky130_fd_sc_hd__inv_2 _1630_ (.A(\byte_controller.my_addr[1] ),
    .Y(_0642_));
 sky130_fd_sc_hd__or2_1 _1631_ (.A(_0540_),
    .B(\byte_controller.my_addr[6] ),
    .X(_0643_));
 sky130_fd_sc_hd__o221a_1 _1632_ (.A1(\byte_controller.bit_controller.slave_adr[2] ),
    .A2(_0642_),
    .B1(_0546_),
    .B2(\byte_controller.my_addr[4] ),
    .C1(_0643_),
    .X(_0644_));
 sky130_fd_sc_hd__inv_2 _1633_ (.A(\byte_controller.my_addr[4] ),
    .Y(_0645_));
 sky130_fd_sc_hd__inv_2 _1634_ (.A(\byte_controller.my_addr[5] ),
    .Y(_0646_));
 sky130_fd_sc_hd__inv_2 _1635_ (.A(\byte_controller.my_addr[6] ),
    .Y(_0647_));
 sky130_fd_sc_hd__o22a_1 _1636_ (.A1(\byte_controller.bit_controller.slave_adr[6] ),
    .A2(_0646_),
    .B1(\byte_controller.bit_controller.slave_adr[7] ),
    .B2(_0647_),
    .X(_0648_));
 sky130_fd_sc_hd__o221a_1 _1637_ (.A1(_0550_),
    .A2(\byte_controller.my_addr[1] ),
    .B1(\byte_controller.bit_controller.slave_adr[5] ),
    .B2(_0645_),
    .C1(_0648_),
    .X(_0649_));
 sky130_fd_sc_hd__and4b_2 _1638_ (.A_N(_0639_),
    .B(_0641_),
    .C(_0644_),
    .D(_0649_),
    .X(_0650_));
 sky130_fd_sc_hd__or2_1 _1639_ (.A(_0635_),
    .B(_0650_),
    .X(_0651_));
 sky130_fd_sc_hd__o211a_1 _1640_ (.A1(\byte_controller.slave_act ),
    .A2(\byte_controller.c_state[0] ),
    .B1(_0633_),
    .C1(_0651_),
    .X(_0376_));
 sky130_fd_sc_hd__clkbuf_1 _1641_ (.A(_0631_),
    .X(_0250_));
 sky130_fd_sc_hd__o221a_1 _1642_ (.A1(_0934_),
    .A2(_0608_),
    .B1(\byte_controller.bit_controller.sl_wait ),
    .B2(\byte_controller.c_state[2] ),
    .C1(_0633_),
    .X(_0375_));
 sky130_fd_sc_hd__clkbuf_1 _1643_ (.A(_0631_),
    .X(_0249_));
 sky130_fd_sc_hd__clkbuf_2 _1644_ (.A(_0626_),
    .X(_0652_));
 sky130_fd_sc_hd__clkbuf_2 _1645_ (.A(_0611_),
    .X(_0653_));
 sky130_fd_sc_hd__clkbuf_2 _1646_ (.A(_0589_),
    .X(_0654_));
 sky130_fd_sc_hd__inv_2 _1647_ (.A(\byte_controller.c_state[4] ),
    .Y(_0655_));
 sky130_fd_sc_hd__inv_2 _1648_ (.A(\byte_controller.c_state[3] ),
    .Y(_0656_));
 sky130_fd_sc_hd__inv_2 _1649_ (.A(\byte_controller.c_state[1] ),
    .Y(_0657_));
 sky130_fd_sc_hd__o32a_1 _1650_ (.A1(_0611_),
    .A2(_0590_),
    .A3(_0656_),
    .B1(\byte_controller.bit_controller.slave_adr[0] ),
    .B2(_0657_),
    .X(_0658_));
 sky130_fd_sc_hd__o31a_1 _1651_ (.A1(_0653_),
    .A2(_0654_),
    .A3(_0655_),
    .B1(_0658_),
    .X(_0659_));
 sky130_fd_sc_hd__or2_1 _1652_ (.A(\byte_controller.c_state[3] ),
    .B(\byte_controller.c_state[4] ),
    .X(_0660_));
 sky130_fd_sc_hd__or3_1 _1653_ (.A(\byte_controller.c_state[1] ),
    .B(\byte_controller.c_state[5] ),
    .C(_0660_),
    .X(_0661_));
 sky130_fd_sc_hd__inv_2 _1654_ (.A(_0650_),
    .Y(_0662_));
 sky130_fd_sc_hd__or2_1 _1655_ (.A(_0634_),
    .B(_0662_),
    .X(_0663_));
 sky130_fd_sc_hd__inv_2 _1656_ (.A(_0663_),
    .Y(_0664_));
 sky130_fd_sc_hd__a211o_1 _1657_ (.A1(_0635_),
    .A2(_0661_),
    .B1(_0603_),
    .C1(_0664_),
    .X(_0665_));
 sky130_fd_sc_hd__inv_2 _1658_ (.A(_0665_),
    .Y(_0666_));
 sky130_fd_sc_hd__inv_2 _1659_ (.A(\byte_controller.slave_cmd[1] ),
    .Y(_0667_));
 sky130_fd_sc_hd__o32a_1 _1660_ (.A1(_0652_),
    .A2(_0659_),
    .A3(_0666_),
    .B1(_0667_),
    .B2(_0665_),
    .X(_0668_));
 sky130_fd_sc_hd__inv_2 _1661_ (.A(_0668_),
    .Y(_0374_));
 sky130_fd_sc_hd__clkbuf_1 _1662_ (.A(_0631_),
    .X(_0248_));
 sky130_fd_sc_hd__inv_2 _1663_ (.A(\byte_controller.slave_cmd[0] ),
    .Y(_0669_));
 sky130_fd_sc_hd__or2_1 _1664_ (.A(_0552_),
    .B(_0657_),
    .X(_0670_));
 sky130_fd_sc_hd__buf_1 _1665_ (.A(_0656_),
    .X(_0671_));
 sky130_fd_sc_hd__or3_2 _1666_ (.A(_0671_),
    .B(_0611_),
    .C(_0589_),
    .X(_0672_));
 sky130_fd_sc_hd__or3_1 _1667_ (.A(_0653_),
    .B(_0590_),
    .C(_0655_),
    .X(_0673_));
 sky130_fd_sc_hd__a41o_1 _1668_ (.A1(_0661_),
    .A2(_0670_),
    .A3(_0672_),
    .A4(_0673_),
    .B1(_0652_),
    .X(_0674_));
 sky130_fd_sc_hd__o22ai_1 _1669_ (.A1(_0669_),
    .A2(_0665_),
    .B1(_0666_),
    .B2(_0674_),
    .Y(_0373_));
 sky130_fd_sc_hd__clkbuf_1 _1670_ (.A(_0631_),
    .X(_0247_));
 sky130_fd_sc_hd__a311o_1 _1671_ (.A1(_0564_),
    .A2(_0566_),
    .A3(_0560_),
    .B1(\byte_controller.slave_act ),
    .C1(\byte_controller.cmd_ack ),
    .X(_0675_));
 sky130_fd_sc_hd__or2_2 _1672_ (.A(_0650_),
    .B(_0675_),
    .X(_0676_));
 sky130_fd_sc_hd__or2_1 _1673_ (.A(_0635_),
    .B(_0676_),
    .X(_0677_));
 sky130_fd_sc_hd__or2_2 _1674_ (.A(_0557_),
    .B(_0677_),
    .X(_0678_));
 sky130_fd_sc_hd__inv_2 _1675_ (.A(_0678_),
    .Y(_0679_));
 sky130_fd_sc_hd__and2_1 _1676_ (.A(\byte_controller.bit_controller.master_mode ),
    .B(_0663_),
    .X(_0680_));
 sky130_fd_sc_hd__o21a_1 _1677_ (.A1(_0679_),
    .A2(_0680_),
    .B1(_0633_),
    .X(_0372_));
 sky130_fd_sc_hd__clkbuf_2 _1678_ (.A(_0586_),
    .X(_0681_));
 sky130_fd_sc_hd__clkbuf_1 _1679_ (.A(_0681_),
    .X(_0246_));
 sky130_fd_sc_hd__or3_4 _1680_ (.A(_0872_),
    .B(_0907_),
    .C(net6),
    .X(_0682_));
 sky130_fd_sc_hd__clkbuf_2 _1681_ (.A(_0682_),
    .X(_0683_));
 sky130_fd_sc_hd__inv_2 _1682_ (.A(\byte_controller.din[7] ),
    .Y(_0684_));
 sky130_fd_sc_hd__o21ai_2 _1683_ (.A1(_0875_),
    .A2(_0682_),
    .B1(_0876_),
    .Y(_0685_));
 sky130_fd_sc_hd__clkbuf_2 _1684_ (.A(_0685_),
    .X(_0686_));
 sky130_fd_sc_hd__o32a_1 _1685_ (.A1(_0866_),
    .A2(_0563_),
    .A3(_0683_),
    .B1(_0684_),
    .B2(_0686_),
    .X(_0687_));
 sky130_fd_sc_hd__inv_2 _1686_ (.A(_0687_),
    .Y(_0371_));
 sky130_fd_sc_hd__clkbuf_1 _1687_ (.A(_0681_),
    .X(_0245_));
 sky130_fd_sc_hd__inv_2 _1688_ (.A(\byte_controller.din[6] ),
    .Y(_0688_));
 sky130_fd_sc_hd__o32a_1 _1689_ (.A1(_0880_),
    .A2(_0563_),
    .A3(_0683_),
    .B1(_0688_),
    .B2(_0686_),
    .X(_0689_));
 sky130_fd_sc_hd__inv_2 _1690_ (.A(_0689_),
    .Y(_0370_));
 sky130_fd_sc_hd__clkbuf_1 _1691_ (.A(_0681_),
    .X(_0244_));
 sky130_fd_sc_hd__inv_2 _1692_ (.A(\byte_controller.din[5] ),
    .Y(_0690_));
 sky130_fd_sc_hd__o32a_1 _1693_ (.A1(_0884_),
    .A2(_0563_),
    .A3(_0683_),
    .B1(_0690_),
    .B2(_0686_),
    .X(_0691_));
 sky130_fd_sc_hd__inv_2 _1694_ (.A(_0691_),
    .Y(_0369_));
 sky130_fd_sc_hd__clkbuf_1 _1695_ (.A(_0681_),
    .X(_0243_));
 sky130_fd_sc_hd__buf_1 _1696_ (.A(_0682_),
    .X(_0692_));
 sky130_fd_sc_hd__inv_2 _1697_ (.A(\byte_controller.din[4] ),
    .Y(_0693_));
 sky130_fd_sc_hd__o32a_1 _1698_ (.A1(_0887_),
    .A2(_0870_),
    .A3(_0692_),
    .B1(_0693_),
    .B2(_0686_),
    .X(_0694_));
 sky130_fd_sc_hd__inv_2 _1699_ (.A(_0694_),
    .Y(_0368_));
 sky130_fd_sc_hd__clkbuf_1 _1700_ (.A(_0681_),
    .X(_0242_));
 sky130_fd_sc_hd__inv_2 _1701_ (.A(\byte_controller.din[3] ),
    .Y(_0695_));
 sky130_fd_sc_hd__o32a_1 _1702_ (.A1(_0890_),
    .A2(_0692_),
    .A3(_0891_),
    .B1(_0695_),
    .B2(_0686_),
    .X(_0696_));
 sky130_fd_sc_hd__inv_2 _1703_ (.A(_0696_),
    .Y(_0367_));
 sky130_fd_sc_hd__clkbuf_2 _1704_ (.A(_0979_),
    .X(_0697_));
 sky130_fd_sc_hd__clkbuf_2 _1705_ (.A(_0697_),
    .X(_0698_));
 sky130_fd_sc_hd__clkbuf_1 _1706_ (.A(_0698_),
    .X(_0241_));
 sky130_fd_sc_hd__inv_2 _1707_ (.A(\byte_controller.din[2] ),
    .Y(_0699_));
 sky130_fd_sc_hd__o32a_1 _1708_ (.A1(_0895_),
    .A2(_0870_),
    .A3(_0692_),
    .B1(_0699_),
    .B2(_0685_),
    .X(_0700_));
 sky130_fd_sc_hd__inv_2 _1709_ (.A(_0700_),
    .Y(_0366_));
 sky130_fd_sc_hd__clkbuf_1 _1710_ (.A(_0698_),
    .X(_0240_));
 sky130_fd_sc_hd__inv_2 _1711_ (.A(\byte_controller.din[1] ),
    .Y(_0701_));
 sky130_fd_sc_hd__o32a_1 _1712_ (.A1(_0898_),
    .A2(_0870_),
    .A3(_0692_),
    .B1(_0701_),
    .B2(_0685_),
    .X(_0702_));
 sky130_fd_sc_hd__inv_2 _1713_ (.A(_0702_),
    .Y(_0365_));
 sky130_fd_sc_hd__clkbuf_1 _1714_ (.A(_0698_),
    .X(_0239_));
 sky130_fd_sc_hd__inv_2 _1715_ (.A(\byte_controller.din[0] ),
    .Y(_0703_));
 sky130_fd_sc_hd__o32a_1 _1716_ (.A1(_0875_),
    .A2(_0692_),
    .A3(_0902_),
    .B1(_0703_),
    .B2(_0685_),
    .X(_0704_));
 sky130_fd_sc_hd__inv_2 _1717_ (.A(_0704_),
    .Y(_0364_));
 sky130_fd_sc_hd__clkbuf_1 _1718_ (.A(_0698_),
    .X(_0238_));
 sky130_fd_sc_hd__clkbuf_1 _1719_ (.A(_0698_),
    .X(_0237_));
 sky130_fd_sc_hd__buf_1 _1720_ (.A(_0697_),
    .X(_0705_));
 sky130_fd_sc_hd__clkbuf_1 _1721_ (.A(_0705_),
    .X(_0236_));
 sky130_fd_sc_hd__clkbuf_1 _1722_ (.A(_0705_),
    .X(_0235_));
 sky130_fd_sc_hd__clkbuf_1 _1723_ (.A(_0705_),
    .X(_0234_));
 sky130_fd_sc_hd__clkbuf_1 _1724_ (.A(_0705_),
    .X(_0233_));
 sky130_fd_sc_hd__clkbuf_1 _1725_ (.A(_0705_),
    .X(_0232_));
 sky130_fd_sc_hd__buf_1 _1726_ (.A(_0697_),
    .X(_0706_));
 sky130_fd_sc_hd__clkbuf_1 _1727_ (.A(_0706_),
    .X(_0231_));
 sky130_fd_sc_hd__clkbuf_1 _1728_ (.A(_0706_),
    .X(_0230_));
 sky130_fd_sc_hd__clkbuf_1 _1729_ (.A(_0706_),
    .X(_0229_));
 sky130_fd_sc_hd__clkbuf_1 _1730_ (.A(_0706_),
    .X(_0228_));
 sky130_fd_sc_hd__clkbuf_1 _1731_ (.A(_0706_),
    .X(_0227_));
 sky130_fd_sc_hd__buf_1 _1732_ (.A(_0697_),
    .X(_0707_));
 sky130_fd_sc_hd__clkbuf_1 _1733_ (.A(_0707_),
    .X(_0226_));
 sky130_fd_sc_hd__clkbuf_1 _1734_ (.A(_0707_),
    .X(_0225_));
 sky130_fd_sc_hd__clkbuf_1 _1735_ (.A(_0707_),
    .X(_0224_));
 sky130_fd_sc_hd__clkbuf_1 _1736_ (.A(_0707_),
    .X(_0223_));
 sky130_fd_sc_hd__clkbuf_1 _1737_ (.A(_0707_),
    .X(_0222_));
 sky130_fd_sc_hd__clkbuf_2 _1738_ (.A(_0697_),
    .X(_0708_));
 sky130_fd_sc_hd__clkbuf_1 _1739_ (.A(_0708_),
    .X(_0221_));
 sky130_fd_sc_hd__clkbuf_1 _1740_ (.A(_0708_),
    .X(_0220_));
 sky130_fd_sc_hd__clkbuf_1 _1741_ (.A(_0708_),
    .X(_0219_));
 sky130_fd_sc_hd__clkbuf_1 _1742_ (.A(_0708_),
    .X(_0218_));
 sky130_fd_sc_hd__clkbuf_1 _1743_ (.A(_0708_),
    .X(_0217_));
 sky130_fd_sc_hd__clkbuf_2 _1744_ (.A(_0979_),
    .X(_0709_));
 sky130_fd_sc_hd__buf_1 _1745_ (.A(_0709_),
    .X(_0710_));
 sky130_fd_sc_hd__clkbuf_1 _1746_ (.A(_0710_),
    .X(_0216_));
 sky130_fd_sc_hd__clkbuf_1 _1747_ (.A(_0710_),
    .X(_0215_));
 sky130_fd_sc_hd__clkbuf_1 _1748_ (.A(_0710_),
    .X(_0214_));
 sky130_fd_sc_hd__clkbuf_1 _1749_ (.A(_0710_),
    .X(_0213_));
 sky130_fd_sc_hd__clkbuf_1 _1750_ (.A(_0710_),
    .X(_0212_));
 sky130_fd_sc_hd__buf_1 _1751_ (.A(_0709_),
    .X(_0711_));
 sky130_fd_sc_hd__clkbuf_1 _1752_ (.A(_0711_),
    .X(_0211_));
 sky130_fd_sc_hd__clkbuf_1 _1753_ (.A(_0711_),
    .X(_0210_));
 sky130_fd_sc_hd__clkbuf_1 _1754_ (.A(_0711_),
    .X(_0209_));
 sky130_fd_sc_hd__clkbuf_1 _1755_ (.A(_0711_),
    .X(_0208_));
 sky130_fd_sc_hd__clkbuf_1 _1756_ (.A(_0711_),
    .X(_0207_));
 sky130_fd_sc_hd__clkbuf_2 _1757_ (.A(_0709_),
    .X(_0712_));
 sky130_fd_sc_hd__clkbuf_1 _1758_ (.A(_0712_),
    .X(_0206_));
 sky130_fd_sc_hd__clkbuf_1 _1759_ (.A(_0712_),
    .X(_0205_));
 sky130_fd_sc_hd__clkbuf_1 _1760_ (.A(_0712_),
    .X(_0204_));
 sky130_fd_sc_hd__clkbuf_1 _1761_ (.A(_0712_),
    .X(_0203_));
 sky130_fd_sc_hd__clkbuf_1 _1762_ (.A(_0712_),
    .X(_0202_));
 sky130_fd_sc_hd__clkbuf_2 _1763_ (.A(_0709_),
    .X(_0713_));
 sky130_fd_sc_hd__clkbuf_1 _1764_ (.A(_0713_),
    .X(_0201_));
 sky130_fd_sc_hd__clkbuf_1 _1765_ (.A(_0713_),
    .X(_0200_));
 sky130_fd_sc_hd__clkbuf_1 _1766_ (.A(_0713_),
    .X(_0199_));
 sky130_fd_sc_hd__clkbuf_1 _1767_ (.A(_0713_),
    .X(_0198_));
 sky130_fd_sc_hd__clkbuf_1 _1768_ (.A(_0713_),
    .X(_0197_));
 sky130_fd_sc_hd__buf_1 _1769_ (.A(_0709_),
    .X(_0714_));
 sky130_fd_sc_hd__clkbuf_1 _1770_ (.A(_0714_),
    .X(_0196_));
 sky130_fd_sc_hd__clkbuf_1 _1771_ (.A(_0714_),
    .X(_0195_));
 sky130_fd_sc_hd__clkbuf_1 _1772_ (.A(_0714_),
    .X(_0194_));
 sky130_fd_sc_hd__clkbuf_1 _1773_ (.A(_0714_),
    .X(_0193_));
 sky130_fd_sc_hd__clkbuf_1 _1774_ (.A(_0714_),
    .X(_0192_));
 sky130_fd_sc_hd__buf_1 _1775_ (.A(_0925_),
    .X(_0715_));
 sky130_fd_sc_hd__clkbuf_1 _1776_ (.A(_0715_),
    .X(_0191_));
 sky130_fd_sc_hd__clkbuf_1 _1777_ (.A(_0715_),
    .X(_0190_));
 sky130_fd_sc_hd__clkbuf_1 _1778_ (.A(_0715_),
    .X(_0189_));
 sky130_fd_sc_hd__clkbuf_1 _1779_ (.A(_0715_),
    .X(_0188_));
 sky130_fd_sc_hd__clkbuf_1 _1780_ (.A(_0715_),
    .X(_0187_));
 sky130_fd_sc_hd__clkbuf_2 _1781_ (.A(_0925_),
    .X(_0716_));
 sky130_fd_sc_hd__clkbuf_1 _1782_ (.A(_0716_),
    .X(_0186_));
 sky130_fd_sc_hd__clkbuf_1 _1783_ (.A(_0716_),
    .X(_0185_));
 sky130_fd_sc_hd__clkbuf_1 _1784_ (.A(_0716_),
    .X(_0184_));
 sky130_fd_sc_hd__clkbuf_1 _1785_ (.A(_0716_),
    .X(_0183_));
 sky130_fd_sc_hd__clkbuf_1 _1786_ (.A(_0716_),
    .X(_0182_));
 sky130_fd_sc_hd__clkbuf_2 _1787_ (.A(_0925_),
    .X(_0717_));
 sky130_fd_sc_hd__clkbuf_1 _1788_ (.A(_0717_),
    .X(_0181_));
 sky130_fd_sc_hd__clkbuf_1 _1789_ (.A(_0717_),
    .X(_0180_));
 sky130_fd_sc_hd__clkbuf_1 _1790_ (.A(_0717_),
    .X(_0179_));
 sky130_fd_sc_hd__clkbuf_1 _1791_ (.A(_0717_),
    .X(_0178_));
 sky130_fd_sc_hd__clkbuf_1 _1792_ (.A(_0717_),
    .X(_0177_));
 sky130_fd_sc_hd__clkbuf_2 _1793_ (.A(_0925_),
    .X(_0718_));
 sky130_fd_sc_hd__clkbuf_1 _1794_ (.A(_0718_),
    .X(_0176_));
 sky130_fd_sc_hd__clkbuf_1 _1795_ (.A(_0718_),
    .X(_0175_));
 sky130_fd_sc_hd__clkbuf_1 _1796_ (.A(_0718_),
    .X(_0174_));
 sky130_fd_sc_hd__clkbuf_1 _1797_ (.A(_0718_),
    .X(_0173_));
 sky130_fd_sc_hd__clkbuf_1 _1798_ (.A(_0718_),
    .X(_0172_));
 sky130_fd_sc_hd__mux2_1 _1799_ (.A0(\byte_controller.bit_controller.dout ),
    .A1(\byte_controller.bit_controller.sSDA ),
    .S(_0529_),
    .X(_0363_));
 sky130_fd_sc_hd__or2_1 _1800_ (.A(\byte_controller.c_state[9] ),
    .B(\byte_controller.c_state[8] ),
    .X(_0719_));
 sky130_fd_sc_hd__inv_2 _1801_ (.A(\byte_controller.bit_controller.cmd_ack ),
    .Y(_0720_));
 sky130_fd_sc_hd__buf_1 _1802_ (.A(_0720_),
    .X(_0721_));
 sky130_fd_sc_hd__or2_2 _1803_ (.A(_0721_),
    .B(_0603_),
    .X(_0722_));
 sky130_fd_sc_hd__inv_2 _1804_ (.A(_0722_),
    .Y(_0723_));
 sky130_fd_sc_hd__inv_2 _1805_ (.A(_0629_),
    .Y(_0724_));
 sky130_fd_sc_hd__a31o_1 _1806_ (.A1(_0591_),
    .A2(_0719_),
    .A3(_0723_),
    .B1(_0724_),
    .X(_0021_));
 sky130_fd_sc_hd__and3_1 _1807_ (.A(_0720_),
    .B(\byte_controller.c_state[8] ),
    .C(_0609_),
    .X(_0725_));
 sky130_fd_sc_hd__and3_1 _1808_ (.A(_0654_),
    .B(_0723_),
    .C(\byte_controller.c_state[8] ),
    .X(_0726_));
 sky130_fd_sc_hd__or2_1 _1809_ (.A(\byte_controller.start ),
    .B(_0634_),
    .X(_0727_));
 sky130_fd_sc_hd__clkbuf_2 _1810_ (.A(_0721_),
    .X(_0728_));
 sky130_fd_sc_hd__inv_2 _1811_ (.A(\byte_controller.c_state[10] ),
    .Y(_0729_));
 sky130_fd_sc_hd__o32a_1 _1812_ (.A1(_0566_),
    .A2(_0727_),
    .A3(_0676_),
    .B1(_0728_),
    .B2(_0729_),
    .X(_0730_));
 sky130_fd_sc_hd__or3_1 _1813_ (.A(\byte_controller.read ),
    .B(_0626_),
    .C(_0730_),
    .X(_0731_));
 sky130_fd_sc_hd__or3b_2 _1814_ (.A(_0725_),
    .B(_0726_),
    .C_N(_0731_),
    .X(_0022_));
 sky130_fd_sc_hd__clkbuf_2 _1815_ (.A(\byte_controller.bit_controller.cmd_ack ),
    .X(_0732_));
 sky130_fd_sc_hd__inv_2 _1816_ (.A(\byte_controller.c_state[9] ),
    .Y(_0733_));
 sky130_fd_sc_hd__clkbuf_2 _1817_ (.A(_0652_),
    .X(_0734_));
 sky130_fd_sc_hd__or4_4 _1818_ (.A(_0721_),
    .B(_0729_),
    .C(_0564_),
    .D(_0626_),
    .X(_0735_));
 sky130_fd_sc_hd__or2_1 _1819_ (.A(_0603_),
    .B(_0676_),
    .X(_0736_));
 sky130_fd_sc_hd__or3_1 _1820_ (.A(_0564_),
    .B(_0727_),
    .C(_0736_),
    .X(_0737_));
 sky130_fd_sc_hd__o311a_1 _1821_ (.A1(_0591_),
    .A2(_0722_),
    .A3(_0733_),
    .B1(_0735_),
    .C1(_0737_),
    .X(_0738_));
 sky130_fd_sc_hd__o31ai_1 _1822_ (.A1(_0732_),
    .A2(_0733_),
    .A3(_0734_),
    .B1(_0738_),
    .Y(_0023_));
 sky130_fd_sc_hd__a32o_1 _1823_ (.A1(_0728_),
    .A2(\byte_controller.c_state[10] ),
    .A3(_0632_),
    .B1(_0632_),
    .B2(_0679_),
    .X(_0015_));
 sky130_fd_sc_hd__inv_2 _1824_ (.A(\byte_controller.c_state[6] ),
    .Y(_0739_));
 sky130_fd_sc_hd__or3_1 _1825_ (.A(\byte_controller.read ),
    .B(\byte_controller.write ),
    .C(_0727_),
    .X(_0740_));
 sky130_fd_sc_hd__o32a_2 _1826_ (.A1(_0561_),
    .A2(_0628_),
    .A3(_0722_),
    .B1(_0736_),
    .B2(_0740_),
    .X(_0741_));
 sky130_fd_sc_hd__o31ai_1 _1827_ (.A1(_0732_),
    .A2(_0739_),
    .A3(_0652_),
    .B1(_0741_),
    .Y(_0020_));
 sky130_fd_sc_hd__clkbuf_2 _1828_ (.A(\byte_controller.bit_controller.sSCL ),
    .X(_0742_));
 sky130_fd_sc_hd__inv_2 _1829_ (.A(_0526_),
    .Y(_0743_));
 sky130_fd_sc_hd__nor2_1 _1830_ (.A(\byte_controller.bit_controller.sSCL ),
    .B(_0569_),
    .Y(_0744_));
 sky130_fd_sc_hd__o221a_1 _1831_ (.A1(_0742_),
    .A2(_0743_),
    .B1(\byte_controller.bit_controller.slave_state[4] ),
    .B2(_0744_),
    .C1(_0572_),
    .X(_0012_));
 sky130_fd_sc_hd__inv_2 _1832_ (.A(\byte_controller.bit_controller.slave_cmd[1] ),
    .Y(_0745_));
 sky130_fd_sc_hd__o221a_1 _1833_ (.A1(_0573_),
    .A2(\byte_controller.bit_controller.slave_cmd[1] ),
    .B1(\byte_controller.bit_controller.slave_cmd[0] ),
    .B2(_0745_),
    .C1(\byte_controller.bit_controller.slave_state[0] ),
    .X(_0746_));
 sky130_fd_sc_hd__or3_1 _1834_ (.A(\byte_controller.bit_controller.slave_state[6] ),
    .B(_0570_),
    .C(_0746_),
    .X(_0009_));
 sky130_fd_sc_hd__inv_2 _1835_ (.A(\byte_controller.bit_controller.slave_state[3] ),
    .Y(_0747_));
 sky130_fd_sc_hd__o32a_1 _1836_ (.A1(\byte_controller.bit_controller.slave_cmd[0] ),
    .A2(_0745_),
    .A3(_0568_),
    .B1(_0747_),
    .B2(_0529_),
    .X(_0748_));
 sky130_fd_sc_hd__nor2_1 _1837_ (.A(_0570_),
    .B(_0748_),
    .Y(_0011_));
 sky130_fd_sc_hd__o21a_1 _1838_ (.A1(\byte_controller.bit_controller.sSCL ),
    .A2(_0743_),
    .B1(\byte_controller.bit_controller.slave_state[2] ),
    .X(_0749_));
 sky130_fd_sc_hd__a21oi_1 _1839_ (.A1(\byte_controller.bit_controller.slave_state[3] ),
    .A2(_0529_),
    .B1(_0749_),
    .Y(_0750_));
 sky130_fd_sc_hd__nor2_1 _1840_ (.A(_0570_),
    .B(_0750_),
    .Y(_0010_));
 sky130_fd_sc_hd__inv_2 _1841_ (.A(\byte_controller.c_state[8] ),
    .Y(_0751_));
 sky130_fd_sc_hd__and4_1 _1842_ (.A(_0628_),
    .B(_0739_),
    .C(_0751_),
    .D(_0729_),
    .X(_0752_));
 sky130_fd_sc_hd__o211a_1 _1843_ (.A1(\byte_controller.c_state[7] ),
    .A2(\byte_controller.c_state[6] ),
    .B1(_0609_),
    .C1(_0721_),
    .X(_0753_));
 sky130_fd_sc_hd__a41o_1 _1844_ (.A1(_0733_),
    .A2(_0635_),
    .A3(_0752_),
    .A4(_0623_),
    .B1(_0753_),
    .X(_0754_));
 sky130_fd_sc_hd__a31o_1 _1845_ (.A1(\byte_controller.c_state[0] ),
    .A2(_0623_),
    .A3(_0676_),
    .B1(_0754_),
    .X(_0755_));
 sky130_fd_sc_hd__a31o_1 _1846_ (.A1(_0720_),
    .A2(\byte_controller.c_state[9] ),
    .A3(_0609_),
    .B1(_0725_),
    .X(_0756_));
 sky130_fd_sc_hd__a31o_1 _1847_ (.A1(_0721_),
    .A2(\byte_controller.c_state[10] ),
    .A3(_0623_),
    .B1(_0756_),
    .X(_0757_));
 sky130_fd_sc_hd__nor2_2 _1848_ (.A(_0755_),
    .B(_0757_),
    .Y(_0758_));
 sky130_fd_sc_hd__o22ai_1 _1849_ (.A1(_0734_),
    .A2(_0678_),
    .B1(_0515_),
    .B2(_0758_),
    .Y(_0027_));
 sky130_fd_sc_hd__o21ai_1 _1850_ (.A1(_0512_),
    .A2(_0758_),
    .B1(_0741_),
    .Y(_0026_));
 sky130_fd_sc_hd__nor2_2 _1851_ (.A(_0653_),
    .B(_0654_),
    .Y(_0759_));
 sky130_fd_sc_hd__a21oi_1 _1852_ (.A1(_0660_),
    .A2(_0759_),
    .B1(_0664_),
    .Y(_0760_));
 sky130_fd_sc_hd__o21ai_1 _1853_ (.A1(_0734_),
    .A2(_0760_),
    .B1(_0612_),
    .Y(_0019_));
 sky130_fd_sc_hd__inv_2 _1854_ (.A(_0757_),
    .Y(_0761_));
 sky130_fd_sc_hd__o32a_1 _1855_ (.A1(_0751_),
    .A2(_0654_),
    .A3(_0722_),
    .B1(_0510_),
    .B2(_0761_),
    .X(_0762_));
 sky130_fd_sc_hd__nand2_1 _1856_ (.A(_0738_),
    .B(_0762_),
    .Y(_0763_));
 sky130_fd_sc_hd__a21o_1 _1857_ (.A1(\byte_controller.core_cmd[1] ),
    .A2(_0755_),
    .B1(_0763_),
    .X(_0024_));
 sky130_fd_sc_hd__a31oi_1 _1858_ (.A1(\byte_controller.c_state[9] ),
    .A2(_0591_),
    .A3(_0723_),
    .B1(_0726_),
    .Y(_0764_));
 sky130_fd_sc_hd__o211ai_1 _1859_ (.A1(_0493_),
    .A2(_0758_),
    .B1(_0731_),
    .C1(_0764_),
    .Y(_0025_));
 sky130_fd_sc_hd__clkbuf_2 _1860_ (.A(_0652_),
    .X(_0765_));
 sky130_fd_sc_hd__o21a_1 _1861_ (.A1(_0655_),
    .A2(_0759_),
    .B1(_0670_),
    .X(_0766_));
 sky130_fd_sc_hd__nor2_1 _1862_ (.A(_0765_),
    .B(_0766_),
    .Y(_0018_));
 sky130_fd_sc_hd__o22a_1 _1863_ (.A1(\byte_controller.bit_controller.slave_adr[0] ),
    .A2(_0657_),
    .B1(_0671_),
    .B2(_0759_),
    .X(_0767_));
 sky130_fd_sc_hd__nor2_1 _1864_ (.A(_0765_),
    .B(_0767_),
    .Y(_0017_));
 sky130_fd_sc_hd__a32o_1 _1865_ (.A1(_0934_),
    .A2(\byte_controller.c_state[2] ),
    .A3(_0632_),
    .B1(_0605_),
    .B2(_0033_),
    .X(_0016_));
 sky130_fd_sc_hd__o21ai_1 _1866_ (.A1(_0728_),
    .A2(_0739_),
    .B1(_0632_),
    .Y(_0768_));
 sky130_fd_sc_hd__a31o_1 _1867_ (.A1(_0561_),
    .A2(\byte_controller.bit_controller.cmd_ack ),
    .A3(\byte_controller.c_state[7] ),
    .B1(_0768_),
    .X(_0769_));
 sky130_fd_sc_hd__a311o_1 _1868_ (.A1(\byte_controller.c_state[0] ),
    .A2(_0662_),
    .A3(_0675_),
    .B1(_0607_),
    .C1(_0769_),
    .X(_0014_));
 sky130_fd_sc_hd__clkbuf_2 _1869_ (.A(_0939_),
    .X(_0770_));
 sky130_fd_sc_hd__and3_1 _1870_ (.A(\ctr[6] ),
    .B(_0770_),
    .C(irq_flag),
    .X(_0005_));
 sky130_fd_sc_hd__or4_4 _1871_ (.A(\byte_controller.slave_dat_avail ),
    .B(\byte_controller.slave_dat_req ),
    .C(irq_flag),
    .D(\byte_controller.slave_cmd_ack ),
    .X(_0771_));
 sky130_fd_sc_hd__o311a_1 _1872_ (.A1(\byte_controller.bit_controller.al ),
    .A2(\byte_controller.cmd_ack ),
    .A3(_0771_),
    .B1(_0936_),
    .C1(_0940_),
    .X(_0001_));
 sky130_fd_sc_hd__buf_2 _1873_ (.A(_0939_),
    .X(_0772_));
 sky130_fd_sc_hd__o21a_1 _1874_ (.A1(\byte_controller.read ),
    .A2(\byte_controller.write ),
    .B1(_0772_),
    .X(_0003_));
 sky130_fd_sc_hd__and2_1 _1875_ (.A(\byte_controller.ack_out ),
    .B(_0940_),
    .X(_0002_));
 sky130_fd_sc_hd__a21oi_1 _1876_ (.A1(_0557_),
    .A2(al),
    .B1(\byte_controller.bit_controller.al ),
    .Y(_0773_));
 sky130_fd_sc_hd__nor2_1 _1877_ (.A(_0978_),
    .B(_0773_),
    .Y(_0000_));
 sky130_fd_sc_hd__o2111a_1 _1878_ (.A1(\byte_controller.bit_controller.slave_state[4] ),
    .A2(\byte_controller.bit_controller.slave_state[2] ),
    .B1(_0942_),
    .C1(_0526_),
    .D1(_0572_),
    .X(_0043_));
 sky130_fd_sc_hd__and4_1 _1879_ (.A(_0525_),
    .B(_0535_),
    .C(\byte_controller.bit_controller.slave_act ),
    .D(_0523_),
    .X(_0079_));
 sky130_fd_sc_hd__and3_1 _1880_ (.A(\byte_controller.bit_controller.clk_en ),
    .B(_1026_),
    .C(_0503_),
    .X(_0042_));
 sky130_fd_sc_hd__and3_1 _1881_ (.A(\byte_controller.bit_controller.sda_chk ),
    .B(_0553_),
    .C(net22),
    .X(_0774_));
 sky130_fd_sc_hd__and3b_1 _1882_ (.A_N(\byte_controller.bit_controller.cmd_stop ),
    .B(\byte_controller.bit_controller.sto_condition ),
    .C(_0998_),
    .X(_0775_));
 sky130_fd_sc_hd__o21a_1 _1883_ (.A1(_0774_),
    .A2(_0775_),
    .B1(_0772_),
    .X(_0036_));
 sky130_fd_sc_hd__o211a_1 _1884_ (.A1(_0519_),
    .A2(\byte_controller.bit_controller.busy ),
    .B1(_0770_),
    .C1(_0525_),
    .X(_0037_));
 sky130_fd_sc_hd__and4b_1 _1885_ (.A_N(\byte_controller.bit_controller.dSDA ),
    .B(_0939_),
    .C(\byte_controller.bit_controller.sSDA ),
    .D(_0742_),
    .X(_0082_));
 sky130_fd_sc_hd__and4_1 _1886_ (.A(_0742_),
    .B(_0585_),
    .C(_0553_),
    .D(\byte_controller.bit_controller.dSDA ),
    .X(_0081_));
 sky130_fd_sc_hd__inv_2 _1887_ (.A(\byte_controller.bit_controller.clk_cnt[2] ),
    .Y(_0083_));
 sky130_fd_sc_hd__clkbuf_2 _1888_ (.A(_0943_),
    .X(_0776_));
 sky130_fd_sc_hd__nor2_1 _1889_ (.A(_0084_),
    .B(_0776_),
    .Y(_0062_));
 sky130_fd_sc_hd__a21bo_1 _1890_ (.A1(\byte_controller.bit_controller.filter_cnt[1] ),
    .A2(\byte_controller.bit_controller.filter_cnt[0] ),
    .B1_N(_0967_),
    .X(_0085_));
 sky130_fd_sc_hd__buf_1 _1891_ (.A(\byte_controller.bit_controller.ena ),
    .X(_0777_));
 sky130_fd_sc_hd__and3_1 _1892_ (.A(_0777_),
    .B(_0770_),
    .C(_0086_),
    .X(_0067_));
 sky130_fd_sc_hd__a21bo_1 _1893_ (.A1(\byte_controller.bit_controller.filter_cnt[2] ),
    .A2(_0967_),
    .B1_N(_0968_),
    .X(_0087_));
 sky130_fd_sc_hd__and3_1 _1894_ (.A(_0777_),
    .B(_0770_),
    .C(_0088_),
    .X(_0068_));
 sky130_fd_sc_hd__a21bo_1 _1895_ (.A1(\byte_controller.bit_controller.filter_cnt[3] ),
    .A2(_0968_),
    .B1_N(_0969_),
    .X(_0089_));
 sky130_fd_sc_hd__and3_1 _1896_ (.A(_0777_),
    .B(_0770_),
    .C(_0090_),
    .X(_0069_));
 sky130_fd_sc_hd__or2_1 _1897_ (.A(\byte_controller.bit_controller.filter_cnt[4] ),
    .B(_0969_),
    .X(_0778_));
 sky130_fd_sc_hd__a21bo_1 _1898_ (.A1(\byte_controller.bit_controller.filter_cnt[4] ),
    .A2(_0969_),
    .B1_N(_0778_),
    .X(_0091_));
 sky130_fd_sc_hd__and3_1 _1899_ (.A(_0777_),
    .B(_0856_),
    .C(_0092_),
    .X(_0070_));
 sky130_fd_sc_hd__a21bo_1 _1900_ (.A1(\byte_controller.bit_controller.filter_cnt[5] ),
    .A2(_0778_),
    .B1_N(_0970_),
    .X(_0093_));
 sky130_fd_sc_hd__and3_1 _1901_ (.A(_0777_),
    .B(_0856_),
    .C(_0094_),
    .X(_0071_));
 sky130_fd_sc_hd__a21bo_1 _1902_ (.A1(\byte_controller.bit_controller.filter_cnt[6] ),
    .A2(_0970_),
    .B1_N(_0971_),
    .X(_0095_));
 sky130_fd_sc_hd__and3_1 _1903_ (.A(\byte_controller.bit_controller.ena ),
    .B(_0856_),
    .C(_0096_),
    .X(_0072_));
 sky130_fd_sc_hd__inv_2 _1904_ (.A(\byte_controller.bit_controller.clk_cnt[9] ),
    .Y(_0097_));
 sky130_fd_sc_hd__a21boi_1 _1905_ (.A1(\byte_controller.bit_controller.filter_cnt[7] ),
    .A2(_0971_),
    .B1_N(_0972_),
    .Y(_0098_));
 sky130_fd_sc_hd__nor2_1 _1906_ (.A(_0099_),
    .B(_0776_),
    .Y(_0073_));
 sky130_fd_sc_hd__nor2_1 _1907_ (.A(\byte_controller.bit_controller.filter_cnt[8] ),
    .B(_0972_),
    .Y(_0779_));
 sky130_fd_sc_hd__a21o_1 _1908_ (.A1(\byte_controller.bit_controller.filter_cnt[8] ),
    .A2(_0972_),
    .B1(_0779_),
    .X(_0100_));
 sky130_fd_sc_hd__and3_1 _1909_ (.A(\byte_controller.bit_controller.ena ),
    .B(_0856_),
    .C(_0101_),
    .X(_0074_));
 sky130_fd_sc_hd__inv_2 _1910_ (.A(\byte_controller.bit_controller.clk_cnt[11] ),
    .Y(_0102_));
 sky130_fd_sc_hd__inv_2 _1911_ (.A(\byte_controller.bit_controller.filter_cnt[9] ),
    .Y(_0780_));
 sky130_fd_sc_hd__or3_4 _1912_ (.A(\byte_controller.bit_controller.filter_cnt[9] ),
    .B(\byte_controller.bit_controller.filter_cnt[8] ),
    .C(_0972_),
    .X(_0781_));
 sky130_fd_sc_hd__o21a_1 _1913_ (.A1(_0780_),
    .A2(_0779_),
    .B1(_0781_),
    .X(_0103_));
 sky130_fd_sc_hd__nor2_1 _1914_ (.A(_0104_),
    .B(_0776_),
    .Y(_0075_));
 sky130_fd_sc_hd__inv_2 _1915_ (.A(\byte_controller.bit_controller.clk_cnt[12] ),
    .Y(_0105_));
 sky130_fd_sc_hd__a2bb2oi_1 _1916_ (.A1_N(\byte_controller.bit_controller.filter_cnt[10] ),
    .A2_N(_0781_),
    .B1(\byte_controller.bit_controller.filter_cnt[10] ),
    .B2(_0781_),
    .Y(_0106_));
 sky130_fd_sc_hd__nor2_1 _1917_ (.A(_0107_),
    .B(_0776_),
    .Y(_0063_));
 sky130_fd_sc_hd__inv_2 _1918_ (.A(\byte_controller.bit_controller.clk_cnt[13] ),
    .Y(_0108_));
 sky130_fd_sc_hd__o21a_1 _1919_ (.A1(\byte_controller.bit_controller.filter_cnt[10] ),
    .A2(_0781_),
    .B1(\byte_controller.bit_controller.filter_cnt[11] ),
    .X(_0782_));
 sky130_fd_sc_hd__nor2b_1 _1920_ (.A(_0782_),
    .B_N(_0973_),
    .Y(_0109_));
 sky130_fd_sc_hd__nor2_1 _1921_ (.A(_0110_),
    .B(_0776_),
    .Y(_0064_));
 sky130_fd_sc_hd__inv_2 _1922_ (.A(\byte_controller.bit_controller.clk_cnt[14] ),
    .Y(_0111_));
 sky130_fd_sc_hd__a21boi_1 _1923_ (.A1(\byte_controller.bit_controller.filter_cnt[12] ),
    .A2(_0973_),
    .B1_N(_0974_),
    .Y(_0112_));
 sky130_fd_sc_hd__nor2_1 _1924_ (.A(_0113_),
    .B(_0943_),
    .Y(_0065_));
 sky130_fd_sc_hd__inv_2 _1925_ (.A(\byte_controller.bit_controller.clk_cnt[15] ),
    .Y(_0114_));
 sky130_fd_sc_hd__a21oi_1 _1926_ (.A1(\byte_controller.bit_controller.filter_cnt[13] ),
    .A2(_0974_),
    .B1(_0168_),
    .Y(_0115_));
 sky130_fd_sc_hd__nor2_1 _1927_ (.A(_0116_),
    .B(_0943_),
    .Y(_0066_));
 sky130_fd_sc_hd__and2_1 _1928_ (.A(_0772_),
    .B(net3),
    .X(_0040_));
 sky130_fd_sc_hd__and2_1 _1929_ (.A(_0772_),
    .B(\byte_controller.bit_controller.cSDA[0] ),
    .X(_0041_));
 sky130_fd_sc_hd__and2_1 _1930_ (.A(_0772_),
    .B(net2),
    .X(_0038_));
 sky130_fd_sc_hd__and2_1 _1931_ (.A(_0940_),
    .B(\byte_controller.bit_controller.cSCL[0] ),
    .X(_0039_));
 sky130_fd_sc_hd__inv_2 _1932_ (.A(\byte_controller.bit_controller.cnt[0] ),
    .Y(_0117_));
 sky130_fd_sc_hd__a21bo_1 _1933_ (.A1(\byte_controller.bit_controller.cnt[1] ),
    .A2(\byte_controller.bit_controller.cnt[0] ),
    .B1_N(_0946_),
    .X(_0118_));
 sky130_fd_sc_hd__a21bo_1 _1934_ (.A1(\byte_controller.bit_controller.cnt[2] ),
    .A2(_0946_),
    .B1_N(_0947_),
    .X(_0119_));
 sky130_fd_sc_hd__a21bo_1 _1935_ (.A1(\byte_controller.bit_controller.cnt[3] ),
    .A2(_0947_),
    .B1_N(_0948_),
    .X(_0120_));
 sky130_fd_sc_hd__nor2_1 _1936_ (.A(\byte_controller.bit_controller.cnt[4] ),
    .B(_0948_),
    .Y(_0783_));
 sky130_fd_sc_hd__a21o_1 _1937_ (.A1(\byte_controller.bit_controller.cnt[4] ),
    .A2(_0948_),
    .B1(_0783_),
    .X(_0121_));
 sky130_fd_sc_hd__inv_2 _1938_ (.A(\byte_controller.bit_controller.cnt[5] ),
    .Y(_0784_));
 sky130_fd_sc_hd__o21ai_1 _1939_ (.A1(_0784_),
    .A2(_0783_),
    .B1(_0949_),
    .Y(_0122_));
 sky130_fd_sc_hd__a21bo_1 _1940_ (.A1(\byte_controller.bit_controller.cnt[6] ),
    .A2(_0949_),
    .B1_N(_0950_),
    .X(_0123_));
 sky130_fd_sc_hd__a21bo_1 _1941_ (.A1(\byte_controller.bit_controller.cnt[7] ),
    .A2(_0950_),
    .B1_N(_0951_),
    .X(_0124_));
 sky130_fd_sc_hd__or2_1 _1942_ (.A(\byte_controller.bit_controller.cnt[8] ),
    .B(_0951_),
    .X(_0785_));
 sky130_fd_sc_hd__a21bo_1 _1943_ (.A1(\byte_controller.bit_controller.cnt[8] ),
    .A2(_0951_),
    .B1_N(_0785_),
    .X(_0125_));
 sky130_fd_sc_hd__or2_1 _1944_ (.A(\byte_controller.bit_controller.cnt[9] ),
    .B(_0785_),
    .X(_0786_));
 sky130_fd_sc_hd__a21bo_1 _1945_ (.A1(\byte_controller.bit_controller.cnt[9] ),
    .A2(_0785_),
    .B1_N(_0786_),
    .X(_0126_));
 sky130_fd_sc_hd__nor2_1 _1946_ (.A(\byte_controller.bit_controller.cnt[10] ),
    .B(_0786_),
    .Y(_0787_));
 sky130_fd_sc_hd__a21o_1 _1947_ (.A1(\byte_controller.bit_controller.cnt[10] ),
    .A2(_0786_),
    .B1(_0787_),
    .X(_0127_));
 sky130_fd_sc_hd__inv_2 _1948_ (.A(\byte_controller.bit_controller.cnt[11] ),
    .Y(_0788_));
 sky130_fd_sc_hd__o21ai_1 _1949_ (.A1(_0788_),
    .A2(_0787_),
    .B1(_0952_),
    .Y(_0128_));
 sky130_fd_sc_hd__or2_1 _1950_ (.A(\byte_controller.bit_controller.cnt[12] ),
    .B(_0952_),
    .X(_0789_));
 sky130_fd_sc_hd__a21bo_1 _1951_ (.A1(\byte_controller.bit_controller.cnt[12] ),
    .A2(_0952_),
    .B1_N(_0789_),
    .X(_0129_));
 sky130_fd_sc_hd__or2_1 _1952_ (.A(\byte_controller.bit_controller.cnt[13] ),
    .B(_0789_),
    .X(_0790_));
 sky130_fd_sc_hd__a21bo_1 _1953_ (.A1(\byte_controller.bit_controller.cnt[13] ),
    .A2(_0789_),
    .B1_N(_0790_),
    .X(_0130_));
 sky130_fd_sc_hd__nor2_1 _1954_ (.A(\byte_controller.bit_controller.cnt[14] ),
    .B(_0790_),
    .Y(_0791_));
 sky130_fd_sc_hd__a21o_1 _1955_ (.A1(\byte_controller.bit_controller.cnt[14] ),
    .A2(_0790_),
    .B1(_0791_),
    .X(_0131_));
 sky130_fd_sc_hd__inv_2 _1956_ (.A(\byte_controller.bit_controller.cnt[15] ),
    .Y(_0792_));
 sky130_fd_sc_hd__o21ai_1 _1957_ (.A1(_0792_),
    .A2(_0791_),
    .B1(_0953_),
    .Y(_0132_));
 sky130_fd_sc_hd__and2_1 _1958_ (.A(\byte_controller.bit_controller.dout ),
    .B(\byte_controller.shift ),
    .X(_0133_));
 sky130_fd_sc_hd__inv_2 _1959_ (.A(\byte_controller.dout[7] ),
    .Y(_0149_));
 sky130_fd_sc_hd__and4b_1 _1960_ (.A_N(_0627_),
    .B(_0635_),
    .C(_0671_),
    .D(_0733_),
    .X(_0150_));
 sky130_fd_sc_hd__or2_1 _1961_ (.A(_0149_),
    .B(_0591_),
    .X(_0152_));
 sky130_fd_sc_hd__nor2_1 _1962_ (.A(\byte_controller.ack_in ),
    .B(_0732_),
    .Y(_0793_));
 sky130_fd_sc_hd__o21a_1 _1963_ (.A1(_0601_),
    .A2(_0653_),
    .B1(_0651_),
    .X(_0794_));
 sky130_fd_sc_hd__o2bb2a_1 _1964_ (.A1_N(\byte_controller.c_state[9] ),
    .A2_N(_0151_),
    .B1(_0671_),
    .B2(_0153_),
    .X(_0795_));
 sky130_fd_sc_hd__o221a_1 _1965_ (.A1(_0628_),
    .A2(_0793_),
    .B1(_0149_),
    .B2(_0794_),
    .C1(_0795_),
    .X(_0154_));
 sky130_fd_sc_hd__nor2_1 _1966_ (.A(_0155_),
    .B(_0765_),
    .Y(_0030_));
 sky130_fd_sc_hd__o211ai_1 _1967_ (.A1(\byte_controller.c_state[8] ),
    .A2(\byte_controller.c_state[4] ),
    .B1(_0156_),
    .C1(_0654_),
    .Y(_0796_));
 sky130_fd_sc_hd__o221a_1 _1968_ (.A1(_0671_),
    .A2(_0653_),
    .B1(_0728_),
    .B2(_0733_),
    .C1(_0796_),
    .X(_0797_));
 sky130_fd_sc_hd__nor2_1 _1969_ (.A(_0734_),
    .B(_0797_),
    .Y(_0032_));
 sky130_fd_sc_hd__o221a_1 _1970_ (.A1(_0934_),
    .A2(_0608_),
    .B1(_0728_),
    .B2(_0729_),
    .C1(_0677_),
    .X(_0798_));
 sky130_fd_sc_hd__nor2_1 _1971_ (.A(_0734_),
    .B(_0798_),
    .Y(_0031_));
 sky130_fd_sc_hd__a22o_1 _1972_ (.A1(_0561_),
    .A2(_0732_),
    .B1(_0732_),
    .B2(\byte_controller.c_state[6] ),
    .X(_0799_));
 sky130_fd_sc_hd__o211a_1 _1973_ (.A1(\byte_controller.c_state[7] ),
    .A2(\byte_controller.c_state[6] ),
    .B1(_0633_),
    .C1(_0799_),
    .X(_0029_));
 sky130_fd_sc_hd__nor2_1 _1974_ (.A(_0669_),
    .B(_0765_),
    .Y(_0034_));
 sky130_fd_sc_hd__nor2_1 _1975_ (.A(_0667_),
    .B(_0765_),
    .Y(_0035_));
 sky130_fd_sc_hd__clkbuf_4 _1976_ (.A(_0874_),
    .X(_0800_));
 sky130_fd_sc_hd__or3_4 _1977_ (.A(_0872_),
    .B(net4),
    .C(_0859_),
    .X(_0801_));
 sky130_fd_sc_hd__dlymetal6s2s_1 _1978_ (.A(_0801_),
    .X(_0802_));
 sky130_fd_sc_hd__or3_4 _1979_ (.A(net5),
    .B(_0907_),
    .C(_0859_),
    .X(_0803_));
 sky130_fd_sc_hd__clkbuf_2 _1980_ (.A(_0803_),
    .X(_0804_));
 sky130_fd_sc_hd__o22a_1 _1981_ (.A1(_0936_),
    .A2(_0802_),
    .B1(_0703_),
    .B2(_0804_),
    .X(_0805_));
 sky130_fd_sc_hd__inv_2 _1982_ (.A(irq_flag),
    .Y(_0806_));
 sky130_fd_sc_hd__clkbuf_2 _1983_ (.A(_0860_),
    .X(_0807_));
 sky130_fd_sc_hd__inv_2 _1984_ (.A(\byte_controller.dout[0] ),
    .Y(_0808_));
 sky130_fd_sc_hd__clkbuf_2 _1985_ (.A(_0682_),
    .X(_0809_));
 sky130_fd_sc_hd__o22a_1 _1986_ (.A1(_0806_),
    .A2(_0807_),
    .B1(_0808_),
    .B2(_0809_),
    .X(_0810_));
 sky130_fd_sc_hd__inv_2 _1987_ (.A(\byte_controller.bit_controller.clk_cnt[8] ),
    .Y(_0811_));
 sky130_fd_sc_hd__buf_1 _1988_ (.A(_0908_),
    .X(_0812_));
 sky130_fd_sc_hd__buf_1 _1989_ (.A(_0615_),
    .X(_0813_));
 sky130_fd_sc_hd__o22a_1 _1990_ (.A1(_0811_),
    .A2(_0812_),
    .B1(_0621_),
    .B2(_0813_),
    .X(_0814_));
 sky130_fd_sc_hd__o2111ai_2 _1991_ (.A1(_0903_),
    .A2(_0800_),
    .B1(_0805_),
    .C1(_0810_),
    .D1(_0814_),
    .Y(_0158_));
 sky130_fd_sc_hd__inv_2 _1992_ (.A(\byte_controller.dout[1] ),
    .Y(_0815_));
 sky130_fd_sc_hd__o22a_1 _1993_ (.A1(_0097_),
    .A2(_0908_),
    .B1(_0815_),
    .B2(_0809_),
    .X(_0816_));
 sky130_fd_sc_hd__o22a_1 _1994_ (.A1(_0934_),
    .A2(_0801_),
    .B1(_0642_),
    .B2(_0615_),
    .X(_0817_));
 sky130_fd_sc_hd__inv_2 _1995_ (.A(tip),
    .Y(_0818_));
 sky130_fd_sc_hd__o22a_1 _1996_ (.A1(_0818_),
    .A2(_0807_),
    .B1(_0701_),
    .B2(_0804_),
    .X(_0819_));
 sky130_fd_sc_hd__o2111ai_2 _1997_ (.A1(_0900_),
    .A2(_0800_),
    .B1(_0816_),
    .C1(_0817_),
    .D1(_0819_),
    .Y(_0159_));
 sky130_fd_sc_hd__o22a_1 _1998_ (.A1(_0929_),
    .A2(_0802_),
    .B1(_0699_),
    .B2(_0804_),
    .X(_0820_));
 sky130_fd_sc_hd__inv_2 _1999_ (.A(\byte_controller.slave_dat_req ),
    .Y(_0821_));
 sky130_fd_sc_hd__inv_2 _2000_ (.A(\byte_controller.dout[2] ),
    .Y(_0822_));
 sky130_fd_sc_hd__o22a_1 _2001_ (.A1(_0821_),
    .A2(_0807_),
    .B1(_0822_),
    .B2(_0809_),
    .X(_0823_));
 sky130_fd_sc_hd__inv_2 _2002_ (.A(\byte_controller.bit_controller.clk_cnt[10] ),
    .Y(_0824_));
 sky130_fd_sc_hd__o22a_1 _2003_ (.A1(_0824_),
    .A2(_0812_),
    .B1(_0637_),
    .B2(_0813_),
    .X(_0825_));
 sky130_fd_sc_hd__o2111ai_4 _2004_ (.A1(_0896_),
    .A2(_0800_),
    .B1(_0820_),
    .C1(_0823_),
    .D1(_0825_),
    .Y(_0160_));
 sky130_fd_sc_hd__inv_2 _2005_ (.A(\byte_controller.ack_in ),
    .Y(_0826_));
 sky130_fd_sc_hd__o22a_1 _2006_ (.A1(_0826_),
    .A2(_0802_),
    .B1(_0695_),
    .B2(_0804_),
    .X(_0827_));
 sky130_fd_sc_hd__inv_2 _2007_ (.A(\byte_controller.slave_dat_avail ),
    .Y(_0828_));
 sky130_fd_sc_hd__inv_2 _2008_ (.A(\byte_controller.dout[3] ),
    .Y(_0829_));
 sky130_fd_sc_hd__o22a_1 _2009_ (.A1(_0828_),
    .A2(_0807_),
    .B1(_0829_),
    .B2(_0809_),
    .X(_0830_));
 sky130_fd_sc_hd__o22a_1 _2010_ (.A1(_0102_),
    .A2(_0812_),
    .B1(_0636_),
    .B2(_0813_),
    .X(_0831_));
 sky130_fd_sc_hd__o2111ai_4 _2011_ (.A1(_0892_),
    .A2(_0800_),
    .B1(_0827_),
    .C1(_0830_),
    .D1(_0831_),
    .Y(_0161_));
 sky130_fd_sc_hd__o22a_1 _2012_ (.A1(_0566_),
    .A2(_0802_),
    .B1(_0693_),
    .B2(_0803_),
    .X(_0832_));
 sky130_fd_sc_hd__inv_2 _2013_ (.A(slave_mode),
    .Y(_0833_));
 sky130_fd_sc_hd__inv_2 _2014_ (.A(\byte_controller.dout[4] ),
    .Y(_0834_));
 sky130_fd_sc_hd__o22a_1 _2015_ (.A1(_0833_),
    .A2(_0807_),
    .B1(_0834_),
    .B2(_0809_),
    .X(_0835_));
 sky130_fd_sc_hd__o22a_1 _2016_ (.A1(_0105_),
    .A2(_0812_),
    .B1(_0645_),
    .B2(_0813_),
    .X(_0836_));
 sky130_fd_sc_hd__o2111ai_2 _2017_ (.A1(_0888_),
    .A2(_0800_),
    .B1(_0832_),
    .C1(_0835_),
    .D1(_0836_),
    .Y(_0162_));
 sky130_fd_sc_hd__o22a_1 _2018_ (.A1(_0564_),
    .A2(_0802_),
    .B1(_0690_),
    .B2(_0803_),
    .X(_0837_));
 sky130_fd_sc_hd__inv_2 _2019_ (.A(al),
    .Y(_0838_));
 sky130_fd_sc_hd__inv_2 _2020_ (.A(\byte_controller.dout[5] ),
    .Y(_0839_));
 sky130_fd_sc_hd__o22a_1 _2021_ (.A1(_0838_),
    .A2(_0860_),
    .B1(_0839_),
    .B2(_0683_),
    .X(_0840_));
 sky130_fd_sc_hd__o22a_1 _2022_ (.A1(_0108_),
    .A2(_0812_),
    .B1(_0646_),
    .B2(_0813_),
    .X(_0841_));
 sky130_fd_sc_hd__o2111ai_1 _2023_ (.A1(_0885_),
    .A2(_0874_),
    .B1(_0837_),
    .C1(_0840_),
    .D1(_0841_),
    .Y(_0163_));
 sky130_fd_sc_hd__o22a_1 _2024_ (.A1(_0561_),
    .A2(_0801_),
    .B1(_0688_),
    .B2(_0803_),
    .X(_0842_));
 sky130_fd_sc_hd__inv_2 _2025_ (.A(\byte_controller.bit_controller.busy ),
    .Y(_0843_));
 sky130_fd_sc_hd__inv_2 _2026_ (.A(\byte_controller.dout[6] ),
    .Y(_0844_));
 sky130_fd_sc_hd__o22a_1 _2027_ (.A1(_0843_),
    .A2(_0860_),
    .B1(_0844_),
    .B2(_0683_),
    .X(_0845_));
 sky130_fd_sc_hd__o22a_1 _2028_ (.A1(_0111_),
    .A2(_0908_),
    .B1(_0647_),
    .B2(_0615_),
    .X(_0846_));
 sky130_fd_sc_hd__o2111ai_2 _2029_ (.A1(_0882_),
    .A2(_0874_),
    .B1(_0842_),
    .C1(_0845_),
    .D1(_0846_),
    .Y(_0164_));
 sky130_fd_sc_hd__inv_2 _2030_ (.A(rxack),
    .Y(_0847_));
 sky130_fd_sc_hd__o22a_1 _2031_ (.A1(_0847_),
    .A2(_0860_),
    .B1(_0557_),
    .B2(_0801_),
    .X(_0848_));
 sky130_fd_sc_hd__o221a_1 _2032_ (.A1(_0149_),
    .A2(_0682_),
    .B1(_0114_),
    .B2(_0908_),
    .C1(_0848_),
    .X(_0849_));
 sky130_fd_sc_hd__o221ai_2 _2033_ (.A1(_0684_),
    .A2(_0804_),
    .B1(_0858_),
    .B2(_0874_),
    .C1(_0849_),
    .Y(_0165_));
 sky130_fd_sc_hd__and3b_1 _2034_ (.A_N(net23),
    .B(net17),
    .C(net7),
    .X(_0004_));
 sky130_fd_sc_hd__and2_1 _2035_ (.A(\byte_controller.bit_controller.slave_state[1] ),
    .B(_0572_),
    .X(_0007_));
 sky130_fd_sc_hd__clkbuf_1 _2036_ (.A(_0043_),
    .X(_0006_));
 sky130_fd_sc_hd__inv_2 _2037_ (.A(net20),
    .Y(_0850_));
 sky130_fd_sc_hd__o21a_1 _2038_ (.A1(_0850_),
    .A2(\byte_controller.bit_controller.dscl_oen ),
    .B1(_0941_),
    .X(_0851_));
 sky130_fd_sc_hd__nor2_1 _2039_ (.A(_0742_),
    .B(_0851_),
    .Y(_0080_));
 sky130_fd_sc_hd__nand2_1 _2040_ (.A(\byte_controller.bit_controller.sl_wait ),
    .B(_0572_),
    .Y(_0078_));
 sky130_fd_sc_hd__or2_1 _2041_ (.A(\byte_controller.bit_controller.sSDA ),
    .B(_0978_),
    .X(_0061_));
 sky130_fd_sc_hd__or2_1 _2042_ (.A(_0742_),
    .B(_0978_),
    .X(_0060_));
 sky130_fd_sc_hd__or2_1 _2043_ (.A(\byte_controller.bit_controller.fSDA[2] ),
    .B(\byte_controller.bit_controller.fSDA[1] ),
    .X(_0852_));
 sky130_fd_sc_hd__a221o_1 _2044_ (.A1(\byte_controller.bit_controller.fSDA[2] ),
    .A2(\byte_controller.bit_controller.fSDA[1] ),
    .B1(\byte_controller.bit_controller.fSDA[0] ),
    .B2(_0852_),
    .C1(_0983_),
    .X(_0077_));
 sky130_fd_sc_hd__or2_1 _2045_ (.A(\byte_controller.bit_controller.fSCL[2] ),
    .B(\byte_controller.bit_controller.fSCL[1] ),
    .X(_0853_));
 sky130_fd_sc_hd__a221o_1 _2046_ (.A1(\byte_controller.bit_controller.fSCL[2] ),
    .A2(\byte_controller.bit_controller.fSCL[1] ),
    .B1(\byte_controller.bit_controller.fSCL[0] ),
    .B2(_0853_),
    .C1(_0906_),
    .X(_0076_));
 sky130_fd_sc_hd__and3_1 _2047_ (.A(\byte_controller.sl_cont ),
    .B(\byte_controller.c_state[2] ),
    .C(_0633_),
    .X(_0008_));
 sky130_fd_sc_hd__clkbuf_1 _2048_ (.A(_0865_),
    .X(_0362_));
 sky130_fd_sc_hd__conb_1 _2049_ (.LO(net19));
 sky130_fd_sc_hd__conb_1 _2050_ (.LO(net21));
 sky130_fd_sc_hd__mux2_4 _2051_ (.A0(\byte_controller.bit_controller.scl_oen_slave ),
    .A1(\byte_controller.bit_controller.scl_oen_master ),
    .S(\byte_controller.bit_controller.master_mode ),
    .X(net20));
 sky130_fd_sc_hd__mux2_2 _2052_ (.A0(\byte_controller.bit_controller.sda_oen_slave ),
    .A1(\byte_controller.bit_controller.sda_oen_master ),
    .S(\byte_controller.bit_controller.master_mode ),
    .X(net22));
 sky130_fd_sc_hd__mux2_2 _2053_ (.A0(_0158_),
    .A1(\byte_controller.bit_controller.clk_cnt[0] ),
    .S(_0157_),
    .X(_1046_));
 sky130_fd_sc_hd__mux2_2 _2054_ (.A0(_0159_),
    .A1(\byte_controller.bit_controller.clk_cnt[1] ),
    .S(_0157_),
    .X(_1047_));
 sky130_fd_sc_hd__mux2_1 _2055_ (.A0(_0160_),
    .A1(\byte_controller.bit_controller.clk_cnt[2] ),
    .S(_0157_),
    .X(_1048_));
 sky130_fd_sc_hd__mux2_2 _2056_ (.A0(_0161_),
    .A1(\byte_controller.bit_controller.clk_cnt[3] ),
    .S(_0157_),
    .X(_1049_));
 sky130_fd_sc_hd__mux2_2 _2057_ (.A0(_0162_),
    .A1(\byte_controller.bit_controller.clk_cnt[4] ),
    .S(_0157_),
    .X(_1050_));
 sky130_fd_sc_hd__mux2_1 _2058_ (.A0(_0163_),
    .A1(\byte_controller.bit_controller.clk_cnt[5] ),
    .S(_0157_),
    .X(_1051_));
 sky130_fd_sc_hd__mux2_1 _2059_ (.A0(_0164_),
    .A1(\byte_controller.bit_controller.clk_cnt[6] ),
    .S(_0157_),
    .X(_1052_));
 sky130_fd_sc_hd__mux2_1 _2060_ (.A0(_0165_),
    .A1(\byte_controller.bit_controller.clk_cnt[7] ),
    .S(_0157_),
    .X(_1053_));
 sky130_fd_sc_hd__mux2_1 _2061_ (.A0(_0087_),
    .A1(\byte_controller.bit_controller.clk_cnt[4] ),
    .S(_0168_),
    .X(_0088_));
 sky130_fd_sc_hd__mux2_1 _2062_ (.A0(_0089_),
    .A1(\byte_controller.bit_controller.clk_cnt[5] ),
    .S(_0168_),
    .X(_0090_));
 sky130_fd_sc_hd__mux2_1 _2063_ (.A0(_0085_),
    .A1(\byte_controller.bit_controller.clk_cnt[3] ),
    .S(_0168_),
    .X(_0086_));
 sky130_fd_sc_hd__mux2_1 _2064_ (.A0(_0131_),
    .A1(\byte_controller.bit_controller.clk_cnt[14] ),
    .S(_0028_),
    .X(_0049_));
 sky130_fd_sc_hd__mux2_1 _2065_ (.A0(_0132_),
    .A1(\byte_controller.bit_controller.clk_cnt[15] ),
    .S(_0028_),
    .X(_0050_));
 sky130_fd_sc_hd__mux2_1 _2066_ (.A0(_0117_),
    .A1(\byte_controller.bit_controller.clk_cnt[0] ),
    .S(_0028_),
    .X(_0044_));
 sky130_fd_sc_hd__mux2_1 _2067_ (.A0(_0118_),
    .A1(\byte_controller.bit_controller.clk_cnt[1] ),
    .S(_0028_),
    .X(_0051_));
 sky130_fd_sc_hd__mux2_1 _2068_ (.A0(_0119_),
    .A1(\byte_controller.bit_controller.clk_cnt[2] ),
    .S(_0028_),
    .X(_0052_));
 sky130_fd_sc_hd__mux2_1 _2069_ (.A0(_0120_),
    .A1(\byte_controller.bit_controller.clk_cnt[3] ),
    .S(_0028_),
    .X(_0053_));
 sky130_fd_sc_hd__mux2_1 _2070_ (.A0(_0121_),
    .A1(\byte_controller.bit_controller.clk_cnt[4] ),
    .S(_0028_),
    .X(_0054_));
 sky130_fd_sc_hd__mux2_1 _2071_ (.A0(_0122_),
    .A1(\byte_controller.bit_controller.clk_cnt[5] ),
    .S(_0028_),
    .X(_0055_));
 sky130_fd_sc_hd__mux2_1 _2072_ (.A0(_0123_),
    .A1(\byte_controller.bit_controller.clk_cnt[6] ),
    .S(_0028_),
    .X(_0056_));
 sky130_fd_sc_hd__mux2_1 _2073_ (.A0(_0124_),
    .A1(\byte_controller.bit_controller.clk_cnt[7] ),
    .S(_0028_),
    .X(_0057_));
 sky130_fd_sc_hd__mux2_1 _2074_ (.A0(_0125_),
    .A1(\byte_controller.bit_controller.clk_cnt[8] ),
    .S(_0028_),
    .X(_0058_));
 sky130_fd_sc_hd__mux2_1 _2075_ (.A0(_0126_),
    .A1(\byte_controller.bit_controller.clk_cnt[9] ),
    .S(_0028_),
    .X(_0059_));
 sky130_fd_sc_hd__mux2_1 _2076_ (.A0(_0127_),
    .A1(\byte_controller.bit_controller.clk_cnt[10] ),
    .S(_0028_),
    .X(_0045_));
 sky130_fd_sc_hd__mux2_1 _2077_ (.A0(_0128_),
    .A1(\byte_controller.bit_controller.clk_cnt[11] ),
    .S(_0028_),
    .X(_0046_));
 sky130_fd_sc_hd__mux2_1 _2078_ (.A0(_0130_),
    .A1(\byte_controller.bit_controller.clk_cnt[13] ),
    .S(_0028_),
    .X(_0048_));
 sky130_fd_sc_hd__mux2_1 _2079_ (.A0(_0129_),
    .A1(\byte_controller.bit_controller.clk_cnt[12] ),
    .S(_0028_),
    .X(_0047_));
 sky130_fd_sc_hd__mux2_1 _2080_ (.A0(_0093_),
    .A1(\byte_controller.bit_controller.clk_cnt[7] ),
    .S(_0168_),
    .X(_0094_));
 sky130_fd_sc_hd__mux2_1 _2081_ (.A0(_0171_),
    .A1(_0167_),
    .S(\byte_controller.bit_controller.c_state[16] ),
    .X(_0166_));
 sky130_fd_sc_hd__mux2_1 _2082_ (.A0(_0149_),
    .A1(_0152_),
    .S(\byte_controller.bit_controller.cmd_slave_ack ),
    .X(_0153_));
 sky130_fd_sc_hd__mux2_1 _2083_ (.A0(_0154_),
    .A1(_0149_),
    .S(_0150_),
    .X(_0155_));
 sky130_fd_sc_hd__mux2_1 _2084_ (.A0(\byte_controller.bit_controller.cmd_slave_ack ),
    .A1(\byte_controller.bit_controller.cmd_ack ),
    .S(\byte_controller.c_state[8] ),
    .X(_0156_));
 sky130_fd_sc_hd__mux2_1 _2085_ (.A0(_0095_),
    .A1(\byte_controller.bit_controller.clk_cnt[8] ),
    .S(_0168_),
    .X(_0096_));
 sky130_fd_sc_hd__mux2_1 _2086_ (.A0(\byte_controller.dout[7] ),
    .A1(\byte_controller.ack_in ),
    .S(\byte_controller.bit_controller.cmd_ack ),
    .X(_0151_));
 sky130_fd_sc_hd__mux2_1 _2087_ (.A0(_0100_),
    .A1(\byte_controller.bit_controller.clk_cnt[10] ),
    .S(_0168_),
    .X(_0101_));
 sky130_fd_sc_hd__mux2_1 _2088_ (.A0(_0103_),
    .A1(_0102_),
    .S(_0168_),
    .X(_0104_));
 sky130_fd_sc_hd__mux2_1 _2089_ (.A0(_0106_),
    .A1(_0105_),
    .S(_0168_),
    .X(_0107_));
 sky130_fd_sc_hd__mux2_1 _2090_ (.A0(_0112_),
    .A1(_0111_),
    .S(_0168_),
    .X(_0113_));
 sky130_fd_sc_hd__mux2_1 _2091_ (.A0(\byte_controller.bit_controller.filter_cnt[0] ),
    .A1(_0083_),
    .S(_0168_),
    .X(_0084_));
 sky130_fd_sc_hd__mux2_1 _2092_ (.A0(_0091_),
    .A1(\byte_controller.bit_controller.clk_cnt[6] ),
    .S(_0168_),
    .X(_0092_));
 sky130_fd_sc_hd__mux2_1 _2093_ (.A0(_0109_),
    .A1(_0108_),
    .S(_0168_),
    .X(_0110_));
 sky130_fd_sc_hd__mux2_1 _2094_ (.A0(_0115_),
    .A1(_0114_),
    .S(_0168_),
    .X(_0116_));
 sky130_fd_sc_hd__mux2_1 _2095_ (.A0(_0098_),
    .A1(_0097_),
    .S(_0168_),
    .X(_0099_));
 sky130_fd_sc_hd__mux2_1 _2096_ (.A0(_0169_),
    .A1(_0167_),
    .S(\byte_controller.bit_controller.c_state[16] ),
    .X(_0170_));
 sky130_fd_sc_hd__mux2_1 _2097_ (.A0(_0133_),
    .A1(\byte_controller.din[0] ),
    .S(\byte_controller.ld ),
    .X(_0134_));
 sky130_fd_sc_hd__mux2_1 _2098_ (.A0(\byte_controller.bit_controller.slave_adr[1] ),
    .A1(\byte_controller.dout[0] ),
    .S(\byte_controller.shift ),
    .X(_0135_));
 sky130_fd_sc_hd__mux2_1 _2099_ (.A0(_0135_),
    .A1(\byte_controller.din[1] ),
    .S(\byte_controller.ld ),
    .X(_0136_));
 sky130_fd_sc_hd__mux2_1 _2100_ (.A0(\byte_controller.bit_controller.slave_adr[2] ),
    .A1(\byte_controller.dout[1] ),
    .S(\byte_controller.shift ),
    .X(_0137_));
 sky130_fd_sc_hd__mux2_1 _2101_ (.A0(_0137_),
    .A1(\byte_controller.din[2] ),
    .S(\byte_controller.ld ),
    .X(_0138_));
 sky130_fd_sc_hd__mux2_1 _2102_ (.A0(\byte_controller.bit_controller.slave_adr[3] ),
    .A1(\byte_controller.dout[2] ),
    .S(\byte_controller.shift ),
    .X(_0139_));
 sky130_fd_sc_hd__mux2_1 _2103_ (.A0(_0139_),
    .A1(\byte_controller.din[3] ),
    .S(\byte_controller.ld ),
    .X(_0140_));
 sky130_fd_sc_hd__mux2_1 _2104_ (.A0(\byte_controller.bit_controller.slave_adr[4] ),
    .A1(\byte_controller.dout[3] ),
    .S(\byte_controller.shift ),
    .X(_0141_));
 sky130_fd_sc_hd__mux2_1 _2105_ (.A0(_0141_),
    .A1(\byte_controller.din[4] ),
    .S(\byte_controller.ld ),
    .X(_0142_));
 sky130_fd_sc_hd__mux2_1 _2106_ (.A0(\byte_controller.bit_controller.slave_adr[5] ),
    .A1(\byte_controller.dout[4] ),
    .S(\byte_controller.shift ),
    .X(_0143_));
 sky130_fd_sc_hd__mux2_1 _2107_ (.A0(_0143_),
    .A1(\byte_controller.din[5] ),
    .S(\byte_controller.ld ),
    .X(_0144_));
 sky130_fd_sc_hd__mux2_1 _2108_ (.A0(\byte_controller.bit_controller.slave_adr[6] ),
    .A1(\byte_controller.dout[5] ),
    .S(\byte_controller.shift ),
    .X(_0145_));
 sky130_fd_sc_hd__mux2_1 _2109_ (.A0(_0145_),
    .A1(\byte_controller.din[6] ),
    .S(\byte_controller.ld ),
    .X(_0146_));
 sky130_fd_sc_hd__mux2_1 _2110_ (.A0(\byte_controller.bit_controller.slave_adr[7] ),
    .A1(\byte_controller.dout[6] ),
    .S(\byte_controller.shift ),
    .X(_0147_));
 sky130_fd_sc_hd__mux2_1 _2111_ (.A0(_0147_),
    .A1(\byte_controller.din[7] ),
    .S(\byte_controller.ld ),
    .X(_0148_));
 sky130_fd_sc_hd__dfxtp_1 _2112_ (.D(_1046_),
    .Q(net24),
    .CLK(clknet_leaf_20_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _2113_ (.D(_1047_),
    .Q(net25),
    .CLK(clknet_leaf_26_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _2114_ (.D(_1048_),
    .Q(net26),
    .CLK(clknet_leaf_13_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _2115_ (.D(_1049_),
    .Q(net27),
    .CLK(clknet_leaf_4_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _2116_ (.D(_1050_),
    .Q(net28),
    .CLK(clknet_leaf_3_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _2117_ (.D(_1051_),
    .Q(net29),
    .CLK(clknet_leaf_21_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _2118_ (.D(_1052_),
    .Q(net30),
    .CLK(clknet_leaf_21_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _2119_ (.D(_1053_),
    .Q(net31),
    .CLK(clknet_leaf_7_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_2 _2120_ (.D(_0004_),
    .Q(net23),
    .CLK(clknet_leaf_25_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _2121_ (.D(net20),
    .Q(\byte_controller.bit_controller.dscl_oen ),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _2122_ (.D(_0363_),
    .Q(\byte_controller.bit_controller.dout ),
    .CLK(clknet_leaf_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2123_ (.D(_0005_),
    .Q(net32),
    .RESET_B(_0172_),
    .CLK(clknet_leaf_21_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2124_ (.D(_0000_),
    .Q(al),
    .RESET_B(_0173_),
    .CLK(clknet_leaf_17_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2125_ (.D(_0002_),
    .Q(rxack),
    .RESET_B(_0174_),
    .CLK(clknet_leaf_22_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2126_ (.D(_0003_),
    .Q(tip),
    .RESET_B(_0175_),
    .CLK(clknet_leaf_19_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2127_ (.D(_0001_),
    .Q(irq_flag),
    .RESET_B(_0176_),
    .CLK(clknet_leaf_18_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2128_ (.D(_0024_),
    .Q(\byte_controller.core_cmd[1] ),
    .RESET_B(_0177_),
    .CLK(clknet_leaf_21_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2129_ (.D(_0025_),
    .Q(\byte_controller.core_cmd[2] ),
    .RESET_B(_0178_),
    .CLK(clknet_leaf_20_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2130_ (.D(_0026_),
    .Q(\byte_controller.core_cmd[3] ),
    .RESET_B(_0179_),
    .CLK(clknet_leaf_25_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2131_ (.D(_0027_),
    .Q(\byte_controller.core_cmd[4] ),
    .RESET_B(_0180_),
    .CLK(clknet_leaf_25_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2132_ (.D(_0014_),
    .Q(\byte_controller.c_state[0] ),
    .SET_B(_0181_),
    .CLK(clknet_leaf_18_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2133_ (.D(_0008_),
    .Q(\byte_controller.c_state[1] ),
    .RESET_B(_0182_),
    .CLK(clknet_leaf_20_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2134_ (.D(_0016_),
    .Q(\byte_controller.c_state[2] ),
    .RESET_B(_0183_),
    .CLK(clknet_leaf_19_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2135_ (.D(_0017_),
    .Q(\byte_controller.c_state[3] ),
    .RESET_B(_0184_),
    .CLK(clknet_leaf_21_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2136_ (.D(_0018_),
    .Q(\byte_controller.c_state[4] ),
    .RESET_B(_0185_),
    .CLK(clknet_leaf_21_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2137_ (.D(_0019_),
    .Q(\byte_controller.c_state[5] ),
    .RESET_B(_0186_),
    .CLK(clknet_leaf_21_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2138_ (.D(_0020_),
    .Q(\byte_controller.c_state[6] ),
    .RESET_B(_0187_),
    .CLK(clknet_leaf_20_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2139_ (.D(_0021_),
    .Q(\byte_controller.c_state[7] ),
    .RESET_B(_0188_),
    .CLK(clknet_leaf_20_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2140_ (.D(_0022_),
    .Q(\byte_controller.c_state[8] ),
    .RESET_B(_0189_),
    .CLK(clknet_leaf_20_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2141_ (.D(_0023_),
    .Q(\byte_controller.c_state[9] ),
    .RESET_B(_0190_),
    .CLK(clknet_leaf_20_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2142_ (.D(_0015_),
    .Q(\byte_controller.c_state[10] ),
    .RESET_B(_0191_),
    .CLK(clknet_leaf_20_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2143_ (.D(_0009_),
    .Q(\byte_controller.bit_controller.slave_state[0] ),
    .SET_B(_0192_),
    .CLK(clknet_leaf_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2144_ (.D(_0006_),
    .Q(\byte_controller.bit_controller.slave_state[1] ),
    .RESET_B(_0193_),
    .CLK(clknet_leaf_27_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2145_ (.D(_0010_),
    .Q(\byte_controller.bit_controller.slave_state[2] ),
    .RESET_B(_0194_),
    .CLK(clknet_leaf_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2146_ (.D(_0011_),
    .Q(\byte_controller.bit_controller.slave_state[3] ),
    .RESET_B(_0195_),
    .CLK(clknet_leaf_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2147_ (.D(_0012_),
    .Q(\byte_controller.bit_controller.slave_state[4] ),
    .RESET_B(_0196_),
    .CLK(clknet_leaf_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2148_ (.D(_0013_),
    .Q(\byte_controller.bit_controller.slave_state[5] ),
    .RESET_B(_0197_),
    .CLK(clknet_leaf_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2149_ (.D(_0007_),
    .Q(\byte_controller.bit_controller.slave_state[6] ),
    .RESET_B(_0198_),
    .CLK(clknet_leaf_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2150_ (.D(_0043_),
    .Q(\byte_controller.bit_controller.cmd_slave_ack ),
    .RESET_B(_0199_),
    .CLK(clknet_leaf_27_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2151_ (.D(_0078_),
    .Q(\byte_controller.bit_controller.scl_oen_slave ),
    .SET_B(_0200_),
    .CLK(clknet_leaf_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2152_ (.D(_0079_),
    .Q(\byte_controller.bit_controller.slave_adr_received ),
    .RESET_B(_0201_),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2153_ (.D(_0042_),
    .Q(\byte_controller.bit_controller.cmd_ack ),
    .RESET_B(_0202_),
    .CLK(clknet_leaf_24_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2154_ (.D(_0036_),
    .Q(\byte_controller.bit_controller.al ),
    .RESET_B(_0203_),
    .CLK(clknet_leaf_1_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2155_ (.D(_0037_),
    .Q(\byte_controller.bit_controller.busy ),
    .RESET_B(_0204_),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2156_ (.D(_0081_),
    .Q(\byte_controller.bit_controller.sta_condition ),
    .RESET_B(_0205_),
    .CLK(clknet_leaf_1_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2157_ (.D(_0082_),
    .Q(\byte_controller.bit_controller.sto_condition ),
    .RESET_B(_0206_),
    .CLK(clknet_leaf_1_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2158_ (.D(_0076_),
    .Q(\byte_controller.bit_controller.sSCL ),
    .SET_B(_0207_),
    .CLK(clknet_leaf_3_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2159_ (.D(_0077_),
    .Q(\byte_controller.bit_controller.sSDA ),
    .SET_B(_0208_),
    .CLK(clknet_leaf_3_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2160_ (.D(_0060_),
    .Q(\byte_controller.bit_controller.dSCL ),
    .SET_B(_0209_),
    .CLK(clknet_leaf_3_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2161_ (.D(_0061_),
    .Q(\byte_controller.bit_controller.dSDA ),
    .SET_B(_0210_),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2162_ (.D(_0062_),
    .Q(\byte_controller.bit_controller.filter_cnt[0] ),
    .RESET_B(_0211_),
    .CLK(clknet_leaf_4_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2163_ (.D(_0067_),
    .Q(\byte_controller.bit_controller.filter_cnt[1] ),
    .RESET_B(_0212_),
    .CLK(clknet_leaf_6_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2164_ (.D(_0068_),
    .Q(\byte_controller.bit_controller.filter_cnt[2] ),
    .RESET_B(_0213_),
    .CLK(clknet_leaf_8_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2165_ (.D(_0069_),
    .Q(\byte_controller.bit_controller.filter_cnt[3] ),
    .RESET_B(_0214_),
    .CLK(clknet_leaf_6_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2166_ (.D(_0070_),
    .Q(\byte_controller.bit_controller.filter_cnt[4] ),
    .RESET_B(_0215_),
    .CLK(clknet_leaf_6_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2167_ (.D(_0071_),
    .Q(\byte_controller.bit_controller.filter_cnt[5] ),
    .RESET_B(_0216_),
    .CLK(clknet_leaf_6_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2168_ (.D(_0072_),
    .Q(\byte_controller.bit_controller.filter_cnt[6] ),
    .RESET_B(_0217_),
    .CLK(clknet_leaf_6_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2169_ (.D(_0073_),
    .Q(\byte_controller.bit_controller.filter_cnt[7] ),
    .RESET_B(_0218_),
    .CLK(clknet_leaf_5_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2170_ (.D(_0074_),
    .Q(\byte_controller.bit_controller.filter_cnt[8] ),
    .RESET_B(_0219_),
    .CLK(clknet_leaf_5_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2171_ (.D(_0075_),
    .Q(\byte_controller.bit_controller.filter_cnt[9] ),
    .RESET_B(_0220_),
    .CLK(clknet_leaf_5_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2172_ (.D(_0063_),
    .Q(\byte_controller.bit_controller.filter_cnt[10] ),
    .RESET_B(_0221_),
    .CLK(clknet_leaf_5_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2173_ (.D(_0064_),
    .Q(\byte_controller.bit_controller.filter_cnt[11] ),
    .RESET_B(_0222_),
    .CLK(clknet_leaf_4_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2174_ (.D(_0065_),
    .Q(\byte_controller.bit_controller.filter_cnt[12] ),
    .RESET_B(_0223_),
    .CLK(clknet_leaf_6_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2175_ (.D(_0066_),
    .Q(\byte_controller.bit_controller.filter_cnt[13] ),
    .RESET_B(_0224_),
    .CLK(clknet_leaf_4_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2176_ (.D(_0038_),
    .Q(\byte_controller.bit_controller.cSCL[0] ),
    .RESET_B(_0225_),
    .CLK(clknet_leaf_4_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2177_ (.D(_0039_),
    .Q(\byte_controller.bit_controller.cSCL[1] ),
    .RESET_B(_0226_),
    .CLK(clknet_leaf_4_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2178_ (.D(_0040_),
    .Q(\byte_controller.bit_controller.cSDA[0] ),
    .RESET_B(_0227_),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2179_ (.D(_0041_),
    .Q(\byte_controller.bit_controller.cSDA[1] ),
    .RESET_B(_0228_),
    .CLK(clknet_leaf_8_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2180_ (.D(_0028_),
    .Q(\byte_controller.bit_controller.clk_en ),
    .SET_B(_0229_),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2181_ (.D(_0080_),
    .Q(\byte_controller.bit_controller.slave_wait ),
    .RESET_B(_0230_),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2182_ (.D(\byte_controller.bit_controller.slave_adr_received ),
    .Q(\byte_controller.slave_adr_received_d ),
    .RESET_B(_0231_),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2183_ (.D(_0034_),
    .Q(\byte_controller.bit_controller.slave_cmd[0] ),
    .RESET_B(_0232_),
    .CLK(clknet_leaf_24_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2184_ (.D(_0035_),
    .Q(\byte_controller.bit_controller.slave_cmd[1] ),
    .RESET_B(_0233_),
    .CLK(clknet_leaf_24_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2185_ (.D(_0031_),
    .Q(\byte_controller.ld ),
    .RESET_B(_0234_),
    .CLK(clknet_leaf_24_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2186_ (.D(_0032_),
    .Q(\byte_controller.shift ),
    .RESET_B(_0235_),
    .CLK(clknet_leaf_24_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2187_ (.D(_0030_),
    .Q(\byte_controller.bit_controller.din ),
    .RESET_B(_0236_),
    .CLK(clknet_leaf_24_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2188_ (.D(_0033_),
    .Q(\byte_controller.slave_cmd_ack ),
    .RESET_B(_0237_),
    .CLK(clknet_leaf_17_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2189_ (.D(_0029_),
    .Q(\byte_controller.cmd_ack ),
    .RESET_B(_0238_),
    .CLK(clknet_leaf_19_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2190_ (.D(_0364_),
    .Q(\byte_controller.din[0] ),
    .RESET_B(_0239_),
    .CLK(clknet_leaf_19_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2191_ (.D(_0365_),
    .Q(\byte_controller.din[1] ),
    .RESET_B(_0240_),
    .CLK(clknet_leaf_19_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2192_ (.D(_0366_),
    .Q(\byte_controller.din[2] ),
    .RESET_B(_0241_),
    .CLK(clknet_leaf_19_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2193_ (.D(_0367_),
    .Q(\byte_controller.din[3] ),
    .RESET_B(_0242_),
    .CLK(clknet_leaf_15_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2194_ (.D(_0368_),
    .Q(\byte_controller.din[4] ),
    .RESET_B(_0243_),
    .CLK(clknet_leaf_19_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2195_ (.D(_0369_),
    .Q(\byte_controller.din[5] ),
    .RESET_B(_0244_),
    .CLK(clknet_leaf_19_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2196_ (.D(_0370_),
    .Q(\byte_controller.din[6] ),
    .RESET_B(_0245_),
    .CLK(clknet_leaf_18_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2197_ (.D(_0371_),
    .Q(\byte_controller.din[7] ),
    .RESET_B(_0246_),
    .CLK(clknet_leaf_18_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2198_ (.D(_0372_),
    .Q(\byte_controller.bit_controller.master_mode ),
    .RESET_B(_0247_),
    .CLK(clknet_leaf_22_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2199_ (.D(_0373_),
    .Q(\byte_controller.slave_cmd[0] ),
    .RESET_B(_0248_),
    .CLK(clknet_leaf_22_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2200_ (.D(_0374_),
    .Q(\byte_controller.slave_cmd[1] ),
    .RESET_B(_0249_),
    .CLK(clknet_leaf_25_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2201_ (.D(_0375_),
    .Q(\byte_controller.bit_controller.sl_wait ),
    .RESET_B(_0250_),
    .CLK(clknet_leaf_22_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2202_ (.D(_0376_),
    .Q(\byte_controller.slave_act ),
    .RESET_B(_0251_),
    .CLK(clknet_leaf_22_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2203_ (.D(_0377_),
    .Q(\byte_controller.ack_out ),
    .RESET_B(_0252_),
    .CLK(clknet_leaf_22_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2204_ (.D(_0378_),
    .Q(\byte_controller.slave_dat_req ),
    .RESET_B(_0253_),
    .CLK(clknet_leaf_22_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2205_ (.D(_0379_),
    .Q(\byte_controller.my_addr[0] ),
    .RESET_B(_0254_),
    .CLK(clknet_leaf_16_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2206_ (.D(_0380_),
    .Q(\byte_controller.my_addr[1] ),
    .SET_B(_0255_),
    .CLK(clknet_leaf_9_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2207_ (.D(_0381_),
    .Q(\byte_controller.my_addr[2] ),
    .SET_B(_0256_),
    .CLK(clknet_leaf_9_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2208_ (.D(_0382_),
    .Q(\byte_controller.my_addr[3] ),
    .SET_B(_0257_),
    .CLK(clknet_leaf_8_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2209_ (.D(_0383_),
    .Q(\byte_controller.my_addr[4] ),
    .SET_B(_0258_),
    .CLK(clknet_leaf_8_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2210_ (.D(_0384_),
    .Q(\byte_controller.my_addr[5] ),
    .SET_B(_0259_),
    .CLK(clknet_leaf_9_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2211_ (.D(_0385_),
    .Q(\byte_controller.my_addr[6] ),
    .SET_B(_0260_),
    .CLK(clknet_leaf_8_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2212_ (.D(_0386_),
    .Q(\byte_controller.slave_dat_avail ),
    .RESET_B(_0261_),
    .CLK(clknet_leaf_22_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2213_ (.D(_0387_),
    .Q(\byte_controller.dcnt[0] ),
    .RESET_B(_0262_),
    .CLK(clknet_leaf_23_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2214_ (.D(_0388_),
    .Q(\byte_controller.dcnt[1] ),
    .RESET_B(_0263_),
    .CLK(clknet_leaf_23_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2215_ (.D(_0389_),
    .Q(\byte_controller.dcnt[2] ),
    .RESET_B(_0264_),
    .CLK(clknet_leaf_23_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2216_ (.D(_0390_),
    .Q(\byte_controller.dout[0] ),
    .RESET_B(_0265_),
    .CLK(clknet_leaf_23_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2217_ (.D(_0391_),
    .Q(\byte_controller.dout[1] ),
    .RESET_B(_0266_),
    .CLK(clknet_leaf_23_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2218_ (.D(_0392_),
    .Q(\byte_controller.dout[2] ),
    .RESET_B(_0267_),
    .CLK(clknet_leaf_1_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2219_ (.D(_0393_),
    .Q(\byte_controller.dout[3] ),
    .RESET_B(_0268_),
    .CLK(clknet_leaf_17_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2220_ (.D(_0394_),
    .Q(\byte_controller.dout[4] ),
    .RESET_B(_0269_),
    .CLK(clknet_leaf_9_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2221_ (.D(_0395_),
    .Q(\byte_controller.dout[5] ),
    .RESET_B(_0270_),
    .CLK(clknet_leaf_23_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2222_ (.D(_0396_),
    .Q(\byte_controller.dout[6] ),
    .RESET_B(_0271_),
    .CLK(clknet_leaf_17_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2223_ (.D(_0397_),
    .Q(\byte_controller.dout[7] ),
    .RESET_B(_0272_),
    .CLK(clknet_leaf_22_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2224_ (.D(_0398_),
    .Q(\byte_controller.bit_controller.sda_oen_slave ),
    .SET_B(_0273_),
    .CLK(clknet_leaf_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2225_ (.D(_0399_),
    .Q(\byte_controller.write ),
    .RESET_B(_0274_),
    .CLK(clknet_leaf_18_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2226_ (.D(_0400_),
    .Q(\byte_controller.read ),
    .RESET_B(_0275_),
    .CLK(clknet_leaf_18_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2227_ (.D(_0401_),
    .Q(\byte_controller.stop ),
    .RESET_B(_0276_),
    .CLK(clknet_leaf_19_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2228_ (.D(_0402_),
    .Q(\byte_controller.start ),
    .RESET_B(_0277_),
    .CLK(clknet_leaf_18_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2229_ (.D(_0403_),
    .Q(\byte_controller.bit_controller.slave_adr[0] ),
    .RESET_B(_0278_),
    .CLK(clknet_leaf_23_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2230_ (.D(_0404_),
    .Q(\byte_controller.bit_controller.slave_adr[1] ),
    .RESET_B(_0279_),
    .CLK(clknet_leaf_1_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2231_ (.D(_0405_),
    .Q(\byte_controller.bit_controller.slave_adr[2] ),
    .RESET_B(_0280_),
    .CLK(clknet_leaf_1_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2232_ (.D(_0406_),
    .Q(\byte_controller.bit_controller.slave_adr[3] ),
    .RESET_B(_0281_),
    .CLK(clknet_leaf_1_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2233_ (.D(_0407_),
    .Q(\byte_controller.bit_controller.slave_adr[4] ),
    .RESET_B(_0282_),
    .CLK(clknet_leaf_8_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2234_ (.D(_0408_),
    .Q(\byte_controller.bit_controller.slave_adr[5] ),
    .RESET_B(_0283_),
    .CLK(clknet_leaf_8_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2235_ (.D(_0409_),
    .Q(\byte_controller.bit_controller.slave_adr[6] ),
    .RESET_B(_0284_),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2236_ (.D(_0410_),
    .Q(\byte_controller.bit_controller.slave_adr[7] ),
    .RESET_B(_0285_),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2237_ (.D(_0411_),
    .Q(\byte_controller.bit_controller.slave_cnt[0] ),
    .RESET_B(_0286_),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2238_ (.D(_0412_),
    .Q(\byte_controller.bit_controller.slave_cnt[1] ),
    .RESET_B(_0287_),
    .CLK(clknet_leaf_3_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2239_ (.D(_0413_),
    .Q(\byte_controller.bit_controller.slave_cnt[2] ),
    .RESET_B(_0288_),
    .CLK(clknet_leaf_3_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2240_ (.D(_0414_),
    .Q(\byte_controller.bit_controller.slave_cnt[3] ),
    .SET_B(_0289_),
    .CLK(clknet_leaf_3_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2241_ (.D(_0415_),
    .Q(\byte_controller.bit_controller.slave_act ),
    .RESET_B(_0290_),
    .CLK(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2242_ (.D(_0416_),
    .Q(\byte_controller.bit_controller.sda_chk ),
    .RESET_B(_0291_),
    .CLK(clknet_leaf_1_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2243_ (.D(_0417_),
    .Q(\byte_controller.bit_controller.c_state[0] ),
    .RESET_B(_0292_),
    .CLK(clknet_leaf_25_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2244_ (.D(_0418_),
    .Q(\byte_controller.bit_controller.c_state[1] ),
    .RESET_B(_0293_),
    .CLK(clknet_leaf_26_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2245_ (.D(_0419_),
    .Q(\byte_controller.bit_controller.c_state[2] ),
    .RESET_B(_0294_),
    .CLK(clknet_leaf_26_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2246_ (.D(_0420_),
    .Q(\byte_controller.bit_controller.c_state[3] ),
    .RESET_B(_0295_),
    .CLK(clknet_leaf_26_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2247_ (.D(_0421_),
    .Q(\byte_controller.bit_controller.c_state[4] ),
    .RESET_B(_0296_),
    .CLK(clknet_leaf_25_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2248_ (.D(_0422_),
    .Q(\byte_controller.bit_controller.c_state[5] ),
    .RESET_B(_0297_),
    .CLK(clknet_leaf_25_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2249_ (.D(_0423_),
    .Q(\byte_controller.bit_controller.c_state[6] ),
    .RESET_B(_0298_),
    .CLK(clknet_leaf_25_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2250_ (.D(_0424_),
    .Q(\byte_controller.bit_controller.c_state[7] ),
    .RESET_B(_0299_),
    .CLK(clknet_leaf_25_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2251_ (.D(_0425_),
    .Q(\byte_controller.bit_controller.c_state[8] ),
    .RESET_B(_0300_),
    .CLK(clknet_leaf_26_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2252_ (.D(_0426_),
    .Q(\byte_controller.bit_controller.c_state[9] ),
    .RESET_B(_0301_),
    .CLK(clknet_leaf_24_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2253_ (.D(_0427_),
    .Q(\byte_controller.bit_controller.c_state[10] ),
    .RESET_B(_0302_),
    .CLK(clknet_leaf_26_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2254_ (.D(_0428_),
    .Q(\byte_controller.bit_controller.c_state[11] ),
    .RESET_B(_0303_),
    .CLK(clknet_leaf_26_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2255_ (.D(_0429_),
    .Q(\byte_controller.bit_controller.c_state[12] ),
    .RESET_B(_0304_),
    .CLK(clknet_leaf_27_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2256_ (.D(_0430_),
    .Q(\byte_controller.bit_controller.c_state[13] ),
    .RESET_B(_0305_),
    .CLK(clknet_leaf_24_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2257_ (.D(_0431_),
    .Q(\byte_controller.bit_controller.c_state[14] ),
    .RESET_B(_0306_),
    .CLK(clknet_leaf_27_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2258_ (.D(_0432_),
    .Q(\byte_controller.bit_controller.c_state[15] ),
    .RESET_B(_0307_),
    .CLK(clknet_leaf_27_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2259_ (.D(_0433_),
    .Q(\byte_controller.bit_controller.c_state[16] ),
    .RESET_B(_0308_),
    .CLK(clknet_leaf_27_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2260_ (.D(_0434_),
    .Q(\byte_controller.bit_controller.scl_oen_master ),
    .SET_B(_0309_),
    .CLK(clknet_leaf_1_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2261_ (.D(_0435_),
    .Q(\byte_controller.bit_controller.sda_oen_master ),
    .SET_B(_0310_),
    .CLK(clknet_leaf_27_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2262_ (.D(_0436_),
    .Q(\byte_controller.bit_controller.cmd_stop ),
    .RESET_B(_0311_),
    .CLK(clknet_leaf_24_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2263_ (.D(_0437_),
    .Q(\byte_controller.bit_controller.fSCL[0] ),
    .SET_B(_0312_),
    .CLK(clknet_leaf_4_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2264_ (.D(_0438_),
    .Q(\byte_controller.bit_controller.fSCL[1] ),
    .SET_B(_0313_),
    .CLK(clknet_leaf_4_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2265_ (.D(_0439_),
    .Q(\byte_controller.bit_controller.fSCL[2] ),
    .SET_B(_0314_),
    .CLK(clknet_leaf_3_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2266_ (.D(_0440_),
    .Q(\byte_controller.bit_controller.fSDA[0] ),
    .SET_B(_0315_),
    .CLK(clknet_leaf_3_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2267_ (.D(_0441_),
    .Q(\byte_controller.bit_controller.fSDA[1] ),
    .SET_B(_0316_),
    .CLK(clknet_leaf_3_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2268_ (.D(_0442_),
    .Q(\byte_controller.bit_controller.fSDA[2] ),
    .SET_B(_0317_),
    .CLK(clknet_leaf_4_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2269_ (.D(_0443_),
    .Q(\byte_controller.bit_controller.cnt[0] ),
    .RESET_B(_0318_),
    .CLK(clknet_leaf_13_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2270_ (.D(_0444_),
    .Q(\byte_controller.bit_controller.cnt[1] ),
    .RESET_B(_0319_),
    .CLK(clknet_leaf_13_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2271_ (.D(_0445_),
    .Q(\byte_controller.bit_controller.cnt[2] ),
    .RESET_B(_0320_),
    .CLK(clknet_leaf_13_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2272_ (.D(_0446_),
    .Q(\byte_controller.bit_controller.cnt[3] ),
    .RESET_B(_0321_),
    .CLK(clknet_leaf_13_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2273_ (.D(_0447_),
    .Q(\byte_controller.bit_controller.cnt[4] ),
    .RESET_B(_0322_),
    .CLK(clknet_leaf_12_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2274_ (.D(_0448_),
    .Q(\byte_controller.bit_controller.cnt[5] ),
    .RESET_B(_0323_),
    .CLK(clknet_leaf_12_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2275_ (.D(_0449_),
    .Q(\byte_controller.bit_controller.cnt[6] ),
    .RESET_B(_0324_),
    .CLK(clknet_leaf_12_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2276_ (.D(_0450_),
    .Q(\byte_controller.bit_controller.cnt[7] ),
    .RESET_B(_0325_),
    .CLK(clknet_leaf_11_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2277_ (.D(_0451_),
    .Q(\byte_controller.bit_controller.cnt[8] ),
    .RESET_B(_0326_),
    .CLK(clknet_leaf_11_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2278_ (.D(_0452_),
    .Q(\byte_controller.bit_controller.cnt[9] ),
    .RESET_B(_0327_),
    .CLK(clknet_leaf_11_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2279_ (.D(_0453_),
    .Q(\byte_controller.bit_controller.cnt[10] ),
    .RESET_B(_0328_),
    .CLK(clknet_leaf_11_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2280_ (.D(_0454_),
    .Q(\byte_controller.bit_controller.cnt[11] ),
    .RESET_B(_0329_),
    .CLK(clknet_leaf_11_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2281_ (.D(_0455_),
    .Q(\byte_controller.bit_controller.cnt[12] ),
    .RESET_B(_0330_),
    .CLK(clknet_leaf_7_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2282_ (.D(_0456_),
    .Q(\byte_controller.bit_controller.cnt[13] ),
    .RESET_B(_0331_),
    .CLK(clknet_leaf_6_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2283_ (.D(_0457_),
    .Q(\byte_controller.bit_controller.cnt[14] ),
    .RESET_B(_0332_),
    .CLK(clknet_leaf_11_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2284_ (.D(_0458_),
    .Q(\byte_controller.bit_controller.cnt[15] ),
    .RESET_B(_0333_),
    .CLK(clknet_leaf_11_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2285_ (.D(_0459_),
    .Q(slave_mode),
    .RESET_B(_0334_),
    .CLK(clknet_leaf_18_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2286_ (.D(_0460_),
    .Q(\cr[0] ),
    .RESET_B(_0335_),
    .CLK(clknet_leaf_18_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2287_ (.D(_0461_),
    .Q(\byte_controller.sl_cont ),
    .RESET_B(_0336_),
    .CLK(clknet_leaf_19_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2288_ (.D(_0462_),
    .Q(\cr[2] ),
    .RESET_B(_0337_),
    .CLK(clknet_leaf_14_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2289_ (.D(_0463_),
    .Q(\byte_controller.bit_controller.clk_cnt[0] ),
    .SET_B(_0338_),
    .CLK(clknet_leaf_16_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2290_ (.D(_0464_),
    .Q(\byte_controller.bit_controller.clk_cnt[1] ),
    .SET_B(_0339_),
    .CLK(clknet_leaf_12_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2291_ (.D(_0465_),
    .Q(\byte_controller.bit_controller.clk_cnt[2] ),
    .SET_B(_0340_),
    .CLK(clknet_leaf_12_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2292_ (.D(_0466_),
    .Q(\byte_controller.bit_controller.clk_cnt[3] ),
    .SET_B(_0341_),
    .CLK(clknet_leaf_12_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2293_ (.D(_0467_),
    .Q(\byte_controller.bit_controller.clk_cnt[4] ),
    .SET_B(_0342_),
    .CLK(clknet_leaf_12_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2294_ (.D(_0468_),
    .Q(\byte_controller.bit_controller.clk_cnt[5] ),
    .SET_B(_0343_),
    .CLK(clknet_leaf_11_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2295_ (.D(_0469_),
    .Q(\byte_controller.bit_controller.clk_cnt[6] ),
    .SET_B(_0344_),
    .CLK(clknet_leaf_11_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2296_ (.D(_0470_),
    .Q(\byte_controller.bit_controller.clk_cnt[7] ),
    .SET_B(_0345_),
    .CLK(clknet_leaf_10_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2297_ (.D(_0471_),
    .Q(\byte_controller.bit_controller.clk_cnt[8] ),
    .SET_B(_0346_),
    .CLK(clknet_leaf_10_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2298_ (.D(_0472_),
    .Q(\byte_controller.bit_controller.clk_cnt[9] ),
    .SET_B(_0347_),
    .CLK(clknet_leaf_10_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2299_ (.D(_0473_),
    .Q(\byte_controller.bit_controller.clk_cnt[10] ),
    .SET_B(_0348_),
    .CLK(clknet_leaf_10_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2300_ (.D(_0474_),
    .Q(\byte_controller.bit_controller.clk_cnt[11] ),
    .SET_B(_0349_),
    .CLK(clknet_leaf_7_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2301_ (.D(_0475_),
    .Q(\byte_controller.bit_controller.clk_cnt[12] ),
    .SET_B(_0350_),
    .CLK(clknet_leaf_7_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2302_ (.D(_0476_),
    .Q(\byte_controller.bit_controller.clk_cnt[13] ),
    .SET_B(_0351_),
    .CLK(clknet_leaf_7_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2303_ (.D(_0477_),
    .Q(\byte_controller.bit_controller.clk_cnt[14] ),
    .SET_B(_0352_),
    .CLK(clknet_leaf_7_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _2304_ (.D(_0478_),
    .Q(\byte_controller.bit_controller.clk_cnt[15] ),
    .SET_B(_0353_),
    .CLK(clknet_leaf_10_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2305_ (.D(_0479_),
    .Q(\ctr[0] ),
    .RESET_B(_0354_),
    .CLK(clknet_leaf_14_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2306_ (.D(_0480_),
    .Q(\ctr[1] ),
    .RESET_B(_0355_),
    .CLK(clknet_leaf_14_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2307_ (.D(_0481_),
    .Q(\ctr[2] ),
    .RESET_B(_0356_),
    .CLK(clknet_leaf_13_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2308_ (.D(_0482_),
    .Q(\ctr[3] ),
    .RESET_B(_0357_),
    .CLK(clknet_leaf_14_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2309_ (.D(_0483_),
    .Q(\ctr[4] ),
    .RESET_B(_0358_),
    .CLK(clknet_leaf_14_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _2310_ (.D(_0484_),
    .Q(\byte_controller.slave_en ),
    .RESET_B(_0359_),
    .CLK(clknet_leaf_14_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _2311_ (.D(_0485_),
    .Q(\ctr[6] ),
    .RESET_B(_0360_),
    .CLK(clknet_leaf_15_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2312_ (.D(_0486_),
    .Q(\byte_controller.bit_controller.ena ),
    .RESET_B(_0361_),
    .CLK(clknet_leaf_14_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _2313_ (.D(_0487_),
    .Q(\byte_controller.ack_in ),
    .RESET_B(_0362_),
    .CLK(clknet_leaf_10_wb_clk_i));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_62 ();
 sky130_fd_sc_hd__decap_3 PHY_63 ();
 sky130_fd_sc_hd__decap_3 PHY_64 ();
 sky130_fd_sc_hd__decap_3 PHY_65 ();
 sky130_fd_sc_hd__decap_3 PHY_66 ();
 sky130_fd_sc_hd__decap_3 PHY_67 ();
 sky130_fd_sc_hd__decap_3 PHY_68 ();
 sky130_fd_sc_hd__decap_3 PHY_69 ();
 sky130_fd_sc_hd__decap_3 PHY_70 ();
 sky130_fd_sc_hd__decap_3 PHY_71 ();
 sky130_fd_sc_hd__decap_3 PHY_72 ();
 sky130_fd_sc_hd__decap_3 PHY_73 ();
 sky130_fd_sc_hd__decap_3 PHY_74 ();
 sky130_fd_sc_hd__decap_3 PHY_75 ();
 sky130_fd_sc_hd__decap_3 PHY_76 ();
 sky130_fd_sc_hd__decap_3 PHY_77 ();
 sky130_fd_sc_hd__decap_3 PHY_78 ();
 sky130_fd_sc_hd__decap_3 PHY_79 ();
 sky130_fd_sc_hd__decap_3 PHY_80 ();
 sky130_fd_sc_hd__decap_3 PHY_81 ();
 sky130_fd_sc_hd__decap_3 PHY_82 ();
 sky130_fd_sc_hd__decap_3 PHY_83 ();
 sky130_fd_sc_hd__decap_3 PHY_84 ();
 sky130_fd_sc_hd__decap_3 PHY_85 ();
 sky130_fd_sc_hd__decap_3 PHY_86 ();
 sky130_fd_sc_hd__decap_3 PHY_87 ();
 sky130_fd_sc_hd__decap_3 PHY_88 ();
 sky130_fd_sc_hd__decap_3 PHY_89 ();
 sky130_fd_sc_hd__decap_3 PHY_90 ();
 sky130_fd_sc_hd__decap_3 PHY_91 ();
 sky130_fd_sc_hd__decap_3 PHY_92 ();
 sky130_fd_sc_hd__decap_3 PHY_93 ();
 sky130_fd_sc_hd__decap_3 PHY_94 ();
 sky130_fd_sc_hd__decap_3 PHY_95 ();
 sky130_fd_sc_hd__decap_3 PHY_96 ();
 sky130_fd_sc_hd__decap_3 PHY_97 ();
 sky130_fd_sc_hd__decap_3 PHY_98 ();
 sky130_fd_sc_hd__decap_3 PHY_99 ();
 sky130_fd_sc_hd__decap_3 PHY_100 ();
 sky130_fd_sc_hd__decap_3 PHY_101 ();
 sky130_fd_sc_hd__decap_3 PHY_102 ();
 sky130_fd_sc_hd__decap_3 PHY_103 ();
 sky130_fd_sc_hd__decap_3 PHY_104 ();
 sky130_fd_sc_hd__decap_3 PHY_105 ();
 sky130_fd_sc_hd__decap_3 PHY_106 ();
 sky130_fd_sc_hd__decap_3 PHY_107 ();
 sky130_fd_sc_hd__decap_3 PHY_108 ();
 sky130_fd_sc_hd__decap_3 PHY_109 ();
 sky130_fd_sc_hd__decap_3 PHY_110 ();
 sky130_fd_sc_hd__decap_3 PHY_111 ();
 sky130_fd_sc_hd__decap_3 PHY_112 ();
 sky130_fd_sc_hd__decap_3 PHY_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_292 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_293 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_294 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_295 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_296 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_297 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_298 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_299 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_300 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_301 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_302 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_303 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_304 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_305 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_306 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_307 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_308 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_309 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_310 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_311 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_312 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_313 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_314 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_315 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_316 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_317 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_318 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_319 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_320 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_321 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_322 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_323 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_324 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_325 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_326 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_327 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_328 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_329 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_330 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_331 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_332 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_333 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_334 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_335 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_336 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_337 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_338 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_339 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_340 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_341 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_342 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_343 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_344 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_345 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_346 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_347 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_348 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_349 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_350 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_351 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_352 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_353 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_354 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_355 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_356 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_357 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_358 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_359 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_360 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_361 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_362 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_363 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_364 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_365 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_366 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_367 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_368 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_369 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_370 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_371 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_372 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_373 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_374 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_375 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_376 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_377 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_378 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_379 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_380 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_381 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_382 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_383 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_384 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_385 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_386 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_387 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_388 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_389 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_390 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_391 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_392 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_393 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_394 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_395 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_396 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_397 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_398 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_399 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_400 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_401 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_402 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_403 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_404 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_405 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_406 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_407 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_408 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_409 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_410 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_411 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_412 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_413 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_414 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_415 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_416 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_417 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_418 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_419 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_420 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_421 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_422 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_423 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_424 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_425 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_426 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_427 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_428 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_429 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_430 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_431 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_432 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_433 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_434 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_435 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_436 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_437 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(arst_i),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(scl_pad_i),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_2 input3 (.A(sda_pad_i),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_2 input4 (.A(wb_adr_i[0]),
    .X(net4));
 sky130_fd_sc_hd__buf_2 input5 (.A(wb_adr_i[1]),
    .X(net5));
 sky130_fd_sc_hd__buf_2 input6 (.A(wb_adr_i[2]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_2 input7 (.A(wb_cyc_i),
    .X(net7));
 sky130_fd_sc_hd__buf_2 input8 (.A(wb_dat_i[0]),
    .X(net8));
 sky130_fd_sc_hd__buf_2 input9 (.A(wb_dat_i[1]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_2 input10 (.A(wb_dat_i[2]),
    .X(net10));
 sky130_fd_sc_hd__buf_2 input11 (.A(wb_dat_i[3]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_4 input12 (.A(wb_dat_i[4]),
    .X(net12));
 sky130_fd_sc_hd__buf_2 input13 (.A(wb_dat_i[5]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_2 input14 (.A(wb_dat_i[6]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_2 input15 (.A(wb_dat_i[7]),
    .X(net15));
 sky130_fd_sc_hd__buf_2 input16 (.A(wb_rst_i),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(wb_stb_i),
    .X(net17));
 sky130_fd_sc_hd__buf_1 input18 (.A(wb_we_i),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_2 output19 (.A(net19),
    .X(scl_pad_o));
 sky130_fd_sc_hd__clkbuf_2 output20 (.A(net20),
    .X(scl_padoen_o));
 sky130_fd_sc_hd__clkbuf_2 output21 (.A(net21),
    .X(sda_pad_o));
 sky130_fd_sc_hd__clkbuf_2 output22 (.A(net22),
    .X(sda_padoen_o));
 sky130_fd_sc_hd__clkbuf_2 output23 (.A(net23),
    .X(wb_ack_o));
 sky130_fd_sc_hd__clkbuf_2 output24 (.A(net24),
    .X(wb_dat_o[0]));
 sky130_fd_sc_hd__clkbuf_2 output25 (.A(net25),
    .X(wb_dat_o[1]));
 sky130_fd_sc_hd__clkbuf_2 output26 (.A(net26),
    .X(wb_dat_o[2]));
 sky130_fd_sc_hd__clkbuf_2 output27 (.A(net27),
    .X(wb_dat_o[3]));
 sky130_fd_sc_hd__clkbuf_2 output28 (.A(net28),
    .X(wb_dat_o[4]));
 sky130_fd_sc_hd__clkbuf_2 output29 (.A(net29),
    .X(wb_dat_o[5]));
 sky130_fd_sc_hd__clkbuf_2 output30 (.A(net30),
    .X(wb_dat_o[6]));
 sky130_fd_sc_hd__clkbuf_2 output31 (.A(net31),
    .X(wb_dat_o[7]));
 sky130_fd_sc_hd__clkbuf_2 output32 (.A(net32),
    .X(wb_inta_o));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_0_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_1_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_1_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_2_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_2_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_3_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_3_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_4_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_4_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_5_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_5_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_6_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_6_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_7_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_7_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_8_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_8_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_9_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_9_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_10_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_10_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_11_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_11_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_12_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_12_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_13_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_13_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_14_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_14_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_15_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_15_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_16_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_16_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_17_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_17_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_18_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_18_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_19_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_19_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_20_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_20_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_21_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_21_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_22_wb_clk_i (.A(clknet_1_1__leaf_wb_clk_i),
    .X(clknet_leaf_22_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_23_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_23_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_24_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_24_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_25_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_25_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_26_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_26_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_leaf_27_wb_clk_i (.A(clknet_1_0__leaf_wb_clk_i),
    .X(clknet_leaf_27_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_wb_clk_i (.A(wb_clk_i),
    .X(clknet_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_1_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_1_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__diode_2 ANTENNA_0 (.DIODE(_0000_));
 sky130_fd_sc_hd__diode_2 ANTENNA_1 (.DIODE(_0172_));
 sky130_fd_sc_hd__diode_2 ANTENNA_2 (.DIODE(_0761_));
 sky130_fd_sc_hd__diode_2 ANTENNA_3 (.DIODE(_0948_));
 sky130_fd_sc_hd__diode_2 ANTENNA_4 (.DIODE(_1047_));
 sky130_fd_sc_hd__diode_2 ANTENNA_5 (.DIODE(\byte_controller.bit_controller.clk_cnt[15] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_6 (.DIODE(net7));
 sky130_fd_sc_hd__decap_4 FILLER_0_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_38 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_46 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_59 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_71 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_88 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_101 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_117 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_124 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_128 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_146 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_153 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_160 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_167 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_173 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_175 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_183 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_190 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_194 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_199 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_204 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_228 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_233 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_257 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_262 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_266 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_283 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_289 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_291 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_299 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_306 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_313 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_320 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_328 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_336 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_18 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_106 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_142 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_163 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_178 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_182 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_189 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_197 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_219 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_227 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_236 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_244 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_268 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_275 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_283 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_286 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_290 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_294 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_302 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_326 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_7 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_67 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_99 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_123 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_131 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_136 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_168 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_175 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_182 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_189 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_196 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_211 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_219 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_226 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_250 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_258 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_268 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_296 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_304 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_312 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_315 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_322 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_328 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_6 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_13 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_25 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_31 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_43 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_56 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_77 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_88 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_127 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_153 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_160 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_172 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_179 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_187 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_208 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_214 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_220 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_229 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_241 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_251 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_259 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_265 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_271 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_281 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_329 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_21 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_25 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_80 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_93 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_144 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_152 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_159 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_187 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_191 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_212 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_219 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_246 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_253 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_270 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_279 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_287 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_295 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_303 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_329 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_53 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_74 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_96 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_106 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_140 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_170 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_172 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_185 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_208 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_217 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_236 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_249 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_269 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_277 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_286 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_294 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_317 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_325 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_329 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_21 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_64 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_132 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_152 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_159 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_163 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_167 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_171 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_175 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_187 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_191 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_211 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_220 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_229 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_235 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_245 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_252 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_268 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_275 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_323 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_330 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_336 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_86 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_110 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_121 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_143 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_150 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_157 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_170 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_185 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_192 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_206 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_214 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_242 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_251 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_259 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_268 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_277 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_295 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_304 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_333 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_23 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_44 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_63 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_73 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_101 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_109 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_132 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_144 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_151 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_159 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_181 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_193 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_199 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_209 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_217 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_236 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_248 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_270 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_274 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_284 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_298 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_308 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_16 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_28 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_32 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_49 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_73 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_90 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_101 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_108 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_122 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_129 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_133 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_155 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_162 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_170 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_184 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_192 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_200 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_207 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_216 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_223 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_227 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_229 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_242 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_248 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_258 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_266 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_275 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_283 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_286 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_297 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_326 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_13 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_34 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_51 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_69 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_87 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_96 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_112 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_150 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_178 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_182 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_189 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_201 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_209 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_215 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_221 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_234 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_242 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_248 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_256 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_275 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_284 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_291 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_302 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_315 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_322 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_328 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_333 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_38 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_124 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_149 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_156 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_163 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_207 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_216 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_223 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_227 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_239 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_243 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_247 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_258 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_269 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_275 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_281 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_286 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_290 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_299 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_327 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_335 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_12 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_45 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_73 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_94 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_130 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_151 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_176 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_182 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_186 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_195 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_199 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_211 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_219 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_232 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_238 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_248 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_267 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_271 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_280 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_286 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_294 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_329 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_7 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_19 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_25 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_31 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_90 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_110 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_123 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_150 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_156 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_170 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_204 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_211 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_220 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_241 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_250 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_262 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_271 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_280 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_284 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_294 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_302 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_308 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_26 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_67 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_87 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_99 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_107 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_129 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_137 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_168 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_181 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_188 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_214 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_218 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_228 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_241 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_250 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_256 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_258 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_266 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_270 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_279 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_288 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_296 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_304 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_315 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_322 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_328 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_336 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_7 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_56 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_98 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_108 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_122 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_149 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_155 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_196 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_220 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_229 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_242 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_271 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_277 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_281 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_329 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_14 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_26 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_33 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_56 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_78 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_87 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_95 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_104 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_128 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_144 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_151 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_157 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_182 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_190 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_198 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_207 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_211 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_215 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_236 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_243 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_250 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_256 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_258 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_266 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_276 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_283 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_289 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_329 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_47 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_69 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_76 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_101 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_122 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_126 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_130 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_157 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_172 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_184 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_194 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_218 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_226 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_229 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_238 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_244 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_265 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_272 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_281 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_286 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_298 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_307 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_311 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_333 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_87 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_117 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_124 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_152 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_159 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_163 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_173 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_181 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_187 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_199 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_214 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_221 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_233 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_237 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_250 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_258 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_271 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_292 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_300 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_307 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_313 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_315 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_322 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_328 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_9 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_13 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_39 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_76 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_92 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_140 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_170 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_172 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_184 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_215 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_222 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_240 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_247 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_271 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_277 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_281 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_286 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_294 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_316 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_323 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_330 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_336 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_43 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_47 ();
 sky130_fd_sc_hd__decap_8 FILLER_20_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_20_67 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_120 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_124 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_128 ();
 sky130_fd_sc_hd__decap_6 FILLER_20_136 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_151 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_155 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_173 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_197 ();
 sky130_fd_sc_hd__decap_8 FILLER_20_201 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_209 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_237 ();
 sky130_fd_sc_hd__decap_8 FILLER_20_247 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_255 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_258 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_262 ();
 sky130_fd_sc_hd__decap_6 FILLER_20_283 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_289 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_20_329 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_21_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_34 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_48 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_21_58 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_66 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_89 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_96 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_100 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_123 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_130 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_136 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_145 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_172 ();
 sky130_fd_sc_hd__decap_12 FILLER_21_192 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_204 ();
 sky130_fd_sc_hd__decap_8 FILLER_21_208 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_226 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_229 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_255 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_281 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_296 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_303 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_309 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_333 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_28 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_38 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_59 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_70 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_22_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_124 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_131 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_22_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_150 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_160 ();
 sky130_fd_sc_hd__decap_12 FILLER_22_173 ();
 sky130_fd_sc_hd__decap_6 FILLER_22_185 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_201 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_227 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_243 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_252 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_256 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_258 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_269 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_277 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_298 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_305 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_313 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_329 ();
 sky130_fd_sc_hd__decap_12 FILLER_23_6 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_18 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_66 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_74 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_79 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_90 ();
 sky130_fd_sc_hd__decap_6 FILLER_23_98 ();
 sky130_fd_sc_hd__decap_6 FILLER_23_108 ();
 sky130_fd_sc_hd__decap_6 FILLER_23_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_126 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_150 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_162 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_170 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_204 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_220 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_229 ();
 sky130_fd_sc_hd__decap_6 FILLER_23_237 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_243 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_264 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_276 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_284 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_293 ();
 sky130_fd_sc_hd__decap_6 FILLER_23_300 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_309 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_333 ();
 sky130_fd_sc_hd__decap_6 FILLER_24_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_43 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_50 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_65 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_156 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_164 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_176 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_183 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_187 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_225 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_233 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_241 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_249 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_258 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_262 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_271 ();
 sky130_fd_sc_hd__decap_6 FILLER_24_283 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_289 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_329 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_10 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_17 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_32 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_49 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_66 ();
 sky130_fd_sc_hd__decap_6 FILLER_25_83 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_89 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_115 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_124 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_152 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_159 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_216 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_223 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_227 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_257 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_265 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_281 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_293 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_300 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_308 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_333 ();
 sky130_fd_sc_hd__fill_2 FILLER_26_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_40 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_26_73 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_26_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_148 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_158 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_182 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_195 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_199 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_201 ();
 sky130_fd_sc_hd__decap_8 FILLER_26_214 ();
 sky130_fd_sc_hd__decap_6 FILLER_26_229 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_235 ();
 sky130_fd_sc_hd__decap_8 FILLER_26_249 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_258 ();
 sky130_fd_sc_hd__decap_6 FILLER_26_270 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_276 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_285 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_289 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_26_329 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_11 ();
 sky130_fd_sc_hd__decap_8 FILLER_27_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_26 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_32 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_27_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_95 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_147 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_151 ();
 sky130_fd_sc_hd__decap_8 FILLER_27_161 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_176 ();
 sky130_fd_sc_hd__decap_8 FILLER_27_197 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_214 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_218 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_229 ();
 sky130_fd_sc_hd__decap_8 FILLER_27_240 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_248 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_269 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_281 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_300 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_308 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_312 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_28_7 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_19 ();
 sky130_fd_sc_hd__fill_2 FILLER_28_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_28_36 ();
 sky130_fd_sc_hd__decap_6 FILLER_28_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_70 ();
 sky130_fd_sc_hd__decap_6 FILLER_28_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_95 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_103 ();
 sky130_fd_sc_hd__decap_6 FILLER_28_110 ();
 sky130_fd_sc_hd__decap_6 FILLER_28_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_127 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_151 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_155 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_159 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_167 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_184 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_214 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_225 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_236 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_247 ();
 sky130_fd_sc_hd__fill_2 FILLER_28_255 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_258 ();
 sky130_fd_sc_hd__decap_6 FILLER_28_272 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_282 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_294 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_306 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_315 ();
 sky130_fd_sc_hd__decap_6 FILLER_28_322 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_328 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_333 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_8 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_41 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_77 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_86 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_92 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_101 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_115 ();
 sky130_fd_sc_hd__decap_8 FILLER_29_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_151 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_170 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_178 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_188 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_212 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_216 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_237 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_248 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_255 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_266 ();
 sky130_fd_sc_hd__decap_8 FILLER_29_277 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_286 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_290 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_294 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_306 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_336 ();
 sky130_fd_sc_hd__decap_6 FILLER_30_23 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_30 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_38 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_64 ();
 sky130_fd_sc_hd__decap_6 FILLER_30_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_95 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_116 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_124 ();
 sky130_fd_sc_hd__decap_6 FILLER_30_130 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_144 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_151 ();
 sky130_fd_sc_hd__decap_6 FILLER_30_179 ();
 sky130_fd_sc_hd__decap_6 FILLER_30_194 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_205 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_210 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_234 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_242 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_253 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_258 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_266 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_274 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_310 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_326 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_333 ();
 sky130_fd_sc_hd__decap_12 FILLER_31_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_19 ();
 sky130_fd_sc_hd__decap_12 FILLER_31_25 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_37 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_31_106 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_119 ();
 sky130_fd_sc_hd__decap_6 FILLER_31_124 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_133 ();
 sky130_fd_sc_hd__decap_8 FILLER_31_140 ();
 sky130_fd_sc_hd__decap_6 FILLER_31_151 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_160 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_184 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_188 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_197 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_210 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_214 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_224 ();
 sky130_fd_sc_hd__decap_6 FILLER_31_229 ();
 sky130_fd_sc_hd__decap_8 FILLER_31_242 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_250 ();
 sky130_fd_sc_hd__decap_8 FILLER_31_264 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_272 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_280 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_284 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_298 ();
 sky130_fd_sc_hd__decap_6 FILLER_31_306 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_312 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_333 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_32_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_72 ();
 sky130_fd_sc_hd__decap_6 FILLER_32_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_87 ();
 sky130_fd_sc_hd__decap_6 FILLER_32_114 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_132 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_156 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_182 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_189 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_196 ();
 sky130_fd_sc_hd__decap_8 FILLER_32_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_216 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_220 ();
 sky130_fd_sc_hd__decap_8 FILLER_32_230 ();
 sky130_fd_sc_hd__fill_2 FILLER_32_238 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_252 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_271 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_279 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_291 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_295 ();
 sky130_fd_sc_hd__decap_8 FILLER_32_304 ();
 sky130_fd_sc_hd__fill_2 FILLER_32_312 ();
 sky130_fd_sc_hd__decap_8 FILLER_32_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_326 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_23 ();
 sky130_fd_sc_hd__decap_8 FILLER_33_47 ();
 sky130_fd_sc_hd__fill_2 FILLER_33_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_33_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_33_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_77 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_99 ();
 sky130_fd_sc_hd__decap_8 FILLER_33_106 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_124 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_149 ();
 sky130_fd_sc_hd__decap_8 FILLER_33_162 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_170 ();
 sky130_fd_sc_hd__decap_6 FILLER_33_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_178 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_182 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_206 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_213 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_242 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_251 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_259 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_263 ();
 sky130_fd_sc_hd__decap_8 FILLER_33_276 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_284 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_293 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_305 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_309 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_11 ();
 sky130_fd_sc_hd__decap_8 FILLER_34_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_49 ();
 sky130_fd_sc_hd__decap_8 FILLER_34_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_87 ();
 sky130_fd_sc_hd__decap_6 FILLER_34_96 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_123 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_160 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_167 ();
 sky130_fd_sc_hd__decap_8 FILLER_34_180 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_188 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_196 ();
 sky130_fd_sc_hd__decap_6 FILLER_34_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_207 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_217 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_230 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_243 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_271 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_282 ();
 sky130_fd_sc_hd__decap_6 FILLER_34_294 ();
 sky130_fd_sc_hd__decap_6 FILLER_34_308 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_326 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_45 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_83 ();
 sky130_fd_sc_hd__decap_6 FILLER_35_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_122 ();
 sky130_fd_sc_hd__fill_2 FILLER_35_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_150 ();
 sky130_fd_sc_hd__decap_12 FILLER_35_157 ();
 sky130_fd_sc_hd__fill_2 FILLER_35_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_183 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_187 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_191 ();
 sky130_fd_sc_hd__decap_8 FILLER_35_203 ();
 sky130_fd_sc_hd__decap_8 FILLER_35_220 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_239 ();
 sky130_fd_sc_hd__decap_8 FILLER_35_255 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_263 ();
 sky130_fd_sc_hd__decap_8 FILLER_35_276 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_284 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_286 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_290 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_295 ();
 sky130_fd_sc_hd__decap_6 FILLER_35_307 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_333 ();
 sky130_fd_sc_hd__decap_12 FILLER_36_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_36_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_36_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_74 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_80 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_87 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_106 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_142 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_158 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_167 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_180 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_188 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_196 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_218 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_231 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_239 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_249 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_258 ();
 sky130_fd_sc_hd__fill_2 FILLER_36_266 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_277 ();
 sky130_fd_sc_hd__fill_2 FILLER_36_285 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_295 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_307 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_313 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_323 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_330 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_336 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_37 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_37_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_87 ();
 sky130_fd_sc_hd__decap_6 FILLER_37_94 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_37_146 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_152 ();
 sky130_fd_sc_hd__decap_6 FILLER_37_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_179 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_203 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_214 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_218 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_224 ();
 sky130_fd_sc_hd__decap_8 FILLER_37_229 ();
 sky130_fd_sc_hd__fill_2 FILLER_37_237 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_260 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_272 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_281 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_299 ();
 sky130_fd_sc_hd__decap_6 FILLER_37_306 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_312 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_34 ();
 sky130_fd_sc_hd__decap_6 FILLER_38_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_49 ();
 sky130_fd_sc_hd__decap_8 FILLER_38_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_38_87 ();
 sky130_fd_sc_hd__fill_2 FILLER_38_95 ();
 sky130_fd_sc_hd__decap_8 FILLER_38_117 ();
 sky130_fd_sc_hd__fill_2 FILLER_38_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_38_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_169 ();
 sky130_fd_sc_hd__decap_6 FILLER_38_180 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_186 ();
 sky130_fd_sc_hd__decap_6 FILLER_38_194 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_201 ();
 sky130_fd_sc_hd__decap_8 FILLER_38_210 ();
 sky130_fd_sc_hd__fill_2 FILLER_38_218 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_224 ();
 sky130_fd_sc_hd__decap_8 FILLER_38_248 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_258 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_262 ();
 sky130_fd_sc_hd__decap_6 FILLER_38_284 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_310 ();
 sky130_fd_sc_hd__decap_6 FILLER_38_315 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_321 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_325 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_9 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_13 ();
 sky130_fd_sc_hd__decap_8 FILLER_39_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_39_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_39_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_66 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_73 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_39_104 ();
 sky130_fd_sc_hd__fill_2 FILLER_39_112 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_122 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_126 ();
 sky130_fd_sc_hd__decap_8 FILLER_39_148 ();
 sky130_fd_sc_hd__decap_12 FILLER_39_159 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_197 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_209 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_213 ();
 sky130_fd_sc_hd__decap_8 FILLER_39_219 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_227 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_229 ();
 sky130_fd_sc_hd__decap_8 FILLER_39_241 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_270 ();
 sky130_fd_sc_hd__decap_6 FILLER_39_278 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_284 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_298 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_302 ();
 sky130_fd_sc_hd__decap_6 FILLER_39_323 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_329 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_333 ();
 sky130_fd_sc_hd__fill_2 FILLER_40_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_16 ();
 sky130_fd_sc_hd__decap_8 FILLER_40_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_34 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_43 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_87 ();
 sky130_fd_sc_hd__decap_3 FILLER_40_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_123 ();
 sky130_fd_sc_hd__decap_6 FILLER_40_137 ();
 sky130_fd_sc_hd__decap_12 FILLER_40_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_156 ();
 sky130_fd_sc_hd__decap_8 FILLER_40_160 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_176 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_188 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_205 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_210 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_218 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_243 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_247 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_252 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_265 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_289 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_297 ();
 sky130_fd_sc_hd__decap_8 FILLER_40_304 ();
 sky130_fd_sc_hd__fill_2 FILLER_40_312 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_322 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_326 ();
 sky130_fd_sc_hd__decap_6 FILLER_40_330 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_336 ();
 sky130_fd_sc_hd__fill_2 FILLER_41_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_33 ();
 sky130_fd_sc_hd__decap_8 FILLER_41_37 ();
 sky130_fd_sc_hd__decap_6 FILLER_41_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_89 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_101 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_119 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_172 ();
 sky130_fd_sc_hd__decap_8 FILLER_41_183 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_191 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_213 ();
 sky130_fd_sc_hd__decap_6 FILLER_41_221 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_227 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_229 ();
 sky130_fd_sc_hd__decap_6 FILLER_41_237 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_247 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_272 ();
 sky130_fd_sc_hd__decap_6 FILLER_41_279 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_286 ();
 sky130_fd_sc_hd__decap_8 FILLER_41_310 ();
 sky130_fd_sc_hd__decap_8 FILLER_41_321 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_336 ();
 sky130_fd_sc_hd__decap_8 FILLER_42_19 ();
 sky130_fd_sc_hd__fill_2 FILLER_42_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_38 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_51 ();
 sky130_fd_sc_hd__decap_6 FILLER_42_59 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_42_90 ();
 sky130_fd_sc_hd__decap_3 FILLER_42_105 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_122 ();
 sky130_fd_sc_hd__decap_8 FILLER_42_134 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_151 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_155 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_159 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_166 ();
 sky130_fd_sc_hd__decap_8 FILLER_42_174 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_182 ();
 sky130_fd_sc_hd__decap_6 FILLER_42_186 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_210 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_218 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_230 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_243 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_247 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_253 ();
 sky130_fd_sc_hd__decap_8 FILLER_42_258 ();
 sky130_fd_sc_hd__fill_2 FILLER_42_266 ();
 sky130_fd_sc_hd__decap_8 FILLER_42_277 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_285 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_289 ();
 sky130_fd_sc_hd__decap_6 FILLER_42_296 ();
 sky130_fd_sc_hd__decap_8 FILLER_42_305 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_313 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_42_329 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_43_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_43_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_43_74 ();
 sky130_fd_sc_hd__decap_8 FILLER_43_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_43_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_43_115 ();
 sky130_fd_sc_hd__decap_3 FILLER_43_127 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_133 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_145 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_43_156 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_160 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_172 ();
 sky130_fd_sc_hd__decap_6 FILLER_43_197 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_224 ();
 sky130_fd_sc_hd__decap_6 FILLER_43_229 ();
 sky130_fd_sc_hd__fill_1 FILLER_43_235 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_245 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_257 ();
 sky130_fd_sc_hd__decap_6 FILLER_43_264 ();
 sky130_fd_sc_hd__fill_1 FILLER_43_270 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_274 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_281 ();
 sky130_fd_sc_hd__decap_8 FILLER_43_286 ();
 sky130_fd_sc_hd__fill_2 FILLER_43_294 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_299 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_323 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_43_336 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_67 ();
 sky130_fd_sc_hd__decap_8 FILLER_44_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_44_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_44_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_44_107 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_122 ();
 sky130_fd_sc_hd__decap_8 FILLER_44_134 ();
 sky130_fd_sc_hd__fill_1 FILLER_44_142 ();
 sky130_fd_sc_hd__decap_6 FILLER_44_144 ();
 sky130_fd_sc_hd__decap_8 FILLER_44_171 ();
 sky130_fd_sc_hd__decap_6 FILLER_44_187 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_201 ();
 sky130_fd_sc_hd__decap_8 FILLER_44_213 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_242 ();
 sky130_fd_sc_hd__decap_8 FILLER_44_249 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_283 ();
 sky130_fd_sc_hd__decap_6 FILLER_44_307 ();
 sky130_fd_sc_hd__fill_1 FILLER_44_313 ();
 sky130_fd_sc_hd__decap_6 FILLER_44_315 ();
 sky130_fd_sc_hd__fill_1 FILLER_44_321 ();
 sky130_fd_sc_hd__decap_8 FILLER_44_329 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_30 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_53 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_58 ();
 sky130_fd_sc_hd__decap_12 FILLER_45_69 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_81 ();
 sky130_fd_sc_hd__decap_12 FILLER_45_90 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_45_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_45_115 ();
 sky130_fd_sc_hd__decap_8 FILLER_45_148 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_45_170 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_181 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_45_195 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_200 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_237 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_245 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_257 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_269 ();
 sky130_fd_sc_hd__fill_1 FILLER_45_273 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_281 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_286 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_293 ();
 sky130_fd_sc_hd__fill_1 FILLER_45_299 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_309 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_46_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_14 ();
 sky130_fd_sc_hd__decap_8 FILLER_46_21 ();
 sky130_fd_sc_hd__decap_6 FILLER_46_30 ();
 sky130_fd_sc_hd__decap_6 FILLER_46_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_68 ();
 sky130_fd_sc_hd__decap_12 FILLER_46_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_46_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_46_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_144 ();
 sky130_fd_sc_hd__decap_6 FILLER_46_156 ();
 sky130_fd_sc_hd__fill_1 FILLER_46_162 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_171 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_226 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_238 ();
 sky130_fd_sc_hd__decap_6 FILLER_46_250 ();
 sky130_fd_sc_hd__fill_1 FILLER_46_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_265 ();
 sky130_fd_sc_hd__decap_8 FILLER_46_272 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_289 ();
 sky130_fd_sc_hd__decap_6 FILLER_46_296 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_326 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_47_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_14 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_38 ();
 sky130_fd_sc_hd__decap_8 FILLER_47_47 ();
 sky130_fd_sc_hd__fill_2 FILLER_47_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_58 ();
 sky130_fd_sc_hd__fill_2 FILLER_47_65 ();
 sky130_fd_sc_hd__decap_8 FILLER_47_90 ();
 sky130_fd_sc_hd__decap_3 FILLER_47_98 ();
 sky130_fd_sc_hd__decap_8 FILLER_47_106 ();
 sky130_fd_sc_hd__decap_12 FILLER_47_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_47_148 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_158 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_167 ();
 sky130_fd_sc_hd__decap_8 FILLER_47_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_188 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_195 ();
 sky130_fd_sc_hd__fill_1 FILLER_47_199 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_208 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_216 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_223 ();
 sky130_fd_sc_hd__fill_1 FILLER_47_227 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_229 ();
 sky130_fd_sc_hd__decap_6 FILLER_47_241 ();
 sky130_fd_sc_hd__fill_1 FILLER_47_247 ();
 sky130_fd_sc_hd__decap_6 FILLER_47_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_266 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_273 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_281 ();
 sky130_fd_sc_hd__decap_8 FILLER_47_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_303 ();
 sky130_fd_sc_hd__decap_8 FILLER_47_327 ();
 sky130_fd_sc_hd__fill_2 FILLER_47_335 ();
 sky130_fd_sc_hd__fill_1 FILLER_48_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_48_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_25 ();
 sky130_fd_sc_hd__decap_6 FILLER_48_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_48_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_48_70 ();
 sky130_fd_sc_hd__fill_1 FILLER_48_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_48_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_126 ();
 sky130_fd_sc_hd__decap_8 FILLER_48_135 ();
 sky130_fd_sc_hd__decap_8 FILLER_48_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_48_152 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_174 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_189 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_196 ();
 sky130_fd_sc_hd__decap_6 FILLER_48_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_211 ();
 sky130_fd_sc_hd__decap_6 FILLER_48_219 ();
 sky130_fd_sc_hd__fill_1 FILLER_48_225 ();
 sky130_fd_sc_hd__decap_8 FILLER_48_247 ();
 sky130_fd_sc_hd__fill_2 FILLER_48_255 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_258 ();
 sky130_fd_sc_hd__decap_6 FILLER_48_266 ();
 sky130_fd_sc_hd__decap_8 FILLER_48_293 ();
 sky130_fd_sc_hd__fill_1 FILLER_48_301 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_324 ();
 sky130_fd_sc_hd__fill_1 FILLER_48_328 ();
 sky130_fd_sc_hd__decap_4 FILLER_48_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_49_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_31 ();
 sky130_fd_sc_hd__decap_6 FILLER_49_40 ();
 sky130_fd_sc_hd__decap_8 FILLER_49_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_67 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_49_80 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_86 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_49_127 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_49_170 ();
 sky130_fd_sc_hd__decap_6 FILLER_49_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_49_178 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_199 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_236 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_244 ();
 sky130_fd_sc_hd__decap_4 FILLER_49_253 ();
 sky130_fd_sc_hd__decap_6 FILLER_49_278 ();
 sky130_fd_sc_hd__fill_1 FILLER_49_284 ();
 sky130_fd_sc_hd__decap_12 FILLER_49_286 ();
 sky130_fd_sc_hd__decap_12 FILLER_49_298 ();
 sky130_fd_sc_hd__decap_3 FILLER_49_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_50_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_37 ();
 sky130_fd_sc_hd__decap_6 FILLER_50_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_50_67 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_50_91 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_112 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_125 ();
 sky130_fd_sc_hd__decap_6 FILLER_50_137 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_151 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_164 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_188 ();
 sky130_fd_sc_hd__fill_1 FILLER_50_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_210 ();
 sky130_fd_sc_hd__fill_1 FILLER_50_214 ();
 sky130_fd_sc_hd__decap_8 FILLER_50_223 ();
 sky130_fd_sc_hd__fill_1 FILLER_50_231 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_253 ();
 sky130_fd_sc_hd__decap_6 FILLER_50_258 ();
 sky130_fd_sc_hd__fill_1 FILLER_50_264 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_271 ();
 sky130_fd_sc_hd__decap_6 FILLER_50_284 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_297 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_310 ();
 sky130_fd_sc_hd__fill_1 FILLER_50_315 ();
 sky130_fd_sc_hd__decap_12 FILLER_50_321 ();
 sky130_fd_sc_hd__decap_4 FILLER_50_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_51_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_51_49 ();
 sky130_fd_sc_hd__decap_8 FILLER_51_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_51_66 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_96 ();
 sky130_fd_sc_hd__decap_8 FILLER_51_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_51_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_115 ();
 sky130_fd_sc_hd__decap_8 FILLER_51_139 ();
 sky130_fd_sc_hd__fill_1 FILLER_51_147 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_156 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_51_176 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_184 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_194 ();
 sky130_fd_sc_hd__fill_1 FILLER_51_198 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_202 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_215 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_242 ();
 sky130_fd_sc_hd__decap_6 FILLER_51_254 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_269 ();
 sky130_fd_sc_hd__fill_1 FILLER_51_273 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_281 ();
 sky130_fd_sc_hd__decap_4 FILLER_51_286 ();
 sky130_fd_sc_hd__decap_8 FILLER_51_302 ();
 sky130_fd_sc_hd__fill_1 FILLER_51_336 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_25 ();
 sky130_fd_sc_hd__decap_6 FILLER_52_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_39 ();
 sky130_fd_sc_hd__decap_8 FILLER_52_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_52_60 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_52_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_52_101 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_105 ();
 sky130_fd_sc_hd__decap_8 FILLER_52_117 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_52_144 ();
 sky130_fd_sc_hd__decap_8 FILLER_52_159 ();
 sky130_fd_sc_hd__fill_1 FILLER_52_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_177 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_185 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_201 ();
 sky130_fd_sc_hd__decap_6 FILLER_52_225 ();
 sky130_fd_sc_hd__fill_1 FILLER_52_231 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_235 ();
 sky130_fd_sc_hd__decap_8 FILLER_52_248 ();
 sky130_fd_sc_hd__fill_1 FILLER_52_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_52_269 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_290 ();
 sky130_fd_sc_hd__fill_2 FILLER_52_298 ();
 sky130_fd_sc_hd__fill_1 FILLER_52_313 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_315 ();
 sky130_fd_sc_hd__decap_4 FILLER_52_322 ();
 sky130_fd_sc_hd__decap_8 FILLER_52_329 ();
 sky130_fd_sc_hd__fill_1 FILLER_53_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_53_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_25 ();
 sky130_fd_sc_hd__decap_12 FILLER_53_32 ();
 sky130_fd_sc_hd__decap_12 FILLER_53_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_53_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_53_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_53_88 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_98 ();
 sky130_fd_sc_hd__decap_6 FILLER_53_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_53_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_124 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_133 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_146 ();
 sky130_fd_sc_hd__fill_1 FILLER_53_158 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_172 ();
 sky130_fd_sc_hd__decap_8 FILLER_53_180 ();
 sky130_fd_sc_hd__decap_8 FILLER_53_200 ();
 sky130_fd_sc_hd__decap_3 FILLER_53_208 ();
 sky130_fd_sc_hd__decap_12 FILLER_53_214 ();
 sky130_fd_sc_hd__fill_2 FILLER_53_226 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_240 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_252 ();
 sky130_fd_sc_hd__decap_6 FILLER_53_259 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_273 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_280 ();
 sky130_fd_sc_hd__fill_1 FILLER_53_284 ();
 sky130_fd_sc_hd__decap_6 FILLER_53_295 ();
 sky130_fd_sc_hd__decap_3 FILLER_53_304 ();
 sky130_fd_sc_hd__decap_4 FILLER_53_314 ();
 sky130_fd_sc_hd__decap_6 FILLER_53_321 ();
 sky130_fd_sc_hd__fill_1 FILLER_53_327 ();
 sky130_fd_sc_hd__decap_6 FILLER_53_331 ();
 sky130_fd_sc_hd__fill_1 FILLER_54_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_54_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_54_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_54_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_54_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_54_60 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_54_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_87 ();
 sky130_fd_sc_hd__decap_8 FILLER_54_96 ();
 sky130_fd_sc_hd__fill_2 FILLER_54_104 ();
 sky130_fd_sc_hd__decap_8 FILLER_54_115 ();
 sky130_fd_sc_hd__fill_2 FILLER_54_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_139 ();
 sky130_fd_sc_hd__decap_3 FILLER_54_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_175 ();
 sky130_fd_sc_hd__fill_1 FILLER_54_189 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_196 ();
 sky130_fd_sc_hd__fill_1 FILLER_54_204 ();
 sky130_fd_sc_hd__decap_8 FILLER_54_217 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_245 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_258 ();
 sky130_fd_sc_hd__fill_1 FILLER_54_296 ();
 sky130_fd_sc_hd__decap_12 FILLER_54_300 ();
 sky130_fd_sc_hd__fill_2 FILLER_54_312 ();
 sky130_fd_sc_hd__decap_8 FILLER_54_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_54_323 ();
 sky130_fd_sc_hd__fill_1 FILLER_54_329 ();
 sky130_fd_sc_hd__decap_4 FILLER_54_333 ();
 sky130_fd_sc_hd__fill_2 FILLER_55_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_8 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_22 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_55_56 ();
 sky130_fd_sc_hd__decap_8 FILLER_55_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_86 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_159 ();
 sky130_fd_sc_hd__fill_1 FILLER_55_163 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_55_176 ();
 sky130_fd_sc_hd__fill_1 FILLER_55_200 ();
 sky130_fd_sc_hd__decap_6 FILLER_55_221 ();
 sky130_fd_sc_hd__fill_1 FILLER_55_227 ();
 sky130_fd_sc_hd__decap_8 FILLER_55_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_257 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_281 ();
 sky130_fd_sc_hd__fill_1 FILLER_55_286 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_310 ();
 sky130_fd_sc_hd__decap_4 FILLER_55_333 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_56_14 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_56_37 ();
 sky130_fd_sc_hd__decap_12 FILLER_56_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_56_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_56_59 ();
 sky130_fd_sc_hd__fill_1 FILLER_56_67 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_56_76 ();
 sky130_fd_sc_hd__decap_6 FILLER_56_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_56_86 ();
 sky130_fd_sc_hd__decap_6 FILLER_56_88 ();
 sky130_fd_sc_hd__decap_6 FILLER_56_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_56_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_56_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_56_117 ();
 sky130_fd_sc_hd__fill_1 FILLER_56_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_127 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_134 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_146 ();
 sky130_fd_sc_hd__decap_6 FILLER_56_154 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_163 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_175 ();
 sky130_fd_sc_hd__decap_12 FILLER_56_183 ();
 sky130_fd_sc_hd__decap_8 FILLER_56_195 ();
 sky130_fd_sc_hd__decap_12 FILLER_56_204 ();
 sky130_fd_sc_hd__fill_2 FILLER_56_216 ();
 sky130_fd_sc_hd__decap_8 FILLER_56_222 ();
 sky130_fd_sc_hd__fill_2 FILLER_56_230 ();
 sky130_fd_sc_hd__decap_6 FILLER_56_233 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_242 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_249 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_257 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_262 ();
 sky130_fd_sc_hd__fill_1 FILLER_56_266 ();
 sky130_fd_sc_hd__decap_8 FILLER_56_272 ();
 sky130_fd_sc_hd__decap_6 FILLER_56_283 ();
 sky130_fd_sc_hd__fill_1 FILLER_56_289 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_291 ();
 sky130_fd_sc_hd__decap_8 FILLER_56_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_56_307 ();
 sky130_fd_sc_hd__fill_1 FILLER_56_313 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_320 ();
 sky130_fd_sc_hd__fill_1 FILLER_56_327 ();
 sky130_fd_sc_hd__decap_4 FILLER_56_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_56_336 ();
endmodule
