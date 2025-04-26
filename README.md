A Ripple Carry Adder (RCA) is a basic digital circuit that adds two binary numbers together.

A 4-bit Ripple Carry Adder adds two 4-bit numbers (say A[3:0] and B[3:0]).

It works like this:

It chains four 1-bit full adders together.

Each full adder adds two bits and a carry-in, then outputs a sum bit and a carry-out.

The carry-out of each adder ripples into the next adder as its carry-in — that's why it's called "ripple carry".
