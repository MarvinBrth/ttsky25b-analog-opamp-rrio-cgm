-- sch_path: /home/ttuser/ttsky25b-analog-opamp-rrio-cgm/xschem/testbench.sch
entity testbench is
end testbench ;

architecture arch_testbench of testbench is

component opamp-rrio-cgm 
port (
  VDPWR : in std_logic ;
  diffout : out std_logic ;
  in+ : in std_logic ;
  in- : in std_logic ;
  VGND : in std_logic
);
end component ;


signal pinout : std_logic ;
signal out : std_logic ;
signal VGND : std_logic ;
signal VDPWR : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal MINUS : std_logic ;
signal GND : std_logic ;
signal PLUS : std_logic ;
begin
R1 : res
generic map (
   value => 500 ,
   footprint => 1206 ,
   device => resistor ,
   m => 1
)
port map (
   P => pinout ,
   M => out
);

R2 : res
generic map (
   value => 30 ,
   footprint => 1206 ,
   device => resistor ,
   m => 1
)
port map (
   P => VDPWR ,
   M => net1
);

C6 : parax_cap
generic map (
   gnd => 0 ,
   value => 1.0e-10 ,
   m => 1
)
port map (
   p => VDPWR
);

R3 : res
generic map (
   value => 30 ,
   footprint => 1206 ,
   device => resistor ,
   m => 1
)
port map (
   P => VGND ,
   M => net2
);

C11 : parax_cap
generic map (
   gnd => 0 ,
   value => 1.0e-10 ,
   m => 1
)
port map (
   p => VGND
);

x1 : opamp-rrio-cgm
port map (
   VDPWR => VDPWR ,
   diffout => out ,
   in+ => PLUS ,
   in- => MINUS ,
   VGND => VGND
);

Plus : vsource
generic map (
   value => 1.8
)
port map (
   p => PLUS ,
   m => GND
);

Minus : vsource
generic map (
   value => 0
)
port map (
   p => MINUS ,
   m => GND
);

Plus1 : vsource
generic map (
   value => 1.8
)
port map (
   p => net1 ,
   m => GND
);

Minus1 : vsource
generic map (
   value => 0
)
port map (
   p => net2 ,
   m => GND
);


* ngspice commands
.control

tran 100p 200n

write testbench.raw

.endc


** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt


end arch_testbench ;


-- expanding   symbol:  opamp-rrio-cgm.sym # of pins=5
-- sym_path: /home/ttuser/ttsky25b-analog-opamp-rrio-cgm/xschem/opamp-rrio-cgm.sym
-- sch_path: /home/ttuser/ttsky25b-analog-opamp-rrio-cgm/xschem/opamp-rrio-cgm.sch
entity opamp-rrio-cgm is
port (
  VDPWR : in std_logic ;
  diffout : out std_logic ;
  in+ : in std_logic ;
  in- : in std_logic ;
  VGND : in std_logic
);
end opamp-rrio-cgm ;

architecture arch_opamp-rrio-cgm of opamp-rrio-cgm is


signal net10 : std_logic ;
signal net11 : std_logic ;
signal net12 : std_logic ;
signal net13 : std_logic ;
signal net14 : std_logic ;
signal net15 : std_logic ;
signal net16 : std_logic ;
signal net17 : std_logic ;
signal net18 : std_logic ;
signal net19 : std_logic ;
signal net20 : std_logic ;
signal net21 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
M1 : nfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 80 ,
   nf => 4 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => in+ ,
   S => net4
);

M2 : pfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 200 ,
   body => VDPWR ,
   nf => 6 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net6 ,
   G => in+ ,
   S => net1
);

M3 : nfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 80 ,
   nf => 4 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net3 ,
   G => in- ,
   S => net4
);

M4 : pfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 200 ,
   body => VDPWR ,
   nf => 6 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net5 ,
   G => in- ,
   S => net1
);

M5 : pfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 200 ,
   body => VDPWR ,
   nf => 6 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net6 ,
   G => net18 ,
   S => net1
);

M6 : pfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 200 ,
   body => VDPWR ,
   nf => 6 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net5 ,
   G => net18 ,
   S => net1
);

M7 : nfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 80 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net3 ,
   G => net18 ,
   S => net4
);

M8 : nfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 80 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => net18 ,
   S => net4
);

M9 : pfet3_01v8_lvt
generic map (
   L => 6 ,
   W => 45 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => net7 ,
   S => VDPWR
);

M12 : pfet3_01v8_lvt
generic map (
   L => 1 ,
   W => 30 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net7 ,
   G => net7 ,
   S => VDPWR
);

M13 : pfet3_01v8_lvt
generic map (
   L => 1 ,
   W => 30 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net16 ,
   G => net16 ,
   S => net7
);

M10 : pfet3_01v8_lvt
generic map (
   L => 6 ,
   W => 45 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => net8 ,
   S => VDPWR
);

M11 : pfet3_01v8_lvt
generic map (
   L => 6 ,
   W => 45 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net3 ,
   G => net8 ,
   S => VDPWR
);

