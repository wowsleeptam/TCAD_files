# project name
name RRAM_art.tmp
# execution graph
job 1   -post {  extract_vars "$wdir" n1_fps.out 1; catch {os_cp "$wdir/n1_mdr.cmd" "$wdir/n1_msh.cmd"}; catch {os_cp "$wdir/n1_mdr.bnd" "$wdir/n1_msh.bnd"} }  -o n1_fps "sprocess -u n1_fps.cmd"
job 5   -post {  extract_vars "$wdir" n5_fps.out 5; catch {os_cp "$wdir/n5_mdr.cmd" "$wdir/n5_msh.cmd"}; catch {os_cp "$wdir/n5_mdr.bnd" "$wdir/n5_msh.bnd"} }  -o n5_fps "sprocess -u n5_fps.cmd"
check sprocess_fps.cmd 1730494913
check global_tooldb 1502821891
check gtree.dat 1730495241
# included files
