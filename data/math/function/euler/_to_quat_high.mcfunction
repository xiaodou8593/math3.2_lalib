#math:euler/_to_iquat_high
# 欧拉角转四元数
# 输出quat_high{<quat_high_x,int,1ww>,<quat_high_y,int,1ww>,<quat_high_z,int,1ww>,<quat_high_w,int,1ww>}

execute store result score quat_high_x int run compute default float math:euler/_to_qx 100000000
execute store result score quat_high_y int run compute default float math:euler/_to_qy 100000000
execute store result score quat_high_z int run compute default float math:euler/_to_qz 100000000
execute store result score quat_high_w int run compute default float math:euler/_to_qw 100000000