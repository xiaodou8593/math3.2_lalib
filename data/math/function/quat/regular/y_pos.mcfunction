#math:quat/regular/y_pos
# math:quat/_regular_discard调用

scoreboard players operation quat_x int *= sstemp_signx int
scoreboard players operation quat_y int *= sstemp_signy int
scoreboard players operation quat_z int *= sstemp_signz int
scoreboard players operation quat_w int *= sstemp_signw int

execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation cos int = quat_w int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation sin int = quat_y int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score rquat_w int run data get storage math:io xyz[2] 10000
execute store result score rquat_y int run data get storage math:io xyz[0] 10000

scoreboard players set rquat_x int 0
scoreboard players set rquat_z int 0