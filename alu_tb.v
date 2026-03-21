module alu_tb;
     reg [7:0] a,b;
     reg [1:0] sel;
     wire[7:0] out;

   
       alu_8bit uut ( .a(a), .b(b), .sel(sel), .out(out) );


       initial begin
           $dumpfile("alu_test.vcd");
           $dumpvars(0, alu_tb);


            a = 8'd10; b = 8'd5; sel = 2'b00; #10;

            a = 8'd20; b = 8'd5; sel = 2'b01; #10;

            a = 8'b11001100; b = 8'b10101010; sel = 2'b10; #10;

            $finish;
         end
endmodule