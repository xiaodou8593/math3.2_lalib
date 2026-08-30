#math:rquat/_proj
# 数据模板投射到临时对象
# 输入storage math:io xyzw

execute store result score rquat_x int run data get storage math:io xyzw[0] 10000
execute store result score rquat_y int run data get storage math:io xyzw[1] 10000
execute store result score rquat_z int run data get storage math:io xyzw[2] 10000
execute store result score rquat_w int run data get storage math:io xyzw[3] 10000