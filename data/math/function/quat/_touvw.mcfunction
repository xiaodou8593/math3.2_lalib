#math:quat/_touvw
# 四元数姿态转局部坐标系
# 输出{<ivec_x>,<ivec_y>,<ivec_z>}, {<jvec_x>,<jvec_y>,<jvec_z>}, {<kvec_x>,<kvec_y>,<kvec_z>}

execute store result score ivec_x int run compute default float math:quat/_touvw_ix 10000
execute store result score ivec_y int run compute default float math:quat/_touvw_iy 10000
execute store result score ivec_z int run compute default float math:quat/_touvw_iz 10000

execute store result score jvec_x int run compute default float math:quat/_touvw_jx 10000
execute store result score jvec_y int run compute default float math:quat/_touvw_jy 10000
execute store result score jvec_z int run compute default float math:quat/_touvw_jz 10000

execute store result score kvec_x int run compute default float math:quat/_touvw_kx 10000
execute store result score kvec_y int run compute default float math:quat/_touvw_ky 10000
execute store result score kvec_z int run compute default float math:quat/_touvw_kz 10000