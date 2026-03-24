module counter_tb;
     reg clk, rst;
     wire [2:0] count;


    counter_mod5 uut(
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    initial clk = 0;
    always #5 clk = ~clk;


    initial begin
        $dumpfile("mod5_test.vcd");
        $dumpvars(0, counter_tb);

        rst = 1; #15;
        rst = 0; #200;

        $finish;
     end
endmodule
