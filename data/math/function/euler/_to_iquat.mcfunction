#math:euler/_to_iquat
# 欧拉角转四元数
# 输出iquat{<iquat_x,int,1w>,<iquat_y,int,1w>,<iquat_z,int,1w>,<iquat_w,int,1w>}

execute store result score iquat_x int run compute default float math:euler/_to_qx 10000
execute store result score iquat_y int run compute default float math:euler/_to_qy 10000
execute store result score iquat_z int run compute default float math:euler/_to_qz 10000
execute store result score iquat_w int run compute default float math:euler/_to_qw 10000