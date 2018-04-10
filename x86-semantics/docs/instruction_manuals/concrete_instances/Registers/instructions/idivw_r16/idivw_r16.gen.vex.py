import angr
proj = angr.Project('./instructions/idivw_r16/idivw_r16.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()