#math:iquat/test/nvec_to/update_theta
# math:iquat/test/nvec_to/main_debug调用

execute store result storage marker_control:io result.theta int 1 run scoreboard players get theta int

execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get theta int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score nvec_z int run data get storage math:io xyz[2] 10000
execute store result score nvec_y int run data get storage math:io xyz[0] 10000
scoreboard players set nvec_x int 0
execute as @e[tag=iquat_test,tag=math_plane,limit=1] run function math:plane/_store_nvec
execute as @e[tag=iquat_test,tag=math_plane,limit=1] run function math:plane/_update_display