debImport "-sv" "-sv_pragma" "-f" "rtl_list.f"
debLoadSimResult /home/rfic/project/work/sin/run/test.fsdb
wvCreateWindow
srcHBSelect "cordic_tb.dut" -win $_nTrace1
srcHBSelect "cordic_tb.dut.cell0" -win $_nTrace1
srcSetScope -win $_nTrace1 "cordic_tb.dut.cell0" -delim "."
srcHBSelect "cordic_tb.dut.cell0" -win $_nTrace1
srcHBSelect "cordic_tb.dut.cell1" -win $_nTrace1
srcSetScope -win $_nTrace1 "cordic_tb.dut.cell1" -delim "."
srcHBSelect "cordic_tb.dut.cell1" -win $_nTrace1
srcHBSelect "cordic_tb.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "cordic_tb.dut" -delim "."
srcHBSelect "cordic_tb.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {4 7 2 1 1 1} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetCursor -win $_nWave2 2692.447368 -snap {("G1" 4)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "x" -line 6 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "x" -line 6 -pos 1 -win $_nTrace1
srcAction -pos 5 11 1 -win $_nTrace1 -name "x" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "x_reg" -line 43 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "x_reg" -line 43 -pos 1 -win $_nTrace1
srcAction -pos 42 7 3 -win $_nTrace1 -name "x_reg" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "x_next" -line 21 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "x_reg" -line 21 -pos 1 -win $_nTrace1
srcSelect -signal "y_reg" -line 22 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 106.366191 -snap {("G1" 1)}
wvSetSearchMode -win $_nWave2 -posedge
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
srcDeselectAll -win $_nTrace1
srcHBSelect "cordic_tb.dut" -win $_nTrace1
srcHBSelect "cordic_tb.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "cordic_tb.dut" -delim "."
srcHBSelect "cordic_tb.dut" -win $_nTrace1
srcHBSelect "cordic_tb.dut.cell0" -win $_nTrace1
srcSetScope -win $_nTrace1 "cordic_tb.dut.cell0" -delim "."
srcHBSelect "cordic_tb.dut.cell0" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "z_in\[15\]" -line 29 -pos 1 -win $_nTrace1
srcAction -pos 28 5 3 -win $_nTrace1 -name "z_in\[15\]" -ctrlKey off
srcHBSelect "cordic_tb.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "cordic_tb.dut" -delim "."
srcHBSelect "cordic_tb.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "z" -line 5 -pos 1 -win $_nTrace1
srcAction -pos 4 11 0 -win $_nTrace1 -name "z" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "cordic_tb" -win $_nTrace1
srcHBSelect "cordic_tb.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "x" -line 6 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "x" -line 6 -pos 1 -win $_nTrace1
srcAction -pos 5 11 0 -win $_nTrace1 -name "x" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "x_reg" -line 43 -pos 1 -win $_nTrace1
srcAction -pos 42 7 1 -win $_nTrace1 -name "x_reg" -ctrlKey off
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
