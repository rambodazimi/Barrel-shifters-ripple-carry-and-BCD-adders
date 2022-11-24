# Barrel-shifters-ripple-carry-and-BCD-adders

<h3>Description</h3>

<h4>4-bit Barrel Shifter</h4>
You are required to implement the 4-bit barrel shifter in VHDL using both structural and behavioral styles. To obtain a structural description of the 4-bit barrel shifter, you are required to use the structural description of the 2-to-1 multiplexer. Write a structural VHDL description for the 4-bit circular barrel shifter by instantiating the structural description of the 2-to-1 multiplexer 8 times.

Once completed, you are required to implement the 4-bit circular barrel shifter using the behavioral style. One way to obtain a behavioral description of the 4-bit circular barrel shifter is the use of VHDL select statements. Write a behavioral VHDL code for the 4-bit circular barrel shifter using a single VHDL select statement only.

In this section, you will be asked to perform the design and simulation of the following two adder circuits:

(a) a 4-bit ripple-carry adder;

(b) a one-digit binary coded decimal (BCD) adder.

Details of the assignments are described below.

<h4>Ripple-Carry Adder (RCA)</h4>

In this section, you will implement a structural description of a 4-bit ripple-carry adder using basic addition components: half-adders and full-adders.

A half-adder is a circuit that takes two binary digits as inputs, and produces the result of the addition of the two bits in the form of a sum and carry signals. The carry signal represents an overflow into the next digit of a multi-digit addition.

After you have described your structural style of the half-adder in VHDL, you are required to test your circuit. Write a testbench code and perform an exhaustive test of your VHDL description of the half-adder.

Unlike the half-adder, a full-adder adds binary digits while accounting for values carried in (from a previous stage addition). Write a structural VHDL description for the full-adder circuit using the half-adder circuit that you designed in the previous section.

After you have described your circuit in VHDL, write a testbench code and perform an exhaustive test of your VHDL description of the full-adder.

Using the half-adder and full-adder circuits implemented in the two previous sections, implement a 4-bit carry-ripple adder. Write a structural VHDL code for the 4-bit RCA.

Note that S(4) contains the carry-out of the 4-bit adder. After you have described your circuit in VHDL, write a testbench code and perform an exhaustive test of your VHDL structural description of the 4-bit RCA.

In this part, you are required to implement the 4-bit RCA using behavioral description. One way to obtain a behavioral description is to use arithmetic operators in VHDL (i.e., “+”). Write a behavioral VHDL code for the 4-bit RCA.

After you have described your circuit in VHDL, write a testbench code and perform an exhaustive test of your VHDL behavioral description of the 4-bit RCA.

<h4>BCD Adder</h4>

In this section, you will implement a one-digit BCD adder in VHDL. A one-digit BCD adder adds two four-bit numbers represented in a BCD format. The result of the addition is a BCD-format 4-bit output, representing the decimal sum, and a carry that is generated if this sum exceeds a decimal value of 9.

In this part, you are required to implement the BCD adder using structural description. You are allowed to use either behavioral or structural style of coding for your implementation.

In this part, you are required to implement the BCD adder using behavioral description. You are encouraged to base your code on the VHDL code in Section 5.7.3 of the textbook, so that you learn about conditional signal assignments.


