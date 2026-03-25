module clk_divider (
    input clk_in, rst,
    output reg clk_out
);
    reg [26:0] count;
  
    always @(posedge clk_in or posedge rst) begin
   
        if (rst) begin 
            count <= 0;
            clk_out <= 0;
        end 
        
        else if (count == 49_999_999) begin
            count <= 0;
            clk_out <= ~clk_out;
        end

        else begin 
            count <= count + 1;
        end
     end
endmodule
