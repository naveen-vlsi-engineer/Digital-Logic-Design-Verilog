module dff_tb;
     reg clk, rst, d;
     wire q;

     dff_reset uut  (.clk(clk), .rst(rst), .d(d), .q(q));
   
     initial clk =0;
     always #5 clk = ~clk;


     initial begin
         $dumpfile("dff_test.vcd");
         $dumpvars(0, dff_tb);

         rst = 1; d = 0; #10;
         rst = 0; d = 1; #10;
         d = 0; #10;
         d = 1; #10;


         $finish;
      end
endmodule