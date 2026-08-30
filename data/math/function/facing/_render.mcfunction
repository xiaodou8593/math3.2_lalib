#math:facing/_render
# 输入执行坐标作为渲染起始点
# 输入storage math:io render_command
# 需要以世界实体为执行者

execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^2.0
data modify storage math:io xyz set from entity @s Pos
execute store result score vec_x int run data get storage math:io xyz[0] 10000
execute store result score vec_y int run data get storage math:io xyz[1] 10000
execute store result score vec_z int run data get storage math:io xyz[2] 10000
scoreboard players set vec_n int 50
function math:vec/_render_debug