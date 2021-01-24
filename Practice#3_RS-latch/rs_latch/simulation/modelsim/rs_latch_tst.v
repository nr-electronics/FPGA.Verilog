// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "01/24/2021 13:29:50"
                                                                                
// Verilog Test Bench template for design : rs_latch
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1 ns/ 1 ps
module rs_latch_vlg_tst();
// constants                                           
// general purpose registers
reg eachvec;
// test vector input registers
reg r;
reg s;
// wires                                               
wire q;
wire q_n;

// assign statements (if any)                          
rs_latch i1 (
// port map - connection between master ports and signals/registers   
	.q(q),
	.q_n(q_n),
	.r(r),
	.s(s)
);
initial                                                
begin                                                  
// code that executes only once                        
// insert code here --> begin                          
                                                       
// --> end                                             
$display("Running testbench");                       
end                                                    
always                                                 
// optional sensitivity list                           
// @(event1 or event2 or .... eventn)                  
begin                                                  
// code executes for every event on sensitivity list   
// insert code here --> begin                          

        $monitor ("%0d s %b r %b q %b q_n %b", $time, s, r, q, q_n);

        # 10;   s = 0; r = 0; 
        # 10;   s = 1; r = 0;
        # 10;   s = 0; r = 0;
        # 10;   s = 0; r = 1;
        # 10;   s = 0; r = 0;
        # 10;   s = 1; r = 1;
        # 10;   s = 0; r = 0;
        # 10;   s = 0; r = 0;
        # 10;
                                                       
@eachvec;                                              
// --> end                                             
end                                                    
endmodule

