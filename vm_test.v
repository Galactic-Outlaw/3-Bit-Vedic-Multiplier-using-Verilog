module vedic_4_x_4_testmodule();
reg [3:0]c;
reg [3:0]d;
//Outputs
wire [7:0]result;
vedic_4_x_4 test(result,c,d);
initial
begin
$dumpfile("vedic_4_x_4_test.vcd");
$dumpvars(0,vedic_4_x_4_testmodule);
end

initial begin
c=0000;
d=0000;
#100;

c=0001;
d=0010;
#100;

c=1010;
d=1010;
#100;

c=1000;
d=1000;
#100;

end
endmodule
