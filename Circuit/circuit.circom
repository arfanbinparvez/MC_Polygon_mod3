pragma circom 2.0.0;

template ModuleCircuit () {  
   // input signals  
   signal input a;  
   signal input b;  
   
   //final output signal
   signal output Q;  
   
   // Intermediate signals
   signal X; 
   signal Y;
   
   //component gates
   component andGate= AND();
   component notGate=NOT();
   component orGate=OR();
   
   //circuit logic
   andGate.a <== a;
   andGate.b <== b;
   X <== andGate.out;
   notGate.in <== b;
   Y <== notGate.out;
   orGate.a <== X;
   orGate.b <== Y;
   Q <== orGate.out;
}
template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 - in;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}
component main = ModuleCircuit();
