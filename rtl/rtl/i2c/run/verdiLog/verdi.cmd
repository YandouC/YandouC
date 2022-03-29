debImport "-sv" "-sv_pragma" "-f" "rtl_list.f"
debLoadSimResult /home/rfic/project/work/i2c/run/test.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {19 27 1 1 4 1} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 8 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -word -line 27 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 27 -pos 1 -win $_nTrace1
srcAction -pos 27 1 4 -win $_nTrace1 -name "i2c_start" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl" -line 3 -pos 1 -win $_nTrace1
srcSelect -signal "sdi" -line 4 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvUnknownSaveResult -win $_nWave2 -clear
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave2 0.000000 162.544704
wvZoom -win $_nWave2 0.000000 5.477779
wvZoom -win $_nWave2 0.000000 0.207206
wvZoom -win $_nWave2 0.000000 0.041265
wvZoom -win $_nWave2 0.000000 0.032325
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1858.844567 2559.037139
wvZoom -win $_nWave2 2057.730077 2177.157696
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoom -win $_nWave2 1762.610796 2146.356213
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 1012.778542 2809.105915
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvZoom -win $_nWave2 2683.192771 3099.361446
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c.u_i2c_slave" -delim "."
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb_i2c" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c" -delim "."
srcHBSelect "tb_i2c" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 0 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 0 -pos 3 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 0 -pos 3 -win $_nTrace1
srcAction -pos 0 3 11 -win $_nTrace1 -name "\"../rtl/i2c_task.v\"" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
nsMsgSelect -range {0 0-0}
nsMsgAction -tab cmpl -index {0 0}
nsMsgSelect -range {0 0-0}
srcDeselectAll -win $_nTrace1
debReload
nsMsgSelect -range {0 0-0}
nsMsgAction -tab cmpl -index {0 0}
nsMsgSelect -range {0 0-0}
srcHBSelect "tb_i2c" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c" -delim "."
srcHBSelect "tb_i2c" -win $_nTrace1
nsMsgSelect -range {0 1-1}
nsMsgAction -tab cmpl -index {0 1}
nsMsgSelect -range {0 1-1}
nsMsgSelect -range {0 2-2}
nsMsgAction -tab cmpl -index {0 2}
nsMsgSelect -range {0 2-2}
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c.u_i2c_slave" -delim "."
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl" -line 12 -pos 1 -win $_nTrace1
srcSelect -signal "sdi" -line 13 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl" -line 12 -pos 1 -win $_nTrace1
srcAction -pos 11 3 2 -win $_nTrace1 -name "scl" -ctrlKey off
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvZoom -win $_nWave2 0.000000 379.362669
wvZoom -win $_nWave2 0.000000 31.830980
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl" -line 8 -pos 1 -win $_nTrace1
srcAction -pos 7 2 2 -win $_nTrace1 -name "scl" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 26 -pos 1 -win $_nTrace1
srcAction -pos 26 1 2 -win $_nTrace1 -name "i2c_start" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl" -line 54 -pos 1 -win $_nTrace1
srcSelect -signal "sdi" -line 55 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvUnknownSaveResult -win $_nWave2 -clear
srcDeselectAll -win $_nTrace1
srcSelect -signal "i2c_sp" -line 52 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvUnknownSaveResult -win $_nWave2 -clear
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 392.641320
wvZoom -win $_nWave2 0.000000 10.801687
wvZoom -win $_nWave2 0.000000 0.824613
wvZoom -win $_nWave2 0.000000 0.070151
wvZoom -win $_nWave2 0.000000 0.125860
wvZoom -win $_nWave2 0.000000 0.085282
wvZoom -win $_nWave2 0.000000 0.072215
wvZoom -win $_nWave2 0.000000 0.093535
wvZoom -win $_nWave2 0.000000 0.095598
wvZoom -win $_nWave2 0.000000 0.132737
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c.u_i2c_slave" -delim "."
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcHBSelect "tb_i2c.i2c_wr" -win $_nTrace1
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c.u_i2c_slave" -delim "."
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {12 14 3 1 7 1} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 3 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 483.688583 836.496726
wvZoom -win $_nWave2 514.504700 559.151673
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 537.483226 970.810653
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "tb_i2c" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c" -delim "."
srcHBSelect "tb_i2c" -win $_nTrace1
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c.u_i2c_slave" -delim "."
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcHBSelect "tb_i2c" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c" -delim "."
srcHBSelect "tb_i2c" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl" -line 8 -pos 1 -win $_nTrace1
srcSelect -signal "sdi" -line 9 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c.u_i2c_slave" -delim "."
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i2c_state" -line 45 -pos 1 -win $_nTrace1
srcSelect -signal "i2c_next_state" -line 46 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
srcInvokeExtEditor -win $_nTrace1
srcCloseWindow -win $_nTrace3
srcDeselectAll -win $_nTrace1
debReload
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSetPosition -win $_nWave2 {("G3" 1)}
wvExpandBus -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSetPosition -win $_nWave2 {("G3" 1)}
wvCollapseBus -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvZoom -win $_nWave2 466.211554 639.800963
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl_r1" -line 57 -pos 1 -win $_nTrace1
srcSelect -signal "scl_r0" -line 56 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "i2c_start" -line 89 -pos 1 -win $_nTrace1
srcSelect -signal "i2c_stop" -line 90 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G5" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdi_n" -line 89 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdi_n" -line 89 -pos 1 -win $_nTrace1
srcAction -pos 88 10 2 -win $_nTrace1 -name "sdi_n" -ctrlKey off
wvSetPosition -win $_nWave2 {("G6" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdi_r0" -line 87 -pos 1 -win $_nTrace1
srcSelect -signal "sdi_r1" -line 87 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdi_r0" -line 87 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdi_r0" -line 87 -pos 1 -win $_nTrace1
srcAction -pos 86 7 3 -win $_nTrace1 -name "sdi_r0" -ctrlKey off
srcDeselectAll -win $_nTrace1
debReload
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 2 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 655.198538 -snap {("G3" 2)}
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 609.353742 -snap {("G5" 2)}
srcActiveTrace "tb_i2c.u_i2c_slave.i2c_stop" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 605 -TraceValue 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdi_p" -line 90 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 1)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetCursor -win $_nWave2 704.863733 -snap {("G3" 2)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 760.259528 -snap {("G3" 2)}
verdiWindowBeWindow -win $_nWave2
wvResizeWindow -win $_nWave2 -10 20 1920 392
wvResizeWindow -win $_nWave2 -10 20 1920 977
wvZoomOut -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvZoom -win $_nWave2 442.567769 1194.169929
wvZoom -win $_nWave2 550.327597 897.151244
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 2 )} 
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetCursor -win $_nWave2 719.560822 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 758.003925 -snap {("G3" 2)}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSetCursor -win $_nWave2 758.003925 -snap {("G3" 1)}
srcActiveTrace "tb_i2c.u_i2c_slave.i2c_state\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0000
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl_n" -line 97 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "i2c_stop" -line 95 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst_n" -line 93 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetCursor -win $_nWave2 756.326267 -snap {("G5" 1)}
wvSetCursor -win $_nWave2 766.354902 -snap {("G5" 1)}
wvSetCursor -win $_nWave2 756.326267 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 706.183089 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 706.183089 -snap {("G3" 2)}
srcActiveTrace "tb_i2c.u_i2c_slave.i2c_next_state\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0000
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl_n" -line 106 -pos 1 -win $_nTrace1
wvSetCursor -win $_nWave2 732.926117 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 2209.192470 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 761.187108 -snap {("G3" 1)}
schCreateWindow -hierFSM -win $_nSchema1 -mode all
wvSetCursor -win $_nWave2 708.691446 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 765.561747 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 2117.325060 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 835.555964 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 2130.448976 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 2217.941747 -snap {("G3" 1)}
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "bit_cnt" -line 109 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 861.803795 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 1019.290783 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 1189.901687 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 879.302349 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 1994.835181 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 2134.823614 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 1981.711265 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 2038.581566 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 769.936386 -snap {("G2" 1)}
wvSetMarker -win $_nWave2 2030.000000
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 554.409639 2234.963855
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 706.642677 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 718.791261 -snap {("G4" 1)}
wvZoom -win $_nWave2 368.507069 1152.090782
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvResizeWindow -win $_nWave2 -10 20 1714 831
wvResizeWindow -win $_nWave2 -10 20 1718 873
wvResizeWindow -win $_nWave2 -10 20 1718 835
wvResizeWindow -win $_nWave2 -10 20 1920 977
wvResizeWindow -win $_nWave2 -10 20 1920 977
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSetCursor -win $_nWave2 715.610186 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 774.142946 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 753.373257 -snap {("G5" 1)}
wvSetCursor -win $_nWave2 753.373257 -snap {("G5" 1)}
srcActiveTrace "tb_i2c.u_i2c_slave.scl_n" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 0 -TraceValue 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl_p" -line 84 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 2116.620102 -snap {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSetCursor -win $_nWave2 2124.172716 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 2114.731949 -snap {("G3" 2)}
srcActiveTrace "tb_i2c.u_i2c_slave.i2c_next_state\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 705 -TraceValue 0001
srcDeselectAll -win $_nTrace1
srcSelect -signal "bit_cnt" -line 109 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetCursor -win $_nWave2 2116.620102 -snap {("G3" 2)}
srcActiveTrace "tb_i2c.u_i2c_slave.i2c_next_state\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 705 -TraceValue 0001
srcInvokeExtEditor -win $_nTrace1
srcSaveAs -win $_nTrace5 -file /home/rfic/project/work/i2c/rtl/i2c_slave.v
srcCloseWindow -win $_nTrace5
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 604.209128 891.208464
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 755.661790 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 705.869134 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 754.970225 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 702.065528 -snap {("G3" 1)}
srcActiveTrace "tb_i2c.u_i2c_slave.i2c_state\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0000
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 215.422393 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 323.723253 2917.883916
wvZoom -win $_nWave2 620.645257 919.130008
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 790.745603 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 2137.582361 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 713.486441 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 2114.566670 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 2114.566670 -snap {("G3" 2)}
srcActiveTrace "tb_i2c.u_i2c_slave.i2c_next_state\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 705 -TraceValue 0001
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 2666.943269 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 1729.053835 2695.712884
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1973.630221 -snap {("G3" 2)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 2047.003136 -snap {("G3" 1)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo" -line 15 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 2205.395462 -snap {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetCursor -win $_nWave2 2065.637528 -snap {("G5" 4)}
wvZoom -win $_nWave2 1814.073245 2307.884615
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 1915.810286 -snap {("G7" 0)}
wvSetCursor -win $_nWave2 2206.147573 -snap {("G6" 1)}
wvSetCursor -win $_nWave2 2206.147573 -snap {("G6" 1)}
srcActiveTrace "tb_i2c.u_i2c_slave.sdo" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 0 -TraceValue 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo_r" -line 52 -pos 1 -win $_nTrace1
srcAction -pos 51 6 4 -win $_nTrace1 -name "sdo_r" -ctrlKey off
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 1859.884661 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 2063.358744 -snap {("G6" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 131.239157 3053.497711
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 119.706977 2556.096037
wvSetCursor -win $_nWave2 1977.820561 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 2061.479703 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 2209.717833 -snap {("G3" 1)}
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 323.723253 3084.120181
wvZoomOut -win $_nWave2
wvResizeWindow -win $_nWave2 -10 20 1714 831
wvResizeWindow -win $_nWave2 -10 20 1714 831
wvResizeWindow -win $_nWave2 -10 20 1920 977
wvSetCursor -win $_nWave2 3235.983386 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
nsMsgSelect -range {0 0-0}
nsMsgAction -tab cmpl -index {0 0}
nsMsgSelect -range {0 0-0}
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c.u_i2c_slave" -delim "."
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
wvSetCursor -win $_nWave2 2883.450766 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 96.041265 2785.196687
wvZoom -win $_nWave2 342.277183 936.807328
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
nsMsgSelect -range {0 9-9}
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 969.872067 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 3908.140323 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 3776.340870 -snap {("G3" 1)}
wvZoom -win $_nWave2 3077.230724 4211.852108
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "id" -line 8 -pos 1 -win $_nTrace1
srcActiveTrace "tb_i2c.u_i2c_slave.id\[6:0\]" -win $_nTrace1
srcTraceLoad "tb_i2c.id\[6:0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "id_r\[7:1\]" -line 112 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "id" -line 112 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "id_r\[7:1\]" -line 112 -pos 1 -win $_nTrace1
srcAction -pos 111 3 2 -win $_nTrace1 -name "id_r\[7:1\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "id_r\[6:0\]" -line 160 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "id_r" -line 160 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "id" -line 112 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G7" 1 )} 
wvSelectSignal -win $_nWave2 {( "G7" 2 )} 
wvSelectSignal -win $_nWave2 {( "G7" 1 )} 
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 3357.385686 -snap {("G7" 1)}
srcActiveTrace "tb_i2c.u_i2c_slave.id_r\[7:0\]" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 3325 -TraceValue 00101110
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdi_r0" -line 160 -pos 1 -win $_nTrace1
srcAction -pos 159 8 2 -win $_nTrace1 -name "sdi_r0" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdi" -line 69 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 1777.117831 -snap {("G8" 0)}
wvSetCursor -win $_nWave2 1700.565063 -snap {("G7" 3)}
wvSetCursor -win $_nWave2 1727.905337 -snap {("G7" 3)}
srcActiveTrace "tb_i2c.u_i2c_slave.sdi" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 1100 -TraceValue 0
srcHBSelect "tb_i2c" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c" -delim "."
srcHBSelect "tb_i2c" -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 11625.084641 -snap {("G3" 1)}
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 195.672289 16103.829398
wvSetCursor -win $_nWave2 3616.884390 -snap {("G3" 1)}
wvSetMarker -win $_nWave2 3845.000000
wvSetCursor -win $_nWave2 6194.772500 -snap {("G3" 1)}
wvSetMarker -win $_nWave2 6435.000000
wvZoom -win $_nWave2 10909.720269 12011.791394
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 11493.950745 -snap {("G3" 2)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 11343.909737 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 11471.378204 -snap {("G3" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 3037.214607 4896.129757
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c.u_i2c_slave" -delim "."
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "add_nbyte" -line 6 -pos 1 -win $_nTrace1
srcSelect -signal "data_nbyte" -line 7 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G8" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G8" 2)}
wvSetPosition -win $_nWave2 {("G8" 2)}
wvSetPosition -win $_nWave2 {("G9" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "address" -line 16 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 11269.953057 -snap {("G9" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "address" -line 16 -pos 1 -win $_nTrace1
srcAction -pos 15 7 4 -win $_nTrace1 -name "address" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "address_r\[31:0\]" -line 36 -pos 1 -win $_nTrace1
srcAction -pos 35 6 6 -win $_nTrace1 -name "address_r\[31:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "byte_cnt" -line 175 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 6297.914944 -snap {("G9" 1)}
wvSetCursor -win $_nWave2 8779.454687 -snap {("G9" 2)}
wvSetCursor -win $_nWave2 11520.794620 -snap {("G9" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 14082.962009 -snap {("G9" 2)}
wvZoom -win $_nWave2 16179.280781 17971.006227
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 528.315181 17708.342169
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 13462.253494 14597.152771
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "byte_cnt" -line 175 -pos 2 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "byte_cnt" -line 175 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "byte_cnt" -line 175 -pos 1 -win $_nTrace1
srcAction -pos 174 1 5 -win $_nTrace1 -name "byte_cnt" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "byte_cnt" -line 175 -pos 2 -win $_nTrace1
srcActiveTrace "tb_i2c.u_i2c_slave.byte_cnt\[3:0\]" -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 12894.803855 15653.783133
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 13562.942210 14383.987851
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 13924.004450 -snap {("G3" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 11081.010269 11737.846781
wvZoom -win $_nWave2 11323.960641 11343.349189
wvZoom -win $_nWave2 11334.262267 11335.979205
wvZoom -win $_nWave2 11334.924219 11335.131079
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 2778.546506 4833.105542
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 3429.569430 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 3563.239535 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 3419.667940 -snap {("G3" 2)}
wvZoom -win $_nWave2 3360.259004 3632.549961
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 3583.012690 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 3425.543222 -snap {("G7" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 1814.475904 -snap {("G7" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 13215.638554 15355.156627
wvSetCursor -win $_nWave2 13923.226158 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 13784.028596 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 13784.028596 -snap {("G3" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 273.941205 5048.345060
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 4342.981820 -snap {("G7" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSetCursor -win $_nWave2 1202.229405 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 1190.724817 -snap {("G3" 2)}
srcActiveTrace "tb_i2c.u_i2c_slave.i2c_next_state\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 1165 -TraceValue 0001
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl_p" -line 106 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 1092.935822 -snap {("G9" 3)}
wvZoom -win $_nWave2 1000.899122 1558.871620
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1170.979895 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 1390.135359 -snap {("G9" 3)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 3737.743486 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 3823.792257 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 4146.475148 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 3737.743486 -snap {("G7" 1)}
wvSetCursor -win $_nWave2 3565.645944 -snap {("G2" 2)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 4087.316617 -snap {("G6" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 3571.023992 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 3447.328884 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 3560.267896 -snap {("G5" 4)}
wvSelectSignal -win $_nWave2 {( "G9" 1 )} 
wvSetCursor -win $_nWave2 3544.133751 -snap {("G7" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 13188.312289 15008.064578
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G8" 2 )} 
wvSelectSignal -win $_nWave2 {( "G9" 2 )} 
wvSetCursor -win $_nWave2 14089.418543 -snap {("G9" 2)}
wvSetCursor -win $_nWave2 11493.530940 -snap {("G9" 2)}
wvZoom -win $_nWave2 11169.044990 12449.449010
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 14104.718304 -snap {("G9" 2)}
wvZoom -win $_nWave2 13944.282138 14252.813227
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G9" 2 )} 
wvSelectSignal -win $_nWave2 {( "G9" 3 )} 
wvSelectSignal -win $_nWave2 {( "G9" 2 )} 
wvSetCursor -win $_nWave2 13971.001446 -snap {("G9" 2)}
srcActiveTrace "tb_i2c.u_i2c_slave.byte_cnt\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0000
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 14049.270361 -snap {("G9" 2)}
wvZoom -win $_nWave2 13207.879518 17943.148916
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G9" 2 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 16842.056152 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 15655.386230 -snap {("G7" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 17003.921928 -snap {("G9" 2)}
wvZoom -win $_nWave2 15986.426024 19058.480964
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 16560.123031 18529.199209
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 16809.223029 -snap {("G3" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 14394.567734 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 16842.864861 -snap {("G3" 1)}
wvZoom -win $_nWave2 13464.594406 18304.251518
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 13931.866988 -snap {("G3" 1)}
wvZoom -win $_nWave2 13501.387952 18667.136386
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 15685.939398 -snap {("G7" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 24604.982361 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvZoom -win $_nWave2 23811.273253 26246.517108
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G9" 1 )} 
wvSelectSignal -win $_nWave2 {( "G9" 2 )} 
wvSelectSignal -win $_nWave2 {( "G9" 1 )} 
wvSetPosition -win $_nWave2 {("G9" 1)}
wvSetPosition -win $_nWave2 {("G9" 2)}
wvSetPosition -win $_nWave2 {("G9" 3)}
wvSetPosition -win $_nWave2 {("G10" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G10" 1)}
wvSetPosition -win $_nWave2 {("G10" 1)}
wvSetCursor -win $_nWave2 6005.056000 -snap {("G10" 1)}
srcActiveTrace "tb_i2c.u_i2c_slave.address\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 5715 -TraceValue \
           00000000000000000000000000100011
srcDeselectAll -win $_nTrace1
srcSelect -signal "i2c_data\[31:0\]" -line 37 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 8573.483566 -snap {("G10" 2)}
wvZoom -win $_nWave2 23947.873928 25702.363181
wvSetCursor -win $_nWave2 24580.969749 -snap {("G2" 1)}
wvSetMarker -win $_nWave2 24648.000000
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 24305.113306 -snap {("G2" 1)}
wvSetMarker -win $_nWave2 24424.000000
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 9988.826988 -snap {("G7" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c.u_i2c_slave" -delim "."
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo" -line 15 -pos 1 -win $_nTrace1
srcCopySignalFullPath -win $_nTrace1
wvResizeWindow -win $_nWave2 -10 20 1714 831
srcDeselectAll -win $_nTrace1
debReload
nsMsgSelect -range {0 0-0}
nsMsgAction -tab cmpl -index {0 0}
nsMsgSelect -range {0 0-0}
wvSetCursor -win $_nWave2 8693.069035 -snap {("G5" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 65645.665475 78752.103439
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 64144.181228 80117.089118
wvZoom -win $_nWave2 75327.413850 78315.468145
wvZoomOut -win $_nWave2
wvResizeWindow -win $_nWave2 -10 20 1920 977
wvSetCursor -win $_nWave2 77195.024929 -snap {("G6" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 76103.272906 80027.236453
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 77601.943321 -snap {("G6" 1)}
wvSetCursor -win $_nWave2 77190.636299 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 77119.721295 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77247.368302 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 75786.519223 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 77219.002301 -snap {("G3" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 68198.613809 83062.398618
wvZoom -win $_nWave2 76552.777199 78549.538652
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 74891.754068 76132.376515
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 75398.466128 -snap {("G3" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 82719.545909 -snap {("G6" 1)}
wvSetCursor -win $_nWave2 75712.271175 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 75532.904074 -snap {("G2" 2)}
wvZoom -win $_nWave2 74791.520058 83616.381412
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 67211.533012 83293.750843
wvZoom -win $_nWave2 69091.021120 83119.365349
wvSelectSignal -win $_nWave2 {( "G9" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSetCursor -win $_nWave2 77119.290408 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 77060.134739 -snap {("G5" 4)}
srcActiveTrace "tb_i2c.u_i2c_slave.bit_cnt\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 76975 -TraceValue 1000
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 78733.395075 -snap {("G3" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 75660.236368 81954.411932
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 78263.691960 79401.193568
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G9" 1 )} 
wvSelectSignal -win $_nWave2 {( "G8" 1 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 68172.420241 82332.863614
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 76256.790408 83524.680621
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 82340.005061 83776.070115
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSetCursor -win $_nWave2 83039.870500 -snap {("G5" 2)}
wvSetCursor -win $_nWave2 83045.061097 -snap {("G5" 1)}
wvSetCursor -win $_nWave2 83060.632887 -snap {("G5" 1)}
wvSetCursor -win $_nWave2 83040.735600 -snap {("G5" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 75507.829561 -snap {("G4" 2)}
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvZoom -win $_nWave2 76047.651605 83231.437274
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77295.379302 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 76620.276552 -snap {("G7" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 77243.448321 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 80177.548733 -snap {("G6" 1)}
wvZoom -win $_nWave2 80116.962589 80549.720762
wvSetCursor -win $_nWave2 80266.603065 -snap {("G6" 1)}
wvSetCursor -win $_nWave2 80252.525390 -snap {("G6" 1)}
wvSetMarker -win $_nWave2 80265.000000
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77252.312043 -snap {("G3" 1)}
wvZoomIn -win $_nWave2
wvSetMarker -win $_nWave2 78655.000000
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvZoom -win $_nWave2 82602.444227 83433.654180
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSetCursor -win $_nWave2 83052.098768 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 83052.098768 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 82967.976315 -snap {("G4" 2)}
srcActiveTrace "tb_i2c.u_i2c_slave.i2c_stop" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 82965 -TraceValue 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl_r0" -line 90 -pos 1 -win $_nTrace1
srcSelect -signal "sdi_p" -line 90 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G11" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G11" 2)}
wvSetPosition -win $_nWave2 {("G11" 2)}
wvSetCursor -win $_nWave2 83045.088563 -snap {("G11" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 75595.036326 -snap {("G4" 2)}
wvZoom -win $_nWave2 75394.744771 75675.152948
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 82480.915197 83626.872470
wvSelectSignal -win $_nWave2 {( "G11" 2 )} 
wvSelectSignal -win $_nWave2 {( "G11" 1 )} 
wvSelectSignal -win $_nWave2 {( "G11" 2 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G11" 1 )} 
wvSelectSignal -win $_nWave2 {( "G11" 2 )} 
wvSetCursor -win $_nWave2 83031.672839 -snap {("G11" 2)}
srcActiveTrace "tb_i2c.u_i2c_slave.sdi_p" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 82965 -TraceValue 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdi_r0" -line 86 -pos 1 -win $_nTrace1
srcSelect -signal "sdi_r1" -line 86 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoom -win $_nWave2 82879.798984 83142.126552
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G11" 2 )} 
wvSelectSignal -win $_nWave2 {( "G11" 3 )} 
wvSelectSignal -win $_nWave2 {( "G11" 3 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G11" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 80588.350207 -snap {("G6" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 83131.979449 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 77220.443497 -snap {("G3" 1)}
wvSelectSignal -win $_nWave2 {( "G9" 1 )} 
wvSetCursor -win $_nWave2 78555.469580 -snap {("G5" 4)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 82828.564430 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 82980.271939 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 82838.678264 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 77104.134406 -snap {("G6" 0)}
wvSetCursor -win $_nWave2 77048.508320 -snap {("G6" 1)}
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G11" 2)}
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G12" 0)}
wvSetPosition -win $_nWave2 {("G11" 2)}
wvSetCursor -win $_nWave2 78464.445075 -snap {("G6" 1)}
wvZoom -win $_nWave2 78373.420569 78717.290924
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 78508.068599 -snap {("G6" 1)}
wvSetCursor -win $_nWave2 78489.839328 -snap {("G6" 1)}
srcActiveTrace "tb_i2c.u_i2c_slave.sdo" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 78335 -TraceValue 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo_r" -line 52 -pos 1 -win $_nTrace1
srcAction -pos 51 6 2 -win $_nTrace1 -name "sdo_r" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata\[31\]" -line 253 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata\[31\]" -line 253 -pos 1 -win $_nTrace1
srcAction -pos 252 5 2 -win $_nTrace1 -name "rdata\[31\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata\[30:0\]" -line 254 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata" -line 254 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 78812.165997 -snap {("G11" 3)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 78493.982344 -snap {("G11" 3)}
wvSetMarker -win $_nWave2 78815.000000
wvZoom -win $_nWave2 78442.608942 78653.074171
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77046.691970 -snap {("G11" 3)}
wvZoom -win $_nWave2 76738.347730 78693.899354
wvSetCursor -win $_nWave2 77373.312986 -snap {("G11" 3)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77379.203202 -snap {("G11" 3)}
srcActiveTrace "tb_i2c.u_i2c_slave.rdata\[31:0\]" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 77065 -TraceValue 01000101010001100100011111111111
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 64177.371325 88411.433012
wvZoom -win $_nWave2 76060.820851 83696.010166
wvSetCursor -win $_nWave2 78194.994250 -snap {("G11" 3)}
wvSetCursor -win $_nWave2 78291.583994 -snap {("G5" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 77063.514388 -snap {("G11" 3)}
wvZoom -win $_nWave2 76838.138317 77532.664574
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata\[30:0\]" -line 254 -pos 1 -win $_nTrace1
srcAction -pos 253 6 3 -win $_nTrace1 -name "rdata\[30:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata_i" -line 241 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77225.566820 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 77295.856224 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77071.599553 -snap {("G11" 3)}
wvSetCursor -win $_nWave2 77128.500500 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 77212.178362 -snap {("G3" 1)}
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G12" 0)}
wvSetPosition -win $_nWave2 {("G11" 4)}
wvSetCursor -win $_nWave2 77560.278269 -snap {("G6" 1)}
wvSetCursor -win $_nWave2 77215.525476 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77048.169752 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77138.541843 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77222.219705 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 83179.342805 -snap {("G11" 2)}
wvZoom -win $_nWave2 83019.966766 83484.813546
wvSelectSignal -win $_nWave2 {( "G11" 3 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 76518.663840 83741.150663
wvSetCursor -win $_nWave2 78476.566895 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 78768.076905 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 77184.350879 -snap {("G3" 1)}
wvSetMarker -win $_nWave2 78495.000000
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSetCursor -win $_nWave2 77454.106411 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77606.387759 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77127.789235 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77284.421479 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77219.158044 -snap {("G3" 1)}
wvSelectSignal -win $_nWave2 {( "G11" 3 )} 
wvSelectSignal -win $_nWave2 {( "G11" 3 )} 
wvSetPosition -win $_nWave2 {("G11" 3)}
wvExpandBus -win $_nWave2 {("G11" 3)}
wvSetPosition -win $_nWave2 {("G11" 36)}
wvSelectSignal -win $_nWave2 {( "G11" 3 )} 
wvSetPosition -win $_nWave2 {("G11" 3)}
wvCollapseBus -win $_nWave2 {("G11" 3)}
wvSetPosition -win $_nWave2 {("G11" 3)}
wvSetPosition -win $_nWave2 {("G11" 4)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 77567.229698 -snap {("G6" 1)}
wvSetCursor -win $_nWave2 77075.578487 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 77528.071637 -snap {("G6" 1)}
wvSetCursor -win $_nWave2 77528.071637 -snap {("G6" 1)}
srcActiveTrace "tb_i2c.u_i2c_slave.sdo" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 77065 -TraceValue 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo_r" -line 52 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo_r" -line 52 -pos 1 -win $_nTrace1
srcAction -pos 51 6 3 -win $_nTrace1 -name "sdo_r" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rdata\[31\]" -line 253 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 77397.544767 -snap {("G11" 5)}
wvSetCursor -win $_nWave2 77549.826115 -snap {("G11" 5)}
wvSetCursor -win $_nWave2 77414.948349 -snap {("G11" 5)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcHBSelect "tb_i2c.u_i2c_slave" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo" -line 52 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 77571.580594 -snap {("G11" 6)}
wvSetCursor -win $_nWave2 77676.002090 -snap {("G11" 6)}
wvSetCursor -win $_nWave2 77523.720741 -snap {("G11" 6)}
wvSelectSignal -win $_nWave2 {( "G11" 5 )} 
wvSelectSignal -win $_nWave2 {( "G11" 5 6 )} 
wvSetPosition -win $_nWave2 {("G12" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G12" 2)}
wvSetPosition -win $_nWave2 {("G12" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo_r" -line 52 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo_r" -line 52 -pos 1 -win $_nTrace1
srcAction -pos 51 6 3 -win $_nTrace1 -name "sdo_r" -ctrlKey off
wvSetCursor -win $_nWave2 77367.088497 -snap {("G12" 1)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl_n" -line 252 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 77232.210731 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 77201.754461 -snap {("G12" 4)}
wvSetCursor -win $_nWave2 77214.807148 -snap {("G12" 4)}
wvZoom -win $_nWave2 77132.140130 77293.123270
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77046.605715 -snap {("G12" 4)}
wvSetCursor -win $_nWave2 77069.880386 -snap {("G12" 4)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G12" 2 )} 
wvSelectSignal -win $_nWave2 {( "G12" 1 )} 
wvSetCursor -win $_nWave2 77544.683671 -snap {("G12" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSetCursor -win $_nWave2 77850.357682 -snap {("G6" 1)}
wvSetCursor -win $_nWave2 77855.012616 -snap {("G6" 1)}
srcActiveTrace "tb_i2c.u_i2c_slave.sdo" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 77065 -TraceValue 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo_r" -line 52 -pos 1 -win $_nTrace1
srcAction -pos 51 6 1 -win $_nTrace1 -name "sdo_r" -ctrlKey off
wvSetCursor -win $_nWave2 77865.874129 -snap {("G6" 1)}
wvSetCursor -win $_nWave2 77850.357682 -snap {("G6" 1)}
wvSetCursor -win $_nWave2 77841.047813 -snap {("G6" 1)}
srcActiveTrace "tb_i2c.u_i2c_slave.sdo" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 77065 -TraceValue 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo_r" -line 52 -pos 1 -win $_nTrace1
srcAction -pos 51 6 1 -win $_nTrace1 -name "sdo_r" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "scl_n" -line 252 -pos 1 -win $_nTrace1
srcSelect -toggle -signal "scl_n" -line 252 -pos 1 -win $_nTrace1
wvDrop -win $_nWave2
wvZoom -win $_nWave2 77796.050116 77931.043207
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G12" 4 )} 
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77865.498369 -snap {("G12" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 77782.876092 -snap {("G9" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77972.842273 -snap {("G12" 1)}
wvSetCursor -win $_nWave2 77285.841289 -snap {("G12" 1)}
wvSelectSignal -win $_nWave2 {( "G12" 1 )} 
wvSetCursor -win $_nWave2 77920.796744 -snap {("G12" 1)}
wvSetCursor -win $_nWave2 77301.454948 -snap {("G12" 1)}
wvSelectSignal -win $_nWave2 {( "G11" 3 )} 
wvSetCursor -win $_nWave2 77457.591535 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77634.546334 -snap {("G2" 1)}
wvSelectSignal -win $_nWave2 {( "G12" 2 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 74615.815768 85441.285812
wvSetCursor -win $_nWave2 82839.260181 -snap {("G12" 2)}
wvSetCursor -win $_nWave2 82969.687531 -snap {("G12" 2)}
wvZoom -win $_nWave2 82643.619156 83406.619153
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 76793.200046 78925.922930
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "tb_i2c.i2c_rd" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_i2c.i2c_rd" -delim "."
srcHBSelect "tb_i2c.i2c_rd" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "tb_i2c.u_i2c_slave.sdo" -line 45 -pos 1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 77849.283305 -snap {("G12" 5)}
wvSetCursor -win $_nWave2 77057.863247 -snap {("G12" 5)}
wvSetCursor -win $_nWave2 77258.287808 -snap {("G3" 1)}
wvZoom -win $_nWave2 76877.995052 77515.242372
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 76957.075141 77697.203353
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77305.737950 -snap {("G12" 1)}
wvSelectSignal -win $_nWave2 {( "G12" 1 )} 
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77216.565876 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 77309.304833 -snap {("G12" 1)}
wvSetCursor -win $_nWave2 77220.132759 -snap {("G3" 1)}
wvZoomOut -win $_nWave2
wvSetMarker -win $_nWave2 79935.000000
wvSetCursor -win $_nWave2 78682.554768 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 76285.609426 -snap {("G10" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 77391.343141 -snap {("G12" 2)}
wvZoom -win $_nWave2 76670.832785 80380.391052
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77247.378588 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77439.560522 -snap {("G2" 1)}
wvSelectSignal -win $_nWave2 {( "G12" 3 )} 
wvSelectSignal -win $_nWave2 {( "G12" 1 )} 
wvZoom -win $_nWave2 76746.811689 78087.615882
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77380.058971 -snap {("G12" 1)}
wvSetCursor -win $_nWave2 77289.595073 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77373.597264 -snap {("G2" 1)}
wvZoom -win $_nWave2 77297.672207 77536.755364
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77373.429882 -snap {("G12" 1)}
wvSetCursor -win $_nWave2 77362.483906 -snap {("G11" 1)}
wvSetMarker -win $_nWave2 77375.000000
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 77122.248541 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77278.948827 -snap {("G2" 1)}
wvSelectSignal -win $_nWave2 {( "G12" 5 )} 
wvSelectSignal -win $_nWave2 {( "G12" 1 2 3 4 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G12" 0)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -signal "tb_i2c.u_i2c_slave.sdo" -line 45 -pos 1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 77412.604954 -snap {("G12" 1)}
wvSetCursor -win $_nWave2 77292.775323 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 77364.212218 -snap {("G8" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 66536.439277 85677.058795
wvZoom -win $_nWave2 76544.907796 82990.453766
wvSetCursor -win $_nWave2 78338.788663 -snap {("G12" 1)}
wvSetMarker -win $_nWave2 78495.000000
wvSetCursor -win $_nWave2 77208.876688 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 78668.831679 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 79534.709240 -snap {("G8" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 66000.287470 86910.207952
wvZoom -win $_nWave2 76518.229399 84151.610009
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 82404.209628 83940.082594
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 78697.897982 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 78446.236869 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 78668.290792 -snap {("G3" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 64659.907952 74310.640482
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 76298.923931 83414.885748
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G11" 1 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G12" 1 )} 
wvSetCursor -win $_nWave2 77070.534248 -snap {("G12" 1)}
srcActiveTrace "tb_i2c.u_i2c_slave.sdo" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 75385 -TraceValue 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sdo" -line 15 -pos 1 -win $_nTrace1
srcAction -pos 14 3 1 -win $_nTrace1 -name "sdo" -ctrlKey off
srcCopySignalFullPath -win $_nTrace1
wvSetCursor -win $_nWave2 80199.842758 -snap {("G10" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 11420.791023 -snap {("G3" 1)}
wvZoom -win $_nWave2 10734.915185 11840.889974
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 9752.862874 -snap {("G3" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 64016.525783 87821.666024
wvZoom -win $_nWave2 77596.928077 79604.590507
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvResizeWindow -win $_nWave2 -10 20 1714 831
wvResizeWindow -win $_nWave2 -10 20 1718 873
wvResizeWindow -win $_nWave2 -10 20 1718 835
wvResizeWindow -win $_nWave2 -10 20 1920 977
wvResizeWindow -win $_nWave2 -10 20 1920 977
