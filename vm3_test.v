`include"ff.v"
`include"hf.v"
`timescale 10ns/1ns //timescale defined 
module tb_vedic3bit();
reg [2:0]A1,B1; //ports declared
wire [5:0]mul1;

vedic3bit M(A1,B1,mul1);// module instantiation
initial
begin
$dumpfile("vedic3bit_test.vcd");
$dumpvars(0,tb_vedic3bit);
end

initial //various test inputs
begin
    A1=3'b001;
    B1=3'b010;

    #1 A1=3'b010;
       B1=3'b100;

    #1 A1=3'b100;
      B1=3'b101;

    #1 A1=3'b101;
       B1=3'b110;

    #1 A1=3'b110;
      B1=3'b111;
end

endmodule