M14 : pfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 40 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net8 ,
   G => net17 ,
   S => net2
);

M15 : pfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 40 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net13 ,
   G => net17 ,
   S => net3
);

M16 : pfet3_01v8_lvt
generic map (
   L => 2.5 ,
   W => 10 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net9 ,
   G => net12 ,
   S => net8
);

M17 : nfet3_01v8_lvt
generic map (
   L => 2.5 ,
   W => 10 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net8 ,
   G => net11 ,
   S => net9
);

M18 : nfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 12 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net9 ,
   G => net19 ,
   S => net6
);

M19 : nfet3_01v8_lvt
generic map (
   L => 0.5 ,
   W => 12 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net15 ,
   G => net19 ,
   S => net5
);

M20 : nfet3_01v8_lvt
generic map (
   L => 6 ,
   W => 15 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net6 ,
   G => net9 ,
   S => VGND
);

M21 : nfet3_01v8_lvt
generic map (
   L => 6 ,
   W => 15 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net5 ,
   G => net9 ,
   S => VGND
);

M22 : nfet3_01v8_lvt
generic map (
   L => 6 ,
   W => 15 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net4 ,
   G => net16 ,
   S => VGND
);

M23 : pfet3_01v8_lvt
generic map (
   L => 1 ,
   W => 5 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net11 ,
   G => net7 ,
   S => VDPWR
);

M25 : nfet3_01v8_lvt
generic map (
   L => 0.18 ,
   W => 40 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net11 ,
   G => net11 ,
   S => net14
);

M26 : nfet3_01v8_lvt
generic map (
   L => 0.18 ,
   W => 40 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net13 ,
   G => net11 ,
   S => net15
);

M28 : pfet3_01v8_lvt
generic map (
   L => 0.35 ,
   W => 100 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net15 ,
   G => net12 ,
   S => net13
);

M29 : pfet3_01v8_lvt
generic map (
   L => 0.35 ,
   W => 198 ,
   body => VDPWR ,
   nf => 18 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => diffout ,
   G => net13 ,
   S => VDPWR
);

M30 : nfet3_01v8_lvt
generic map (
   L => 0.18 ,
   W => 5 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net14 ,
   G => net14 ,
   S => VGND
);

M31 : nfet3_01v8_lvt
generic map (
   L => 1 ,
   W => 5 ,
   nf => 1 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net12 ,
   G => net16 ,
   S => VGND
);

M32 : nfet3_01v8_lvt
generic map (
   L => 0.18 ,
   W => 60 ,
   nf => 10 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net20 ,
   G => net15 ,
   S => net21
);

M33 : nfet3_01v8_lvt
generic map (
   L => 1 ,
   W => 12 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X ,
   nf => 1
)
port map (
   D => net16 ,
   G => net16 ,
   S => VGND
);

C1 : cap_mim_m3_1
generic map (
   model => cap_mim_m3_1 ,
   W => 0.6 ,
   L => 0.6 ,
   MF => 1 ,
   spiceprefix => X
)
port map (
   c0 => diffout ,
   c1 => net3
);

C2 : cap_mim_m3_1
generic map (
   model => cap_mim_m3_1 ,
   W => 0.6 ,
   L => 0.6 ,
   MF => 1 ,
   spiceprefix => X
)
port map (
   c0 => diffout ,
   c1 => net5
);

M34 : pfet3_01v8_lvt
generic map (
   L => 1 ,
   W => 30 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net17 ,
   G => net17 ,
   S => VDPWR
);

M37 : nfet3_01v8_lvt
generic map (
   L => 1 ,
   W => 12 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X ,
   nf => 1
)
port map (
   D => net18 ,
   G => net19 ,
   S => net19
);

M39 : pfet3_01v8_lvt
generic map (
   L => 1 ,
   W => 30 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net18 ,
   G => net18 ,
   S => net17
);

M40 : nfet3_01v8_lvt
generic map (
   L => 1 ,
   W => 12 ,
   mult => 1 ,
   body => VGND ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_01v8_lvt ,
   spiceprefix => X ,
   nf => 1
)
port map (
   D => net19 ,
   G => VGND ,
   S => VGND
);

M24 : pfet3_01v8_lvt
generic map (
   L => 0.35 ,
   W => 18 ,
   body => VDPWR ,
   nf => 18 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net10 ,
   G => net10 ,
   S => VDPWR
);

M27 : pfet3_01v8_lvt
generic map (
   L => 0.35 ,
   W => 100 ,
   body => VDPWR ,
   nf => 1 ,
   mult => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.29' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.29)' ,
   as => 'int((nf+2)/2) * W/nf * 0.29' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.29)' ,
   nrd => '0.29 / W' ,
   nrs => '0.29 / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_01v8_lvt ,
   spiceprefix => X
)
port map (
   D => net12 ,
   G => net12 ,
   S => net10
);

end arch_opamp-rrio-cgm ;

