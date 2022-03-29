debImport "-sv" "-sv_pragma" "-f" "rtl_list.f"
wvCreateWindow
wvOpenFile -win $_nWave2 {/home/rfic/project/work/div_32bits/run/test.fsdb}
debExit
