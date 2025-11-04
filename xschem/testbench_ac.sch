v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 470 -420 1270 -20 {flags=graph
y1=-88
y2=-23
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=12
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac

color=7
node="\\"out db20()\\""
rawfile=$netlist_dir/testbench_ac.raw}
B 2 470 10 1270 410 {flags=graph
y1=-180
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=12
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=ph(out)
color=11
dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac
rawfile=$netlist_dir/testbench_ac.raw}
N 160 -60 200 -60 {
lab=#net1}
N 200 -60 210 -60 {
lab=#net1}
N -80 -140 -80 -90 {
lab=in-}
N -80 -90 -60 -90 {
lab=in-}
N 60 -220 180 -220 {
lab=#net1}
N -80 -220 -80 -140 {
lab=in-}
N -80 -220 -0 -220 {
lab=in-}
N -160 -30 -60 -30 {
lab=in+}
N 180 -220 180 -60 {
lab=#net1}
N 270 -60 350 -60 {
lab=out}
C {devices/launcher.sym} 220 170 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} 350 -60 0 1 {name=p7 sig_type=std_logic lab=out}
C {devices/code.sym} -30 150 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {opamp-rrio-cgm.sym} 20 -60 0 0 {name=x1}
C {devices/gnd.sym} 40 0 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 40 -120 0 0 {name=p4 sig_type=std_logic lab=VDPWR}
C {devices/vsource.sym} -160 0 0 0 {name=V4 value="0.9 AC 1 0" savecurrent=false}
C {devices/res.sym} 30 -220 1 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} -80 -90 0 1 {name=p2 sig_type=std_logic lab=in-}
C {devices/gnd.sym} -160 30 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} -120 -30 0 1 {name=p6 sig_type=std_logic lab=in+}
C {devices/simulator_commands_shown.sym} -560 -180 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.option reltol=1e-5
+  abstol=1e-14 savecurrents
.control
  save all
  op
  remzerovec 
  write testbench_ac.raw
  set appendwrite
  ac dec 10 1 1e12
  remzerovec
  write testbench_ac.raw
  tran 1e-15 6e-12
  write testbench_ac.raw
.endc
"}
C {devices/capa.sym} 310 -30 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 240 -60 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 310 0 0 0 {name=l3 lab=GND}
