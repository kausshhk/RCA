module RCA_4(
  input logic [3:0] a, b,
  input logic cin,
  output logic [3:0] sum,
  output logic cout);
  
  wire [2:0] c;
  
	full_adder a1(a[0],b[0],cin,sum[0],c[0]);

	full_adder a2(a[1],b[1],c[0],sum[1],c[1]);

	full_adder a3(a[2],b[2],c[1],sum[2],c[2]);

	full_adder a4(a[3],b[3],c[2],sum[3],cout);
	
endmodule
