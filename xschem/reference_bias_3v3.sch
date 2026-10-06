v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 -310 -150 -310 {
lab=Vbiasp}
N -300 -160 -150 -160 {
lab=Vbiasn}
N -340 -200 -280 -200 {
lab=Vbiasn}
N -280 -200 -280 -160 {
lab=Vbiasn}
N -340 -370 -340 -340 {
lab=VAPWR}
N -340 -370 -110 -370 {
lab=VAPWR}
N -110 -370 -110 -340 {
lab=VAPWR}
N -340 -130 -340 -120 {
lab=VGND}
N -700 -270 -700 -190 {
lab=Vstartup}
N -700 -240 -610 -240 {
lab=Vstartup}
N -660 -160 -570 -160 {
lab=Vbiasn}
N -570 -200 -570 -160 {
lab=Vbiasn}
N -570 -310 -570 -270 {
lab=Vbiasp}
N -570 -310 -350 -310 {
lab=Vbiasp}
N -350 -310 -350 -300 {
lab=Vbiasp}
N -350 -300 -330 -300 {
lab=Vbiasp}
N -330 -300 -330 -310 {
lab=Vbiasp}
N -330 -310 -300 -310 {
lab=Vbiasp}

N -700 -360 -700 -340 {
lab=VAPWR}
N -700 -130 -700 -120 {
lab=VGND}
N -700 -270 -650 -270 {
lab=Vstartup}
N -650 -310 -650 -270 {
lab=Vstartup}
N -660 -310 -650 -310 {
lab=Vstartup}
N -700 -370 -700 -360 {
lab=VAPWR}
N -110 -60 -110 -50 {
lab=#net1}
N -110 -130 -110 -120 {
lab=#net1}
N -570 -210 -570 -200 {
lab=Vbiasn}
N -700 -280 -700 -270 {
lab=Vstartup}
N -570 -160 -350 -160 {
lab=Vbiasn}
N -350 -160 -350 -150 {
lab=Vbiasn}
N -350 -150 -330 -150 {
lab=Vbiasn}
N -330 -150 -330 -160 {
lab=Vbiasn}
N -330 -160 -300 -160 {
lab=Vbiasn}

N -150 -20 -130 -20 {
lab=VGND}
N -160 -310 -160 -270 {
lab=Vbiasp}
N -160 -270 -110 -270 {
lab=Vbiasp}
N -340 -280 -340 -270 {
lab=Vbiasn}
N -340 -210 -340 -190 {
lab=Vbiasn}
N -110 -280 -110 -260 {
lab=Vbiasp}
N -110 -200 -110 -190 {
lab=Vbiasp}
N -110 -260 -110 -200 {
lab=Vbiasp}
N -150 -20 -150 10 {
lab=VGND}
N -150 10 -110 10 {
lab=VGND}
N -110 -120 -110 -60 {
lab=#net1}
N -150 -310 -120 -310 {
lab=Vbiasp}
N -120 -310 -120 -300 {
lab=Vbiasp}
N -120 -300 -100 -300 {
lab=Vbiasp}
N -100 -300 -100 -310 {
lab=Vbiasp}
N -100 -310 50 -310 {
lab=Vbiasp}

N -110 -370 90 -370 {
lab=VAPWR}
N 90 -370 90 -340 {
lab=VAPWR}
N 90 -280 90 -260 {
lab=IREF}
N -340 -270 -340 -210 {
lab=Vbiasn}
N -700 -120 -700 10 {
lab=VGND}
N -710 10 -150 10 {
lab=VGND}
N -340 -120 -340 10 {
lab=VGND}
N -700 -370 -340 -370 {
lab=VAPWR}
C {sky130_fd_pr/res_high_po_0p69.sym} -110 -20 0 0 {name=R1
L=30.5
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {hv_pmos.sym} -130 -310 0 0 {name=M40
L=1
W=10
body=VAPWR
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {hv_nmos.sym} -680 -160 0 1 {name=M44
L=1
W=3
body=VGND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {hv_pmos.sym} -320 -310 0 1 {name=M41
L=1
W=10
body=VAPWR
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {hv_pmos.sym} -680 -310 0 1 {name=M43
L=10
W=1
body=VAPWR
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {hv_nmos.sym} -320 -160 0 1 {name=M42
L=1
W=5
body=VGND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {hv_nmos.sym} -130 -160 0 0 {name=M39
L=1
W=20
body=VGND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {hv_nmos.sym} -590 -240 0 0 {name=M45
L=1
W=2
body=VGND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} -230 -160 0 1 {name=p1 sig_type=std_logic lab=Vbiasn}
C {devices/lab_wire.sym} -230 -310 0 1 {name=p2 sig_type=std_logic lab=Vbiasp}
C {devices/lab_wire.sym} -680 -240 0 1 {name=p4 sig_type=std_logic lab=Vstartup}
C {devices/iopin.sym} -700 -370 0 0 {name=p3 lab=VAPWR}
C {devices/iopin.sym} -710 10 0 0 {name=p8 lab=VGND}
C {hv_pmos.sym} 70 -310 0 0 {name=M1
L=1
W=10
body=VAPWR
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/opin.sym} 90 -260 0 0 {name=p9 lab=IREF}
C {body_label.sym} -110 -310 0 0 {name=body_M40 lab=VAPWR}
C {body_label.sym} -700 -160 0 1 {name=body_M44 lab=VGND}
C {body_label.sym} -340 -310 0 1 {name=body_M41 lab=VAPWR}
C {body_label.sym} -700 -310 0 1 {name=body_M43 lab=VAPWR}
C {body_label.sym} -340 -160 0 1 {name=body_M42 lab=VGND}
C {body_label.sym} -110 -160 0 0 {name=body_M39 lab=VGND}
C {body_label.sym} -570 -240 0 0 {name=body_M45 lab=VGND}
C {body_label.sym} 90 -310 0 0 {name=body_M1 lab=VAPWR}
T {Beta multiplier: K = 4; nominal IREF = 5 uA
M43/M44/M45 provide startup. IREF drives one mirror master.
PMOS bodies: VAPWR; NMOS bodies and resistor substrate: VGND.} -100 -150 0 0 0.23 0.23 {}
