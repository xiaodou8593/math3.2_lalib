#math:rot/_touvw
# 获取局部坐标系
# 输出uvw{ivec, jvec, kvec}
# 需要传入世界实体

execute store result storage math:io rotation[0] float -0.0001 run scoreboard players get theta int
execute store result storage math:io rotation[1] float 0.0001 run scoreboard players get phi int
data modify entity @s Rotation set from storage math:io rotation
execute at @s positioned 0.0 0.0 0.0 run function math:rot/get_ijk