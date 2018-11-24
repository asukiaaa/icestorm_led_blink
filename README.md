# icestorm led blink

A project to blink led with using icestorm and iCE40-HX8K.

# Requirement

## Hardware

- PC (Test with Ubuntu18.04 OS)
- [iCE40-HX8K](http://www.latticesemi.com/en/Products/DevelopmentBoardsAndKits/iCE40HX8KBreakoutBoard.aspx)

## Software

- [icestorm](http://www.clifford.at/icestorm/#install)

# Usage

Build and write.
```
yosys -p 'synth_ice40 -top top -blif blink.blif' blink.v
arachne-pnr -d 8k -o blink.asc -p hx8k.pcf blink.blif
icepack blink.asc blink.bin
iceprog blink.bin
```

or
```
make
make prog
```

# References
- [Project IceStorm](http://www.clifford.at/icestorm/)
- [Raspberry Pi上にFPGA開発環境を構築する](http://cellspe.matrix.jp/zerofpga/sjr_ice.html)
