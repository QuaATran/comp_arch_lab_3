//testbench for register file
module lab_3_register_file_tb ();

 reg  CLK, reset, wenable;
 reg  [4:0] rs1, rs2, rd;
 reg  [31:0] Dc;	
 wire [31:0] Da, Db;

 `timescale  10 ns / 10 ps
 
 lab_3_register_file bruh (.Da(Da), .Db(Db), .Dc(Dc), .CLK(CLK), .reset(reset), .rs1(rs1), .rs2(rs2), .rd(rd), .wenable(wenable));
 
 initial begin
  CLK = 0;
  forever begin
   #5 CLK=~CLK;
	end
  end
  
 initial begin
 
 reset = 0;
 wenable = 1;
 
 #10 Dc  = 32'b10;
 #10 rs1 =  5'b01010;
 #10 rs2 =  5'b11010;
 #10 rd  =  5'b00110;
 #10 reset = 1'b1;
 #10 reset = 1'b0;
 #10 wenable = 0;
 #10 rs1 =  5'b01110;
 #10 rs2 =  5'b11110;
 #10 rd  =  5'b00111;
 #10 wenable = 1;
 #50 $stop;
 
 end
 
endmodule 