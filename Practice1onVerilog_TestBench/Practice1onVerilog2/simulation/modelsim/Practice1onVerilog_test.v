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
// Generated on "12/29/2020 11:27:52"
                                                                                
// Verilog Test Bench template for design : Practice1onVerilog
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1 ns/ 1 ps
module Practice1onVerilog_test;// Practice1onVerilog_vlg_tst()
// constants                                           
// general purpose registers
reg eachvec;
// test vector input registers
reg [1:0] KEY;
// wires                                               
wire [9:0]  LEDR;

// assign statements (if any)                          
Practice1onVerilog i1 (
// port map - connection between master ports and signals/registers   
	.KEY(KEY),
	.LEDR(LEDR)
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
                       
            KEY = 2'b00;    // set test signals value
            #10;            // pause
            KEY = 2'b01;    // set test signals value
            #10;            // pause
            KEY = 2'b10;    // set test signals value
            #10;            // pause
            KEY = 2'b11;    // set test signals value
            #10;  
 
												 
																		 
@eachvec;                                              
// --> end                                             
end  
        
    // do at the beginning of the simulation
//	$dumpvars;		                                                  
endmodule

