v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Unity follower: real bias startup + 1.55/1.75-V input steps; CL = 5 pF} -450 -440 0 0 0.28 0.28 {}
C {devices/code.sym} -450 -370 0 0 {name=TT_MODELS only_toplevel=true format="tcleval( @value )" value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"}
C {opamp-rrio-cgm-3v3.sym} 0 0 0 0 {name=x1}
C {devices/lab_pin.sym} 20 -60 0 0 {name=pnew65 lab=VAPWR}
C {devices/lab_pin.sym} 20 60 0 0 {name=pnew66 lab=GND}
C {devices/lab_pin.sym} -80 30 0 0 {name=pnew67 lab=vin}
C {devices/lab_pin.sym} -80 -30 0 0 {name=pnew68 lab=out}
C {devices/lab_pin.sym} 140 0 0 0 {name=pnew69 lab=out}
C {devices/vsource.sym} -450 -190 0 0 {name=VDD value="PWL(0 0 10u 3.3 50u 3.3)"}
C {devices/lab_pin.sym} -450 -220 0 0 {name=pnew70 lab=VAPWR}
C {devices/gnd.sym} -450 -160 0 0 {name=gVDD lab=GND}
C {devices/vsource.sym} -250 100 0 0 {name=VIN value="PWL(0 0 10u 1.65 20u 1.65 20.001u 1.55 25u 1.55 25.001u 1.75 30u 1.75 30.001u 1.55 35u 1.55 35.001u 1.75 50u 1.75)"}
C {devices/lab_pin.sym} -250 70 0 0 {name=pnew71 lab=vin}
C {devices/gnd.sym} -250 130 0 0 {name=gVIN lab=GND}
C {devices/capa.sym} 250 70 0 0 {name=CL value=5p m=1}
C {devices/lab_pin.sym} 250 40 0 0 {name=pnew72 lab=out}
C {devices/lab_pin.sym} 250 100 0 0 {name=pnew73 lab=GND}
B 2 850 -400 1610 -70 {flags=graph
y1=0 y2=3.5 x1=0 x2=5e-05
divy=5 divx=5 subdivy=1 subdivx=1
node="vin
out
vapwr" color="7 4 6 5 8" dataset=-1
logx=0 logy=0 sim_type=tran rawfile=$netlist_dir/testbench_tran_3v3.raw}
B 2 850 -40 1610 290 {flags=graph
y1=0 y2=3.5 x1=0 x2=5e-05
divy=5 divx=5 subdivy=1 subdivx=1
node="x1.bias1
x1.bias2
x1.bias3
x1.bias4
x1.bias" color="7 4 6 5 8" dataset=-1
logx=0 logy=0 sim_type=tran rawfile=$netlist_dir/testbench_tran_3v3.raw}
C {devices/code_shown.sym} -450 340 0 0 {name=COMMANDS only_toplevel=true value=".options itl1=1000 reltol=0.0001
.control
set wr_singlescale
set wr_vecnames
save all @m.x1.xb.xref.xm1.msky130_fd_pr__pfet_g5v0d10v5[id]
tran 5n 50u 0 5n uic

* Reject roots outside the SKY130 HV gate-voltage range.
let physical_bias_peak = vecmax(abs(v(x1.bias)))
if physical_bias_peak > 5.5
echo PHYSICAL_BIAS_ERROR: invalid PDK operating point
quit 1
end
let error_mV=1000*(v(out)-v(vin))
write testbench_tran_3v3.raw
wrdata testbench_tran_3v3.dat v(vin) v(out) v(VAPWR) @m.x1.xb.xref.xm1.msky130_fd_pr__pfet_g5v0d10v5[id] i(VDD)
.endc"}
C {devices/launcher.sym} 360 240 0 0 {name=LOAD descr="Load waves" tclcommand="xschem raw_read $netlist_dir/testbench_tran_3v3.raw tran"}
B 2 1650 -400 2410 -70 {flags=graph
y1=1.5 y2=1.8 x1=1.9e-05 x2=4e-05
divy=6 divx=7 subdivy=1 subdivx=1
node="vin out" color="7 4" dataset=-1
logx=0 logy=0 sim_type=tran rawfile=$netlist_dir/testbench_tran_3v3.raw}
T {Input/output step detail [V]; time [s]} 1670 -425 0 0 0.23 0.23 {}
