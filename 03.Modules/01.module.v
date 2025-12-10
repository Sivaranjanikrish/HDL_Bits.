//create one instance of module mod_a, then connect the module's three pins (in1, in2, and out) to your top-level module's three ports (wires a, b, and out). The module mod_a is provided for you — you must instantiate it.When connecting modules, only the ports on the module are important. You do not need to know the code inside the module. The code for module mod_a looks like this:
module mod_a ( input in1, input in2, output out) ;
endmodule;
//The hierarchy of modules is created by instantiating one module inside another, as long as all of the modules used belong to the same project (so the compiler knows where to find the module). The code for one module is not written inside another module's body (Code for different modules are not nested).
//You may connect signals to the module by port name or port position
                          //Port declaration by name.
module top_module ( input a, input b, output out );
    mod_a instance1(.out(out),.in1(a),.in2(b));
endmodule
                        //port declaration by position
module top_module ( input a, input b, output out );
    mod_a instance2(in1,in2,out);
endmodule
