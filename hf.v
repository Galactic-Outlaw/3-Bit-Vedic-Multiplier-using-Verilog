module halfadder(c,d,sum,carry);
input c,d;
output sum,carry;
xor x1(sum,c,d);
and a1(carry,c,d);
endmodule
