// Autogenerated using stratification.
requires "x86-configuration.k"

module ANDNL-R32-R32-M32
  imports X86-CONFIGURATION

  context execinstr(andnl:Opcode HOLE:Mem, R2:R32, R3:R32,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (andnl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32, R3:R32,  .Operands) =>
      loadFromMemory( MemOff, 32) ~>
      execinstr (andnl memOffset( MemOff), R2, R3,  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem32:MInt):MemLoadValue ~> execinstr (andnl:Opcode memOffset( MemOff:MInt):MemOffset, R2:R32, R3:R32,  .Operands) =>
      .
  ...</k>
    <regstate>
      RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> concatenateMInt( mi(32, 0), andMInt( negMInt( extractMInt( getParentValue(R2, RSMap), 32, 64)), Mem32))

"CF" |-> mi(1, 0)

"PF" |-> (undefMInt)

"AF" |-> (undefMInt)

"ZF" |-> (#ifMInt eqMInt( andMInt( negMInt( extractMInt( getParentValue(R2, RSMap), 32, 64)), Mem32), mi(32, 0)) #then mi(1, 1) #else mi(1, 0) #fi)

"SF" |-> andMInt( negMInt( extractMInt( getParentValue(R2, RSMap), 32, 33)), extractMInt( Mem32, 0, 1))

"OF" |-> mi(1, 0)
      )
    </regstate>
endmodule
