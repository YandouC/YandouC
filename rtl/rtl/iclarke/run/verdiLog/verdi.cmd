debImport "-sv" "-sv_pragma" "-f" "rtl_list.f"
debLoadSimResult /home/rfic/project/work/iclarke/run/test.fsdb
wvCreateWindow
srcHBSelect "tb_lpf.u_lpf" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_lpf.u_lpf" -delim "."
srcHBSelect "tb_lpf.u_lpf" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 19 1 1 1 1} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvUnknownSaveResult -win $_nWave2 -clear
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
srcHBSelect "tb_lpf.u_lpf.u_mul_32bits" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_lpf.u_lpf.u_mul_32bits" -delim "."
srcHBSelect "tb_lpf.u_lpf.u_mul_32bits" -win $_nTrace1
srcHBSelect "tb_lpf.u_lpf" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_lpf.u_lpf" -delim "."
srcHBSelect "tb_lpf.u_lpf" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mul_res" -line 85 -pos 1 -win $_nTrace1
srcSelect -signal "count_b" -line 84 -pos 2 -win $_nTrace1
srcSelect -signal "count_a" -line 83 -pos 2 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 3)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
srcDeselectAll -win $_nTrace1
debReload
nsMsgSelect -range {0 0-0}
nsMsgAction -tab cmpl -index {0 0}
nsMsgSelect -range {0 0-0}
srcDeselectAll -win $_nTrace1
srcInvokeExtEditor -win $_nTrace1
srcSaveAs -win $_nTrace3 -file /home/rfic/project/work/iclarke/rtl/iclarke.v
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
debReload
nsMsgSelect -range {0 0-0}
nsMsgAction -tab cmpl -index {0 0}
nsMsgSelect -range {0 0-0}
srcDeselectAll -win $_nTrace1
srcInvokeExtEditor -win $_nTrace1
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nEditor_3
srcSaveAs -win $_nTrace3 -file /home/rfic/project/work/iclarke/rtl/iclarke.v
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
debReload
nsMsgSelect -range {0 0-0}
nsMsgAction -tab cmpl -index {0 0}
nsMsgSelect -range {0 0-0}
verdiDockWidgetSetCurTab -dock windowDock_nEditor_3
srcSaveAs -win $_nTrace3 -file /home/rfic/project/work/iclarke/rtl/iclarke.v
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "valp\[31:0\]" -line 30 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "vr2_t" -line 30 -pos 1 -win $_nTrace1
srcSelect -signal "vr3_t" -line 31 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "vr2_t" -line 30 -pos 1 -win $_nTrace1
srcSelect -signal "vr3_t" -line 31 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSelectGroup -win $_nWave2 {G1}
srcDeselectAll -win $_nTrace1
srcCloseWindow -win $_nTrace3
srcDeselectAll -win $_nTrace1
srcSelect -signal "vr3_t" -line 31 -pos 1 -win $_nTrace1
srcSelect -signal "vr2_t" -line 30 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {21 24 12 1 1 1} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvUnknownSaveResult -win $_nWave2 -clear
wvUnknownSaveResult -win $_nWave2 -clear
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 3)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 15 3 1 18 1} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvUnknownSaveResult -win $_nWave2 -clear
wvScrollDown -win $_nWave2 3
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 4)}
