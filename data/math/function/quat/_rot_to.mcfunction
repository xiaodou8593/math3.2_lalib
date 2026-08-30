#math:quat/_rot_to
# 朝向角转四元数
# 输入rot{<phi,int,1w>, <theta,int,1w>}
# 需要传入世界实体

execute store result entity @s Rotation[0] float -0.00005 run scoreboard players operation phi int += theta int
execute at @s rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score quat_x int store result score quat_y int run data get storage math:io xyz[0] 5000
execute store result score quat_z int store result score quat_w int run data get storage math:io xyz[2] 5000

scoreboard players operation phi int -= theta int
execute store result entity @s Rotation[0] float -0.00005 run scoreboard players operation phi int -= theta int
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_c int run data get storage math:io xyz[2] 5000
execute store result score sstemp_s int run data get storage math:io xyz[0] 5000

scoreboard players operation quat_x int += sstemp_s int
scoreboard players operation quat_y int -= sstemp_s int
scoreboard players operation quat_z int -= sstemp_c int
scoreboard players operation quat_w int += sstemp_c int

scoreboard players operation phi int += theta int