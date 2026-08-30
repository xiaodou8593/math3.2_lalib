#math:rot/_tovec
# 朝向转单位向量
# 输出vec{<vec_x,int,1w>,<vec_y,int,1w>,<vec_z,int,1w>}
# 需要传入世界实体

execute store result storage math:io rotation[0] float -0.0001 run scoreboard players get theta int
execute store result storage math:io rotation[1] float 0.0001 run scoreboard players get phi int
data modify entity @s Rotation set from storage math:io rotation
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score vec_x int run data get storage math:io xyz[0] 10000
execute store result score vec_y int run data get storage math:io xyz[1] 10000
execute store result score vec_z int run data get storage math:io xyz[2] 10000