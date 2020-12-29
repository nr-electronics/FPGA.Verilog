
// testbench is a module which only task is to test another module
// testbench is for simulation only, not for synthesis
`timescale 1ns/1ps
module testbench;

    // input and output test signals
    reg  [1:0] KEY;
    wire [9:0] LEDR;

    // creating the instance of the module we want to test
    //  Practice1onVerilog - module name
    //  dut  - instance name ('dut' means 'device under test')
    Practice1onVerilog dut ( KEY, LEDR );

    // do at the beginning of the simulation
    initial 
        begin
            KEY = 2'b00;    // set test signals value
            #10;            // pause
            KEY = 2'b01;    // set test signals value
            #10;            // pause
            KEY = 2'b10;    // set test signals value
            #10;            // pause
            KEY = 2'b11;    // set test signals value
            #10;            // pause
        end

    // do at the beginning of the simulation
    //  print signal values on every change
    initial 
        $monitor("KEY=%b LEDR=%b", KEY, LEDR);

    // do at the beginning of the simulation
    initial 
        $dumpvars;  //iverilog dump init

endmodule
