v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Standalone reference + bias tree: 10-us cold-start ramp} -450 -400 0 0 0.28 0.28 {}
C {devices/code.sym} -450 -370 0 0 {name=TT_MODELS only_toplevel=true format="tcleval( @value )" value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"}
C {opamp_bias_3v3.sym} 0 0 0 0 {name=XB}
C {devices/lab_pin.sym} -150 -100 0 0 {name=pnew74 lab=VAPWR}
C {devices/lab_pin.sym} -150 100 0 0 {name=pnew75 lab=GND}
C {devices/lab_pin.sym} 150 -100 0 0 {name=pnew76 lab=bias1}
C {devices/lab_pin.sym} 150 -50 0 0 {name=pnew77 lab=bias4}
C {devices/lab_pin.sym} 150 0 0 0 {name=pnew78 lab=bias2}
C {devices/lab_pin.sym} 150 50 0 0 {name=pnew79 lab=bias3}
C {devices/lab_pin.sym} 150 100 0 0 {name=pnew80 lab=bias}
C {devices/vsource.sym} -450 -120 0 0 {name=VDD value="PWL(0 0 10u 3.3 100u 3.3)"}
C {devices/lab_pin.sym} -450 -150 0 0 {name=pnew81 lab=VAPWR}
C {devices/gnd.sym} -450 -90 0 0 {name=gVDD lab=GND}
C {devices/code_shown.sym} -450 270 0 0 {name=COMMANDS only_toplevel=true value=".options itl1=1000 reltol=0.0001
.control
set wr_singlescale
set wr_vecnames
save all @m.xb.xref.xm1.msky130_fd_pr__pfet_g5v0d10v5[id] @m.xb.xref.xm45.msky130_fd_pr__nfet_g5v0d10v5[id]
tran 100n 100u 0 100n uic
write testbench_bias_3v3.raw
wrdata testbench_bias_3v3.dat v(bias1) v(bias2) v(bias3) v(bias4) @m.xb.xref.xm1.msky130_fd_pr__pfet_g5v0d10v5[id] @m.xb.xref.xm45.msky130_fd_pr__nfet_g5v0d10v5[id]
.endc"}
C {devices/launcher.sym} 360 240 0 0 {name=LOAD descr="Load waves" tclcommand="xschem raw_read $netlist_dir/testbench_bias_3v3.raw tran"}
B 2 720 -330 1480 0 {flags=graph
y1=0 y2=3.5 x1=0 x2=0.0001
divy=5 divx=5 subdivy=1 subdivx=1
node="bias1
bias2
bias3
bias4" color="7 4 6 5 8" dataset=-1
logx=0 logy=0 sim_type=tran rawfile=$netlist_dir/testbench_bias_3v3.raw}
B 2 720 30 1480 360 {flags=graph
y1=0 y2=8e-06 x1=0 x2=0.0001
divy=5 divx=5 subdivy=1 subdivx=1
node="i(@m.xb.xref.xm1.msky130_fd_pr__pfet_g5v0d10v5[id])" color="7 4 6 5 8" dataset=-1
logx=0 logy=0 sim_type=tran rawfile=$netlist_dir/testbench_bias_3v3.raw}
