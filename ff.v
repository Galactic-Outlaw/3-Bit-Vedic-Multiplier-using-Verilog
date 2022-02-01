module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1;
wire w2;
wire w3;
xor x1(w1,a,b);
xor x2(sum,w1,c);
and a1(w2,w1,c);
and a2(w3,a,b);
or o1(carry,w2,w3);
endmodule