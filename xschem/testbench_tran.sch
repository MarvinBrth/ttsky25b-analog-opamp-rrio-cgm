v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 610 -280 1410 120 {flags=graph
y1=2e-06
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.2351647e-22
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
out
v3"

dataset=-1
unitx=1
logx=0
logy=0
color="7 11 10"
rawfile=$netlist_dir/testbench_tran.raw}
B 2 600 150 1400 550 {flags=graph
y1=0.24426771
y2=0.76855571
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.2351647e-22
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x1.bias4
x1.bias3
x1.bias2
x1.bias1
x1.bias
x1.sourcedrain"
color="8 7 6 5 4 10"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/testbench_tran.raw}
N 200 0 240 0 {
lab=#net1}
N -30 -30 -20 -30 {
lab=V3}
N 350 60 350 70 {
lab=GND}
N 240 -0 250 0 {
lab=#net1}
N 310 0 380 0 {
lab=out}
C {devices/launcher.sym} 430 220 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} 380 0 0 1 {name=p7 sig_type=std_logic lab=out}
C {devices/simulator_commands_shown.sym} -340 -90 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=".control

tran 2n 40u

write testbench_tran.raw

.endc
"}
C {devices/code.sym} -330 130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {opamp-rrio-cgm.sym} 60 0 0 0 {name=x1}
C {devices/lab_wire.sym} -20 30 2 1 {name=p2 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 80 60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 50 190 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 50 220 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 50 160 0 0 {name=p1 sig_type=std_logic lab=VDPWR}
C {devices/vsource.sym} 140 190 0 0 {name=V2 value="Pulse(0.8 1 0 1n 1n 5u 10u)"  savecurrent=false}
C {devices/gnd.sym} 140 220 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 140 160 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 80 -60 0 0 {name=p4 sig_type=std_logic lab=VDPWR}
C {devices/capa.sym} 350 30 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 350 70 0 0 {name=l3 lab=GND}
C {devices/res.sym} 280 0 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -90 190 0 0 {name=V3 value=0.9 savecurrent=false}
C {devices/gnd.sym} -90 220 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -90 160 0 0 {name=p5 sig_type=std_logic lab=V3}
C {devices/lab_wire.sym} -30 -30 0 0 {name=p6 sig_type=std_logic lab=V3}
