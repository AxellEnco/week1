pragma circom 2.0.0;

// [assignment] Modify the circuit below to perform a multiplication of three signals

template Multiplier2 () {  
 
   signal input a;  
   signal input b;  
   signal output c;  
  
   c <== a * b; 
}
template Multiplier3 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;
   signal input c;
   signal output d;

   component Multiplier1 = Multiplier2();
   component Multiplier2 = Multiplier2();

   Multiplier1.a <== a;
   Multiplier1.b <== b;
   Multiplier2.a <== Multiplier1.c;
   Multiplier2.b <== c;
   d <== Multiplier2.c;
}

component main = Multiplier3();