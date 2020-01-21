onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clk
add wave -noupdate /testbench/reset
add wave -noupdate /testbench/WriteData
add wave -noupdate /testbench/DataAdr
add wave -noupdate /testbench/MemWrite
add wave -noupdate /testbench/dut/PC
add wave -noupdate /testbench/dut/Instr
add wave -noupdate /testbench/dut/ReadData
add wave -noupdate /testbench/dut/i_arm/RegWrite
add wave -noupdate /testbench/dut/i_arm/ALUSrc
add wave -noupdate /testbench/dut/i_arm/MemtoReg
add wave -noupdate /testbench/dut/i_arm/PCSrc
add wave -noupdate /testbench/dut/i_arm/RegSrc
add wave -noupdate /testbench/dut/i_arm/ImmSrc
add wave -noupdate /testbench/dut/i_arm/ALUControl
add wave -noupdate /testbench/dut/i_arm/ALUFlags
add wave -noupdate /testbench/dut/i_arm/dp/rf/mem(3)
add wave -noupdate /testbench/dut/i_arm/dp/rf/mem(4)
add wave -noupdate /testbench/dut/i_arm/dp/i_alu/a
add wave -noupdate /testbench/dut/i_arm/dp/i_alu/b
add wave -noupdate /testbench/dut/i_arm/dp/ALUResult
add wave -noupdate /testbench/dut/i_arm/dp/aluresultmux/y
add wave -noupdate /testbench/dut/i_arm/dp/srcbmux/y
add wave -noupdate /testbench/dut/i_arm/dp/sh/a
add wave -noupdate /testbench/dut/i_arm/dp/sh/shamt
add wave -noupdate /testbench/dut/i_arm/dp/sh/shtype
add wave -noupdate /testbench/dut/i_arm/dp/sh/y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {93 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 300
configure wave -valuecolwidth 159
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {43 ns} {98 ns}
