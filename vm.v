module vedic_4_x_4(c,a,b);
input [3:0]a;
input [3:0]b;
output [7:0]c;

wire [3:0]q0;	
wire [3:0]q1;	
wire [3:0]q2;
wire [3:0]q3;	
wire [7:0]c;
wire [3:0]temp1;
wire [5:0]temp2;
wire [5:0]temp3;
wire [5:0]temp4;
wire [3:0]q4;
wire [5:0]q5;
wire [5:0]q6;

vedic_2_x_2 z1(a[1:0],b[1:0],q0[3:0]);
vedic_2_x_2 z2(a[3:2],b[1:0],q1[3:0]);
vedic_2_x_2 z3(a[1:0],b[3:2],q2[3:0]);
vedic_2_x_2 z4(a[3:2],b[3:2],q3[3:0]);

assign temp1 ={2'b0,q0[3:2]};
add_4_bit z5(q1[3:0],temp1,q4);
assign temp2 ={2'b0,q2[3:0]};
assign temp3 ={q3[3:0],2'b0};
add_6_bit z6(temp2,temp3,q5);
assign temp4={2'b0,q4[3:0]};

add_6_bit z7(temp4,q5,q6);
assign c[1:0]=q0[1:0];
assign c[7:2]=q6[5:0];
endmodule
 

module vedic_2_x_2(a,b,c);
input [1:0]a;
input [1:0]b;
output [3:0]c;
wire [3:0]c;
wire [3:0]temp;
assign c[0]=a[0]&b[0]; 
assign temp[0]=a[1]&b[0];
assign temp[1]=a[0]&b[1];
assign temp[2]=a[1]&b[1];
ha z1(temp[0],temp[1],c[1],temp[3]);
ha z2(temp[2],temp[3],c[2],c[3]);
endmodule

module ha(a,b,s,c);
input a,b;
output s,c;
assign s=a ^ b;
assign c=a & b;
endmodule
module add_4_bit ( a ,b ,sum ,carry );
output [3:0] sum ;
output carry ;
input [3:0] a ;
input [3:0] b ; 
wire [2:0]s;
full_adder u0 (a[0],b[0],1'b0,sum[0],s[0]);
full_adder u1 (a[1],b[1],s[0],sum[1],s[1]);
full_adder u2 (a[2],b[2],s[1],sum[2],s[2]);
full_adder u3 (a[3],b[3],s[2],sum[3],carry);
endmodule

module full_adder ( a ,b ,c ,sum ,carry );
output sum ;
output carry ;
input a ;
input b ;
input c ;
assign sum = a ^ b ^ c;   
assign carry = (a&b) | (b&c) | (c&a);
endmodule
module add_6_bit ( a ,b ,sum ,carry );
output [5:0] sum ;
output carry ;
input [5:0] a ;
input [5:0] b ; 
wire [4:0]s;
full_adder u0 (a[0],b[0],1'b0,sum[0],s[0]);
full_adder u1 (a[1],b[1],s[0],sum[1],s[1]);
full_adder u2 (a[2],b[2],s[1],sum[2],s[2]);
full_adder u3 (a[3],b[3],s[2],sum[3],s[3]);
full_adder u4 (a[4],b[4],s[3],sum[4],s[4]);
full_adder u5 (a[5],b[5],s[4],sum[5],carry);

endmodulemodule vedic_4_x_4(
a,b,c
    );
input [3:0]a;
input [3:0]b;
output [7:0]c;

wire [3:0]q0;	
wire [3:0]q1;	
wire [3:0]q2;
wire [3:0]q3;	
wire [7:0]c;
wire [3:0]temp1;
wire [5:0]temp2;
wire [5:0]temp3;
wire [5:0]temp4;
wire [3:0]q4;
wire [5:0]q5;
wire [5:0]q6;

vedic_2_x_2 z1(a[1:0],b[1:0],q0[3:0]);
vedic_2_x_2 z2(a[3:2],b[1:0],q1[3:0]);
vedic_2_x_2 z3(a[1:0],b[3:2],q2[3:0]);
vedic_2_x_2 z4(a[3:2],b[3:2],q3[3:0]);

assign temp1 ={2'b0,q0[3:2]};
add_4_bit z5(q1[3:0],temp1,q4);
assign temp2 ={2'b0,q2[3:0]};
assign temp3 ={q3[3:0],2'b0};
add_6_bit z6(temp2,temp3,q5);
assign temp4={2'b0,q4[3:0]};

add_6_bit z7(temp4,q5,q6);
assign c[1:0]=q0[1:0];
assign c[7:2]=q6[5:0];
endmodule
 

module vedic_2_x_2(a,b,c);
input [1:0]a;
input [1:0]b;
output [3:0]c;
wire [3:0]c;
wire [3:0]temp;
assign c[0]=a[0]&b[0]; 
assign temp[0]=a[1]&b[0];
assign temp[1]=a[0]&b[1];
assign temp[2]=a[1]&b[1];
ha z1(temp[0],temp[1],c[1],temp[3]);
ha z2(temp[2],temp[3],c[2],c[3]);
endmodule

module ha(a,b,s,c);
input a,b;
output s,c;
assign s=a ^ b;
assign c=a & b;
endmodule
module add_4_bit ( a ,b ,sum ,carry );
output [3:0] sum ;
output carry ;
input [3:0] a ;
input [3:0] b ; 
wire [2:0]s;
full_adder u0 (a[0],b[0],1'b0,sum[0],s[0]);
full_adder u1 (a[1],b[1],s[0],sum[1],s[1]);
full_adder u2 (a[2],b[2],s[1],sum[2],s[2]);
full_adder u3 (a[3],b[3],s[2],sum[3],carry);
endmodule

module full_adder ( a ,b ,c ,sum ,carry );
output sum ;
output carry ;
input a ;
input b ;
input c ;
assign sum = a ^ b ^ c;   
assign carry = (a&b) | (b&c) | (c&a);
endmodule
module add_6_bit ( a ,b ,sum ,carry );
output [5:0] sum ;
output carry ;
input [5:0] a ;
input [5:0] b ; 
wire [4:0]s;
full_adder u0 (a[0],b[0],1'b0,sum[0],s[0]);
full_adder u1 (a[1],b[1],s[0],sum[1],s[1]);
full_adder u2 (a[2],b[2],s[1],sum[2],s[2]);
full_adder u3 (a[3],b[3],s[2],sum[3],s[3]);
full_adder u4 (a[4],b[4],s[3],sum[4],s[4]);
full_adder u5 (a[5],b[5],s[4],sum[5],carry);

endmodule