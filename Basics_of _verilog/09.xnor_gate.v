//Create a module that implements an XNOR gate.
     //expected module declaration:module top_module( input a, input b, output out );
module top_module( 
    input a, 
    input b, 
    output out );
    assign out=~(a^b);

endmodule
