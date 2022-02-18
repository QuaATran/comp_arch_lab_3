//register module

module register (Dout, Din, load, CLK, reset);

 input  		CLK, reset;
 input 		[31:0]Din, load;
 output reg [31:0]Dout;
	
  always @(posedge CLK or posedge reset) begin
    if (reset)
	  Dout[31:0] <= 0;
	else if (load)
	  Dout[31:0] <= Din[31:0];
	else
	  Dout[31:0] <= Dout[31:0];
	
  end
  
endmodule
