v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {3.3-V unity follower output drive; positive ILOAD = source demand} -470 -360 0 0 0.28 0.28 {}
C {devices/code.sym} -470 -330 0 0 {name=TT_MODELS only_toplevel=true format="tcleval( @value )" value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"}
C {opamp-rrio-cgm-3v3.sym} 0 0 0 0 {name=x1}
C {devices/lab_pin.sym} 20 -90 0 0 {name=vdd_pin lab=VAPWR}
C {devices/lab_pin.sym} 20 90 0 0 {name=gnd_pin lab=GND}
C {devices/vsource.sym} -430 -160 0 0 {name=VDD value=3.3}
C {devices/lab_pin.sym} -430 -190 0 0 {name=vdd_src lab=VAPWR}
C {devices/gnd.sym} -430 -130 0 0 {name=gVDD lab=GND}
C {devices/vsource.sym} -300 60 0 0 {name=VIN value=1.65}
N -300 30 -80 30 {lab=vin}
C {devices/gnd.sym} -300 90 0 0 {name=gVIN lab=GND}
N -80 -30 -130 -30 {lab=out}
N -130 -130 -130 -30 {lab=out}
N -130 -130 180 -130 {lab=out}
N 180 -130 180 0 {lab=out}
N 140 0 280 0 {lab=out}
N 280 0 280 40 {lab=out}
C {devices/isource.sym} 280 70 0 0 {name=ILOAD value="PWL(0 0 10u 0 10.01u 1m 20u 1m 20.01u 0 30u 0 30.01u -1m 40u -1m 40.01u 0 50u 0)"}
C {devices/gnd.sym} 280 100 0 0 {name=gLOAD lab=GND}
N 180 0 180 130 {lab=out}
N 180 130 360 130 {lab=out}
N 360 130 360 160 {lab=out}
C {devices/capa.sym} 360 190 0 0 {name=CL value=20p m=1}
C {devices/gnd.sym} 360 220 0 0 {name=gCL lab=GND}
B 2 850 -340 1620 0 {flags=graph
y1=1.1 y2=2.2 x1=0 x2=5e-05
divy=6 divx=8 subdivy=1 subdivx=1
node="vin out" color="7 4 6" dataset=-1
logx=0 logy=0  sim_type=tran rawfile=$netlist_dir/testbench_output_tran_3v3.raw}
B 2 850 40 1620 380 {flags=graph
y1=-1.2 y2=4 x1=0 x2=5e-05
divy=6 divx=8 subdivy=1 subdivx=1
node="load_mA source_mA sink_mA" color="7 4 6" dataset=-1
logx=0 logy=0  sim_type=tran rawfile=$netlist_dir/testbench_output_tran_3v3.raw}
B 2 1670 40 2440 380 {flags=graph
y1=-3 y2=3 x1=0 x2=5e-05
divy=6 divx=8 subdivy=1 subdivx=1
node="error_mV" color="7 4 6" dataset=-1
logx=0 logy=0  sim_type=tran rawfile=$netlist_dir/testbench_output_tran_3v3.raw}
T {Output [V]; time [s]; 10-ns load edges} 870 -365 0 0 .24 .24 {}
T {Load / output-FET currents [mA]; time [s]} 870 15 0 0 .24 .24 {}
T {Settled error detail [mV]; time [s]} 1690 15 0 0 .24 .24 {}
C {devices/code_shown.sym} -470 290 0 0 {name=COMMANDS only_toplevel=true value=".options klu itl1=100 reltol=.0001
.nodeset v(x1.net1)=2.55229105
.nodeset v(x1.net3)=0.866789395
.nodeset v(x1.net4)=0.29731059
.nodeset v(x1.net5)=0.297227056
.nodeset v(x1.net10)=2.03109432
.nodeset v(x1.net12)=1.08535928
.nodeset v(x1.net6)=2.02894826
.nodeset v(x1.net13)=1.08255405
.nodeset v(x1.bias1)=2.05405688
.nodeset v(x1.bias2)=2.04452255
.nodeset v(x1.bias3)=1.14047666
.nodeset v(x1.bias4)=1.04710014
.nodeset v(x1.bias)=1.65
.nodeset v(out)=1.65 v(x1.xb.xref.vbiasn)=.91 v(x1.xb.xref.vbiasp)=2.05 v(x1.xb.xref.vstartup)=.1
.control
set wr_singlescale
set wr_vecnames
save all @iload[current] @m.x1.xm29.msky130_fd_pr__pfet_g5v0d10v5[id] @m.x1.xm32.msky130_fd_pr__nfet_g5v0d10v5[id] @m.x1.xb.xref.xm1.msky130_fd_pr__pfet_g5v0d10v5[id]
tran 5n 50u 0 5n

* Reject roots outside the SKY130 HV gate-voltage range.
let physical_bias_peak = vecmax(abs(v(x1.bias)))
if physical_bias_peak > 5.5
echo PHYSICAL_BIAS_ERROR: invalid PDK operating point
quit 1
end
let error_mV=1000*(v(out)-v(vin))
let load_mA=1000*@iload[current]
let source_mA=1000*@m.x1.xm29.msky130_fd_pr__pfet_g5v0d10v5[id]
let sink_mA=1000*@m.x1.xm32.msky130_fd_pr__nfet_g5v0d10v5[id]
write testbench_output_tran_3v3.raw all
wrdata testbench_output_tran_3v3.dat v(vin) v(out) @iload[current] i(VDD) @m.x1.xm29.msky130_fd_pr__pfet_g5v0d10v5[id] @m.x1.xm32.msky130_fd_pr__nfet_g5v0d10v5[id] @m.x1.xb.xref.xm1.msky130_fd_pr__pfet_g5v0d10v5[id]
.endc"}
C {devices/launcher.sym} 510 230 0 0 {name=LOAD descr="Load waves" tclcommand="xschem raw_read $netlist_dir/testbench_output_tran_3v3.raw tran"}
C {devices/lab_pin.sym} -200 30 0 0 {name=signal_input lab=vin}
C {devices/lab_pin.sym} 280 0 0 1 {name=signal_output lab=out}
N 20 -90 20 -60 {lab=VAPWR}
N 20 60 20 90 {lab=GND}
B 2 1670 -340 2440 0 {flags=graph
y1=1.3 y2=2.1 x1=2.98e-05 x2=3.2e-05
divy=8 divx=8 subdivy=1 subdivx=1
node="vin out" color="7 4" dataset=-1
logx=0 logy=0 sim_type=tran rawfile=$netlist_dir/testbench_output_tran_3v3.raw}
T {Sinking load-step detail [V]; time [s]} 1690 -365 0 0 .24 .24 {}
