debImport "-sv" "-sv_pragma" "-f" "rtl_list.f"
debLoadSimResult /home/rfic/project/work/run/test.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 7 1 1 2 1} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcInvokeExtEditor -win $_nTrace1
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb_bits_mul.u_bits_mul" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_bits_mul.u_bits_mul" -delim "."
srcHBSelect "tb_bits_mul.u_bits_mul" -win $_nTrace1
srcHBSelect "tb_bits_mul" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_bits_mul" -delim "."
srcHBSelect "tb_bits_mul" -win $_nTrace1
srcHBSelect "tb_bits_mul.u_bits_mul" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_bits_mul.u_bits_mul" -delim "."
srcHBSelect "tb_bits_mul.u_bits_mul" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {4 6 8 1 1 1} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "count_t" -line 8 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvExpandBus -win $_nWave2 {("G1" 8)}
srcInvokeExtEditor -win $_nTrace1
srcSaveAs -win $_nTrace4 -file /home/rfic/project/work/rtl/bits_mul.v
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvCollapseBus -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
