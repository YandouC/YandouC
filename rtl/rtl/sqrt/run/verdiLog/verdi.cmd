debImport "-sv" "-sv_pragma" "-f" "rtl_list.f"
debLoadSimResult /home/rfic/project/work/sqrt/run/test.fsdb
wvCreateWindow
srcHBSelect "tb_tssqrt.u_ts_sqrt" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_tssqrt.u_ts_sqrt" -delim "."
srcHBSelect "tb_tssqrt.u_ts_sqrt" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 44 -pos 2 -win $_nTrace1
srcSelect -signal "rst_n" -line 45 -pos 2 -win $_nTrace1
srcSelect -signal "data" -line 46 -pos 1 -win $_nTrace1
srcSelect -signal "sqrt_st" -line 48 -pos 1 -win $_nTrace1
srcSelect -signal "sqrt_en" -line 49 -pos 1 -win $_nTrace1
srcSelect -signal "sqrt_t_wd" -line 50 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoom -win $_nWave2 4738.781310 15287.438334
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 24343.054673
wvZoom -win $_nWave2 2723.698425 15135.096929
wvZoomOut -win $_nWave2
