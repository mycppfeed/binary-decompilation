module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
saveRegister(%rbx, "SPAD1") ~>
execinstr ( xorq %rax, %rax , .Typedoperands ) ~>
execinstr ( clc  .Typedoperands ) ~>
execinstr ( adcw %cx, %ax , .Typedoperands ) ~>
execinstr ( popcntq %rax, %rbx , .Typedoperands ) ~>
execinstr ( clc  .Typedoperands ) ~>
restoreRegister("SPAD1", 16, 48, 0, 0,
          0, 16, %rbx) ~>
execinstr ( nop .Typedoperands ) ~> inforegisters ~> fetch
 => exit_0
    </k>
    <entrypoint> zeroMIntW64 </entrypoint>
    <nextLoc> zeroMIntW64  </nextLoc>
    <memstate>
      <cmem> .Map </cmem>
      <dmem> .Map </dmem>
    </memstate>

    <regstate>
"RIP" |->    (mi(64, 0) => _)
"SPAD1" |->    (mi(256, 0) => _)
"AF" |-> (mi(1, ?I1:Int):MInt => _)
"CF" |-> (mi(1, ?I2:Int):MInt => _)
"OF" |-> (mi(1, ?I3:Int):MInt => _)
"PF" |-> (mi(1, ?I4:Int):MInt => _)
"RAX" |-> (mi(64, 0):MInt => _)
"RBX" |-> (mi(64, ?I5:Int):MInt => _)
"RCX" |-> (mi(64, ?I6:Int):MInt => _)
"SF" |-> (mi(1, ?I7:Int):MInt => _)
"ZF" |-> (mi(1, ?I8:Int):MInt => _)

    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule
/*
opcode:popcntw_r16_r16
instr:popcntw %cx, %bx
maybe read:{ %cx }
must read:{ %cx }
maybe write:{ %bx %cf %pf %af %zf %sf %of }
must write:{ %bx %cf %pf %af %zf %sf %of }
maybe undef:{ }
must undef:{ }
required flags:{ popcnt }

circuit:xorq %rax, %rax     #  1     0    3      OPC=xorq_r64_r64
circuit:clc                 #  2     0x3  1      OPC=clc
circuit:adcw %cx, %ax       #  3     0x4  3      OPC=adcw_r16_r16
circuit:popcntq %rax, %rbx  #  4     0x7  5      OPC=popcntq_r64_r64
circuit:clc                 #  5     0xc  1      OPC=clc
*/