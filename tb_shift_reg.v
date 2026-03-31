module tb_shift_reg;
    reg clk, rst, serial_in;
    wire serial_out;
  
    shift_reg uut (
          .clk(clk),
          .rst(rst),
          .serial_in(serial_in),
          .serial_out(serial_out)
);

   always #5 clk = ~clk;
   initial begin
       $dumpfile("shift_reg.vcd");
       $dumpvars(0, tb_shift_reg);

       clk = 0; rst = 1 ; serial_in = 0; 
       #10 rst = 0;

       #10 serial_in = 1;
       #10 serial_in = 0;
       #10 serial_in = 0;
       #10 serial_in = 0;
       #10 serial_in = 0;

       $display("Simulation Done! open GTKWave to see the '1' jumping.");
       $finish;
     end
endmodule