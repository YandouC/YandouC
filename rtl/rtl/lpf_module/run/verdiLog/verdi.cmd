debImport "-sv" "-sv_pragma" "-f" "rtl_list.f"
debLoadSimResult /home/rfic/project/work/lpf_module/run/test.fsdb
wvCreateWindow
srcHBSelect "tb_lpf.u_lpf" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_lpf.u_lpf" -delim "."
srcHBSelect "tb_lpf.u_lpf" -win $_nTrace1
srcHBSelect "tb_lpf.u_lpf.u_mul_32bits" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_lpf.u_lpf.u_mul_32bits" -delim "."
srcHBSelect "tb_lpf.u_lpf.u_mul_32bits" -win $_nTrace1
srcHBSelect "tb_lpf.u_lpf" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_lpf.u_lpf" -delim "."
srcHBSelect "tb_lpf.u_lpf" -win $_nTrace1
