#math:quat/regular/x_pos
# math:quat/_regular_discard调用

scoreboard players operation quat_x int *= sstemp_signx int
scoreboard players operation quat_y int *= sstemp_signy int
scoreboard players operation quat_z int *= sstemp_signz int
scoreboard players operation quat_w int *= sstemp_signw int

scoreboard players operation cos int = quat_z int
execute store result storage math:io xyz[2] double 0.00005 run scoreboard players operation cos int += quat_w int
scoreboard players operation sin int = quat_x int
execute store result storage math:io xyz[0] double 0.00005 run scoreboard players operation sin int += quat_y int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ^ ^ ^0.70710678
data modify storage math:io xyz set from entity @s Pos
execute store result score rquat_z int run data get storage math:io xyz[2] 10000
execute store result score rquat_x int run data get storage math:io xyz[0] 10000

scoreboard players operation rquat_y int = rquat_x int
scoreboard players operation rquat_w int = rquat_z int