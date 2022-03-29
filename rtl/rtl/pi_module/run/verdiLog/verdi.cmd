debImport "-sv" "-sv_pragma" "-f" "rtl_list.f"
debLoadSimResult /home/rfic/project/work/pi_module/run/test.fsdb
wvCreateWindow
srcHBSelect "tb_pi.u_pi" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_pi.u_pi" -delim "."
srcHBSelect "tb_pi.u_pi" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb_pi.u_pi.u_mul_32bits" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "tb_pi.u_pi"
schZoomIn -win $_nSchema3 -pos 3888 9323
schZoomIn -win $_nSchema3 -pos 3888 9323
schZoomIn -win $_nSchema3 -pos 3888 9323
schZoomOut -win $_nSchema3 -pos 3959 9299
schZoomOut -win $_nSchema3 -pos 4373 9225
schZoomOut -win $_nSchema3 -pos 6313 8855
schZoomOut -win $_nSchema3 -pos 7075 8763
