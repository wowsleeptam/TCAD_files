# project name
name save_from_file.tmp
# execution graph
job 1   -post {  extract_vars "$wdir" n1_fps.out 1; catch {os_cp "$wdir/n1_mdr.cmd" "$wdir/n1_msh.cmd"}; catch {os_cp "$wdir/n1_mdr.bnd" "$wdir/n1_msh.bnd"} }  -o n1_fps "sprocess -u n1_fps.cmd"
job 2 -d "1"  -post { extract_vars "$wdir" n2_des.out 2 }  -o n2_des "sdevice pp2_des.cmd"
job 3   -post {  extract_vars "$wdir" n3_fps.out 3; catch {os_cp "$wdir/n3_mdr.cmd" "$wdir/n3_msh.cmd"}; catch {os_cp "$wdir/n3_mdr.bnd" "$wdir/n3_msh.bnd"} }  -o n3_fps "sprocess -u n3_fps.cmd"
check sprocess_fps.cmd 1730452966
check sdevice_des.cmd 1730453153
check sprocess1_fps.cmd 1730400288
check global_tooldb 1502821891
check gtree.dat 1730314369
# included files
