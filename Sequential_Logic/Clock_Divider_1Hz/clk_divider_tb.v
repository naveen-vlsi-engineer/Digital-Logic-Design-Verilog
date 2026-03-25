module clk_divider_tb;
    reg clk_in, rst;
    wire clk_out;

    clk_divider uut (
         .clk_in(clk_in),
         .rst(rst),
         .clk_out(clk_out)
);

   initial clk_in = 0;
   always #5 clk_in = ~clk_in;

   initial begin
       $dumpfile("clk_div.vcd");
       $dumpvars(0, clk_divider_tb);

       rst = 1; #20;
       rst = 0;
  
       #500;
       $finish;
    end
endmodule
