// selector module
module lab_3_register_file (Da, Db, Dc, regcheck, loadcheck, CLK, reset, rs1, rs2, rd, wenable);

 input  wire CLK, reset, wenable;
 input  wire [4:0] rs1, rs2, rd;
 input  wire [31:0] Dc;
 output wire loadcheck;
 output wire [31:0] Da, Db, regcheck;
 
 
 wire        load0, load1, load2, load3, load4, load5, load6, load7,
	     load8, load9, load10, load11, load12, load13, load14, load15,
	     load16, load17, load18, load19, load20, load21, load22, load23,
	     load24, load25, load26, load27, load28, load29, load30, load31;
		
 wire [31:0] reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7,
	     reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15,
	     reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23,
   	     reg24, reg25, reg26, reg27, reg28, reg29, reg30, reg31;

 

 decoder decoder1 (.d0(load0), .d1(load1), .d2(load2), .d3(load3), .d4(load4), .d5(load5), .d6(load6), .d7(load7),
						 .d8(load8), .d9(load9), .d10(load10), .d11(load11), .d12(load12), .d13(load13), .d14(load14), .d15(load15), 
						 .d16(load16), .d17(load17), .d18(load18), .d19(load19), .d20(load20), .d21(load21), .d22(load22), .d23(load23),
						 .d24(load24), .d25(load25), .d26(load26), .d27(load27), .d28(load28), .d29(load29), .d30(load30), .d31(load31), 
						 .selector(rd), .enable(wenable));

 register register00 (.Dout(reg0),  .Din(Dc), .load(load0),  .CLK(CLK), .reset(reset));
 register register01 (.Dout(reg1),  .Din(Dc), .load(load1),  .CLK(CLK), .reset(reset));
 register register02 (.Dout(reg2),  .Din(Dc), .load(load2),  .CLK(CLK), .reset(reset));
 register register03 (.Dout(reg3),  .Din(Dc), .load(load3),  .CLK(CLK), .reset(reset));
 register register04 (.Dout(reg4),  .Din(Dc), .load(load4),  .CLK(CLK), .reset(reset));
 register register05 (.Dout(reg5),  .Din(Dc), .load(load5),  .CLK(CLK), .reset(reset));
 register register06 (.Dout(reg6),  .Din(Dc), .load(load6),  .CLK(CLK), .reset(reset));
 register register07 (.Dout(reg7),  .Din(Dc), .load(load7),  .CLK(CLK), .reset(reset));
 register register08 (.Dout(reg8),  .Din(Dc), .load(load8),  .CLK(CLK), .reset(reset));
 register register09 (.Dout(reg9),  .Din(Dc), .load(load9),  .CLK(CLK), .reset(reset));
 register register10 (.Dout(reg10), .Din(Dc), .load(load10), .CLK(CLK), .reset(reset));
 register register11 (.Dout(reg11), .Din(Dc), .load(load11), .CLK(CLK), .reset(reset));
 register register12 (.Dout(reg12), .Din(Dc), .load(load12), .CLK(CLK), .reset(reset));
 register register13 (.Dout(reg13), .Din(Dc), .load(load13), .CLK(CLK), .reset(reset));
 register register14 (.Dout(reg14), .Din(Dc), .load(load14), .CLK(CLK), .reset(reset));
 register register15 (.Dout(reg15), .Din(Dc), .load(load15), .CLK(CLK), .reset(reset));
 register register16 (.Dout(reg16), .Din(Dc), .load(load16), .CLK(CLK), .reset(reset));
 register register17 (.Dout(reg17), .Din(Dc), .load(load17), .CLK(CLK), .reset(reset));
 register register18 (.Dout(reg18), .Din(Dc), .load(load18), .CLK(CLK), .reset(reset));
 register register19 (.Dout(reg19), .Din(Dc), .load(load19), .CLK(CLK), .reset(reset));
 register register20 (.Dout(reg20), .Din(Dc), .load(load20), .CLK(CLK), .reset(reset));
 register register21 (.Dout(reg21), .Din(Dc), .load(load21), .CLK(CLK), .reset(reset));
 register register22 (.Dout(reg22), .Din(Dc), .load(load22), .CLK(CLK), .reset(reset));
 register register23 (.Dout(reg23), .Din(Dc), .load(load23), .CLK(CLK), .reset(reset));
 register register24 (.Dout(reg24), .Din(Dc), .load(load24), .CLK(CLK), .reset(reset));
 register register25 (.Dout(reg25), .Din(Dc), .load(load25), .CLK(CLK), .reset(reset));
 register register26 (.Dout(reg26), .Din(Dc), .load(load26), .CLK(CLK), .reset(reset));
 register register27 (.Dout(reg27), .Din(Dc), .load(load27), .CLK(CLK), .reset(reset));
 register register28 (.Dout(reg28), .Din(Dc), .load(load28), .CLK(CLK), .reset(reset));
 register register29 (.Dout(reg29), .Din(Dc), .load(load29), .CLK(CLK), .reset(reset));
 register register30 (.Dout(reg30), .Din(Dc), .load(load30), .CLK(CLK), .reset(reset));
 register register31 (.Dout(reg31), .Din(Dc), .load(load31), .CLK(CLK), .reset(reset));
 
 mux muxA (.mux_out(Da), .selector(rs1), .reg0(reg0),.reg1(reg1),.reg2(reg2),.reg3(reg3),.reg4(reg4),.reg5(reg5),.reg6(reg6),.reg7(reg7),
													  .reg8(reg8),.reg9(reg9),.reg10(reg10),.reg11(reg11),.reg12(reg12),.reg13(reg13),.reg14(reg14),.reg15(reg15),
											        .reg16(reg16),.reg17(reg17),.reg18(reg18),.reg19(reg19),.reg20(reg20),.reg21(reg21),.reg22(reg22),.reg23(reg23),
													  .reg24(reg24),.reg25(reg25),.reg26(reg26),.reg27(reg27),.reg28(reg28),.reg29(reg29),.reg30(reg30),.reg31(reg31));
 
 mux muxB (.mux_out(Db), .selector(rs2), .reg0(reg0),.reg1(reg1),.reg2(reg2),.reg3(reg3),.reg4(reg4),.reg5(reg5),.reg6(reg6),.reg7(reg7),
													  .reg8(reg8),.reg9(reg9),.reg10(reg10),.reg11(reg11),.reg12(reg12),.reg13(reg13),.reg14(reg14),.reg15(reg15),
													  .reg16(reg16),.reg17(reg17),.reg18(reg18),.reg19(reg19),.reg20(reg20),.reg21(reg21),.reg22(reg22),.reg23(reg23),
													  .reg24(reg24),.reg25(reg25),.reg26(reg26),.reg27(reg27),.reg28(reg28),.reg29(reg29),.reg30(reg30),.reg31(reg31));

 
endmodule 
