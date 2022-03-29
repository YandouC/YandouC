debImport "-sv" "-sv_pragma" "-f" "rtl_list.f"
debLoadSimResult /home/rfic/project/rtl/led_test/run/test.fsdb
wvCreateWindow
srcHBSelect "tb_led.u_led" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_led.u_led" -delim "."
srcHBSelect "tb_led.u_led" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 5 1 10 5 5} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoom -win $_nWave2 247857555.010674 262230359.975790
wvZoom -win $_nWave2 255239307.936582 255812890.089614
wvZoom -win $_nWave2 255552140.770687 255572377.040979
wvZoom -win $_nWave2 255563680.945561 255564348.075351
wvZoom -win $_nWave2 255564079.525646 255564092.644451
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcInvokeExtEditor -win $_nTrace1
srcSaveAs -win $_nTrace3 -file /home/rfic/project/rtl/led_test/rtl/led.v
srcCloseWindow -win $_nTrace3
srcDeselectAll -win $_nTrace1
debReload
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
nsMsgSelect -range {0 0-0}
nsMsgAction -tab cmpl -index {0 0}
nsMsgSelect -range {0 0-0}
srcInvokeExtEditor -win $_nTrace1
srcSaveAs -win $_nTrace4 -file /home/rfic/project/rtl/led_test/rtl/led.v
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "tb_led" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_led" -delim "."
srcHBSelect "tb_led" -win $_nTrace1
srcInvokeExtEditor -win $_nTrace1
srcSaveAs -win $_nTrace5 -file /home/rfic/project/rtl/led_test/rtl/tb_led.v
srcCloseWindow -win $_nTrace5
srcCloseWindow -win $_nTrace4
srcDeselectAll -win $_nTrace1
debReload
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
srcHBSelect "tb_led.u_led" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_led.u_led" -delim "."
srcHBSelect "tb_led.u_led" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 5 2 1 3 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 5 2 11 1 1} -backward
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcHBSelect "tb_led" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_led" -delim "."
srcHBSelect "tb_led" -win $_nTrace1
srcInvokeExtEditor -win $_nTrace1
srcSaveAs -win $_nTrace6 -file /home/rfic/project/rtl/led_test/rtl/tb_led.v
srcCloseWindow -win $_nTrace6
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 19540102.860035 22840598.559861
wvZoom -win $_nWave2 20767528.386339 20994688.009404
wvZoom -win $_nWave2 20866327.713424 20878152.100975
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
srcHBSelect "tb_led.u_led" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_led.u_led" -delim "."
srcHBSelect "tb_led.u_led" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt" -line 15 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoom -win $_nWave2 17816835.193754 18809904.696356
wvZoom -win $_nWave2 18173513.135402 18327441.780108
wvZoom -win $_nWave2 18251412.247094 18260582.085384
wvZoom -win $_nWave2 18256381.673625 18257012.796098
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
wvZoom -win $_nWave2 19494663.860226 19889377.856719
wvZoom -win $_nWave2 19648988.129526 19668392.808358
wvZoom -win $_nWave2 19661210.046957 19661939.546161
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
