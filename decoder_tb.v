// decoder testbench
module decoder_tb();
 
 reg  enable;					 
 reg  [4:0] selector;
 wire     d0, d1, d2, d3, d4, d5, d6, d7,
          d8, d9, d10, d11, d12, d13, d14, d15, 
          d16, d17, d18, d19, d20, d21, d22, d23,
	       d24, d25, d26, d27, d28, d29, d30, d31;
			 
 decoder decodertest (.d0(d0), .d1(d1), .d2(d2), .d3(d3), .d4(d4), .d5(d5), .d6(d6), .d7(d7),
						 .d8(d8), .d9(d9), .d10(d10), .d11(d11), .d12(d12), .d13(d13), .d14(d14), .d15(d15), 
						 .d16(d16), .d17(d17), .d18(d18), .d19(d19), .d20(d20), .d21(d21), .d22(d22), .d23(d23),
						 .d24(d24), .d25(d25), .d26(d26), .d27(d27), .d28(d28), .d29(d29), .d30(d30), .d31(d31), 
						 .selector(selector), .enable(enable));
 

  initial begin
  
  enable = 1'b1;						 
  selector[4:0] = 5'b00100;
 
  #10 selector [4:0] = 5'b01101;
 
  #50 $stop;
 end

endmodule 