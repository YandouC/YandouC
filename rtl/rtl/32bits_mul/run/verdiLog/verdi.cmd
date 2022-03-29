debImport "-sv" "-sv_pragma" "-f" "rtl_list.f"
debLoadSimResult /home/rfic/project/work/32bits_mul/run/test.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcHBSelect "tb_mul_32bits.u_mul_32bits" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_mul_32bits.u_mul_32bits" -delim "."
srcHBSelect "tb_mul_32bits.u_mul_32bits" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 7 2 1 19 1} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 508.435374 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 611.496599 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 501.564626 -snap {("G1" 4)}
srcHBSelect "tb_mul_32bits" -win $_nTrace1
srcHBSelect "tb_mul_32bits" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_mul_32bits" -delim "."
srcHBSelect "tb_mul_32bits" -win $_nTrace1
srcInvokeExtEditor -win $_nTrace1
srcSaveAs -win $_nTrace3 -file \
          /home/rfic/project/work/32bits_mul/rtl/tb_32bits_mul.v
srcCloseWindow -win $_nTrace3
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvExpandBus -win $_nWave2 {("G1" 5)}
wvScrollUp -win $_nWave2 57
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvCollapseBus -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G2" 0)}
srcHBSelect "tb_mul_32bits" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "result" -line 32 -pos 2 -win $_nTrace1
srcAction -pos 31 4 1 -win $_nTrace1 -name "result" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mul_result" -line 30 -pos 1 -win $_nTrace1
srcAction -pos 29 6 6 -win $_nTrace1 -name "mul_result" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mul_result_t" -line 35 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcHBSelect "tb_mul_32bits" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_mul_32bits" -delim "."
srcHBSelect "tb_mul_32bits" -win $_nTrace1
srcInvokeExtEditor -win $_nTrace1
srcSaveAs -win $_nTrace4 -file \
          /home/rfic/project/work/32bits_mul/rtl/tb_32bits_mul.v
srcCloseWindow -win $_nTrace4
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "tb_mul_32bits.u_mul_32bits" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_mul_32bits.u_mul_32bits" -delim "."
srcHBSelect "tb_mul_32bits.u_mul_32bits" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "count_a_abs" -line 22 -pos 1 -win $_nTrace1
srcSelect -signal "count_b_abs" -line 23 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "count_a_t" -line 22 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 2)}
srcDeselectAll -win $_nTrace1
