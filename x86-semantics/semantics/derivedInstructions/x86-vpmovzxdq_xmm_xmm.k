// Autogenerated using stratification.
requires "x86-configuration.k"

module VPMOVZXDQ-XMM-XMM
  imports X86-CONFIGURATION

  rule <k>
    execinstr (vpmovzxdq R1:Xmm, R2:Xmm,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 192, 224)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>
endmodule

module VPMOVZXDQ-XMM-XMM-SEMANTICS
  imports VPMOVZXDQ-XMM-XMM
endmodule
/*
TargetInstr:
vpmovzxdq %xmm2, %xmm1
RWSet:
maybe read:{ %xmm2 }
must read:{ %xmm2 }
maybe write:{ %ymm1 }
must write:{ %ymm1 }
maybe undef:{ }
must undef:{ }
required flags:{ avx }

Circuit:
circuit:callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label
circuit:vzeroall                                        #  2     0x5   3      OPC=vzeroall
circuit:callq .move_byte_5_of_ymm1_to_r9b               #  3     0x8   5      OPC=callq_label
circuit:callq .move_064_128_r8_r9_xmm2                  #  4     0xd   5      OPC=callq_label
circuit:callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  5     0x12  5      OPC=callq_label
circuit:callq .move_64_128_xmm8_xmm9_xmm1               #  6     0x17  5      OPC=callq_label
BVF:
WARNING: No live out values provided, assuming { }
WARNING: No def in values provided; assuming { %mxcsr::rc[0] }
Target

vpmovzxdq %xmm2, %xmm1

  maybe read:      { %xmm2 }
  must read:       { %xmm2 }
  maybe write:     { %ymm1 }
  must write:      { %ymm1 }
  maybe undef:     { }
  must undef:      { }
  required flags:  { avx }

Circuits:

%ymm1  : 0x0₁₂₈ ∘ (0x0₃₂ ∘ %ymm2[63:32] ∘ (0x0₃₂ ∘ %ymm2[31:0]))

sigfpe  : sigfpe
sigbus  : sigbus
sigsegv : sigsegv

*/