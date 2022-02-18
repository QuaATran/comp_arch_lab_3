// mux testbench
module mux_tb ();

 reg      [4:0]   reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,
				       reg8,reg9,reg10,reg11,reg12,reg13,reg14,reg15,
					    reg16,reg17,reg18,reg19,reg20,reg21,reg22,reg23,
					    reg24,reg25,reg26,reg27,reg28,reg29,reg30,reg31;

 reg      [4:0]  selector;
 wire     [4:0] mux_out;
 
 
 mux muxtest (.mux_out(mux_out), .selector(selector), .reg0(reg0),.reg1(reg1),.reg2(reg2),.reg3(reg3),.reg4(reg4),.reg5(reg5),.reg6(reg6),.reg7(reg7),
										 .reg8(reg8),.reg9(reg9),.reg10(reg10),.reg11(reg11),.reg12(reg12),.reg13(reg13),.reg14(reg14),.reg15(reg15),
										 .reg16(reg16),.reg17(reg17),.reg18(reg18),.reg19(reg19),.reg20(reg20),.reg21(reg21),.reg22(reg22),.reg23(reg23),
										 .reg24(reg24),.reg25(reg25),.reg26(reg26),.reg27(reg27),.reg28(reg28),.reg29(reg29),.reg30(reg30),.reg31(reg31));


 initial begin
 
 reg0 = 5'd0;
 reg1 = 5'd1;
 reg2 = 5'd2;
 reg3 = 5'd3;
 reg4 = 5'd4;
 reg5 = 5'd5;
 reg6 = 5'd6;
 reg7 = 5'd7;
 reg8 = 5'd8;
 reg9 = 5'd9;
 reg10 = 5'd10;
 reg11 = 5'd11;
 reg12 = 5'd12;
 reg13 = 5'd13;
 reg14 = 5'd14;
 reg15 = 5'd15;
 reg16 = 5'd16;
 reg17 = 5'd17;
 reg18 = 5'd18;
 reg19 = 5'd19;
 reg20 = 5'd20;
 reg21 = 5'd21;
 reg22 = 5'd22;
 reg23 = 5'd23;
 reg24 = 5'd24;
 reg25 = 5'd25;
 reg26 = 5'd26;
 reg27 = 5'd27;
 reg28 = 5'd28;
 reg29 = 5'd29;
 reg30 = 5'd30;
 reg31 = 5'd31;
 										 
 #10
 selector = 5'b00000;
 #10
 selector = 5'b00001;
 #10
 selector = 5'b00010;
 #10
 selector = 5'b00011;
 #10
 selector = 5'b00100;
 #10
 selector = 5'b00101;
 #10
 selector = 5'b00110;
 #10
 selector = 5'b00111;
 #10
 selector = 5'b01000;
 #10
 selector = 5'b01001;
 #10
 selector = 5'b01010;
 #10
 selector = 5'b01011;
 #10
 selector = 5'b01100;
 #10
 selector = 5'b01101;
 #10
 selector = 5'b01110;
 #10
 selector = 5'b01111;
 #10
 selector = 5'b10000;
 #10
 selector = 5'b10001;
 #10
 selector = 5'b10010;
 #10
 selector = 5'b10011;
 #10
 selector = 5'b10100;
 #10
 selector = 5'b10101;
 #10
 selector = 5'b10110;
 #10
 selector = 5'b10111;
 #10
 selector = 5'b11000;
 #10
 selector = 5'b11001;
 #10
 selector = 5'b11010;
 #10
 selector = 5'b11011;
 #10
 selector = 5'b11100;
 #10
 selector = 5'b11101;
 #10
 selector = 5'b11110;
 #10
 selector = 5'b11111;
 #10 $stop;
 end
  
endmodule 