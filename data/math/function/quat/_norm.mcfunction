#math:quat/_norm
# 把临时四元数单位化
# 输入{<quat_x,int>, <quat_y,int>, <quat_z,int>, <quat_w,int>}
# 需要传入世界实体为执行者

scoreboard players operation vec_x int = quat_x int
scoreboard players operation vec_y int = quat_y int
scoreboard players operation vec_z int = quat_z int
function math:vec/_unit

execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get quat_w int
execute store result storage math:io xyz[0] double 0.001 run scoreboard players get res int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score quat_w int run data get entity @s Pos[2] 10000
execute store result score res int run data get entity @s Pos[0] 10000

scoreboard players operation quat_x int = uvec_x int
scoreboard players operation quat_y int = uvec_y int
scoreboard players operation quat_z int = uvec_z int

scoreboard players operation quat_x int *= res int
scoreboard players operation quat_y int *= res int
scoreboard players operation quat_z int *= res int

scoreboard players operation quat_x int /= 10000 int
scoreboard players operation quat_y int /= 10000 int
scoreboard players operation quat_z int /= 10000 int