# project name
name dist_cons.tmp
# execution graph
job 1   -post {  extract_vars "$wdir" n1_fps.out 1; catch {os_cp "$wdir/n1_mdr.cmd" "$wdir/n1_msh.cmd"}; catch {os_cp "$wdir/n1_mdr.bnd" "$wdir/n1_msh.bnd"} }  -o n1_fps "sprocess -u n1_fps.cmd"
job 2 -d "1"  -post { extract_vars "$wdir" n2_des.out 2 }  -o n2_des "sdevice pp2_des.cmd"
check sprocess_fps.cmd 1730404790
check sdevice_des.cmd 1730404802
check global_tooldb 1502821891
check gtree.dat 1730299541
# included files
