#math:rquat/_facing_to
# 输入执行朝向
# 需要传入世界实体为执行者

rotate @s ~ ~
execute store result entity @s Rotation[0] float -0.0001 run data get entity @s Rotation[0] 5000
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_c int run data get storage math:io xyz[2] 10000
execute store result score sstemp_s int run data get storage math:io xyz[0] 10000

execute store result entity @s Rotation[0] float -0.0001 run data get entity @s Rotation[1] 5000
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score rquat_y int store result score rquat_w int run data get storage math:io xyz[2] 10000
execute store result score rquat_x int store result score rquat_z int run data get storage math:io xyz[0] 10000

scoreboard players operation rquat_x int *= sstemp_c int
scoreboard players operation rquat_y int *= sstemp_s int
scoreboard players operation rquat_z int *= sstemp_s int
scoreboard players operation rquat_w int *= sstemp_c int

scoreboard players operation rquat_x int /= 10000 int
scoreboard players operation rquat_y int /= -10000 int
scoreboard players operation rquat_z int /= 10000 int
scoreboard players operation rquat_w int /= 10000 int