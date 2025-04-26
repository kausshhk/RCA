module RCA4_tb;
logic [3:0] sum;//output
logic cout;//output
logic [3:0] a,b;//input
logic cin;

RCA_4 uut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout));

initial begin


#10 a=8; b=3;cin=0;
#100 a=9; b=8;cin =0;
#50;

end
endmodule
