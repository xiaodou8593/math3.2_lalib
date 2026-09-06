#math:quat/_relative
# 求quat在iquat坐标系中的相对四元数
# 输入iquat{<iquat_x,int,1w>, <iquat_y,int,1w>, <iquat_z,int,1w>, <iquat_w,int,1w>}
# 输出rquat{<rquat_x,int,1w>, <rquat_y,int,1w>, <rquat_z,int,1w>, <rquat_w,int,1w>}

execute store result score rquat_x int run compute default float math:quat/_relative_x 10000
execute store result score rquat_y int run compute default float math:quat/_relative_y 10000
execute store result score rquat_z int run compute default float math:quat/_relative_z 10000
execute store result score rquat_w int run compute default float math:quat/_relative_w 10000