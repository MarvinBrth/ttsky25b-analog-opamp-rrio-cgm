v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Unity-follower loop: voltage and current injection} -440 -410 0 0 .35 .35 {}
T {TT, 25 C, VAPWR = 3.3 V, CL = 20 pF, no DC load} -440 -370 0 0 .25 .25 {}
C {opamp-rrio-cgm-3v3.sym} 0 0 0 0 {name=XDUT}
C {devices/vsource.sym} -420 -230 0 0 {name=VDD value="3.3 AC 0"}
C {devices/gnd.sym} -420 -200 0 0 {name=gVDD lab=0}
N -420 -260 -420 -300 {lab=VAPWR}
N -420 -300 20 -300 {lab=VAPWR}
N 20 -300 20 -60 {lab=VAPWR}
C {devices/lab_pin.sym} -420 -300 0 0 {name=p_VAPWR_-420_-300 lab=VAPWR}
N 20 60 20 100 {lab=0}
C {devices/gnd.sym} 20 100 0 0 {name=gDUT lab=0}
C {devices/vsource.sym} -300 120 0 0 {name=VIN value="1.65 AC 0"}
C {devices/gnd.sym} -300 150 0 0 {name=gVIN lab=0}
N -300 90 -300 30 {lab=vin}
N -300 30 -80 30 {lab=vin}
C {devices/lab_pin.sym} -250 30 0 0 {name=p_vin_-250_30 lab=vin}
N -80 -30 -130 -30 {lab=vminus}
N -130 -30 -130 -190 {lab=vminus}
C {devices/lab_pin.sym} -130 -100 0 0 {name=p_vminus_-130_-100 lab=vminus}
N 140 0 670 0 {lab=out}
C {devices/lab_pin.sym} 670 0 0 1 {name=p_out_670_0 lab=out}
N 300 -190 300 0 {lab=out}
N 380 0 380 100 {lab=out}
C {devices/capa.sym} 380 130 0 0 {name=CL value=20p m=1}
C {devices/gnd.sym} 380 160 0 0 {name=gCL lab=0}
N -130 -190 60 -190 {lab=vminus}
C {devices/vsource.sym} 90 -190 3 0 {name=VJ value="0 AC 0"}
N 120 -190 300 -190 {lab=out}
N 530 0 530 100 {lab=out}
C {devices/isource.sym} 530 130 2 0 {name=IT value="0 AC 0"}
C {devices/gnd.sym} 530 160 0 0 {name=gIT lab=0}
C {devices/code.sym} -440 480 0 0 {name=MODELS only_toplevel=true format="tcleval( @value )" value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"}
C {devices/code_shown.sym} -220 460 0 0 {name=COMMANDS only_toplevel=true value=".temp 25
.control
op
alter @VJ[acmag]=1
ac dec 60 1 1e8
alter @VJ[acmag]=0
alter @IT[acmag]=1
ac dec 60 1 1e8
.endc"}
