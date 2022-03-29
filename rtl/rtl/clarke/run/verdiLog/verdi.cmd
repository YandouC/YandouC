debImport "-sv" "-sv_pragma" "-f" "rtl_list.f"
debLoadSimResult /home/rfic/project/work/clarke/run/test.fsdb
wvCreateWindow
srcHBSelect "tb_clarke.u_clarke" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_clarke.u_clarke" -delim "."
srcHBSelect "tb_clarke.u_clarke" -win $_nTrace1
