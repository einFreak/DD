onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_module/TB_CLK
add wave -noupdate /tb_module/TB_A
add wave -noupdate /tb_module/TB_B
add wave -noupdate /tb_module/TB_C
add wave -noupdate /tb_module/TB_D
add wave -noupdate /tb_module/TB_X
add wave -noupdate /tb_module/TB_Y
add wave -noupdate /tb_module/expTB_X
add wave -noupdate /tb_module/expTB_Y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {45 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 207
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
WaveRestoreZoom {0 ns} {105 ns}
