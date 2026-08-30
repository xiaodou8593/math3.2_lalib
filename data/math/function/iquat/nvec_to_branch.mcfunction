#math:iquat/nvec_to_branch
# math:iquat/_nvec_to调用

# 计算二倍半角余弦
scoreboard players operation inp int = nvec_y int
scoreboard players add inp int 10000
scoreboard players operation inp int *= 20000 int
function math:_sqrt
scoreboard players operation iquat_w int = res int
scoreboard players operation iquat_w int /= 2 int

# 计算二倍半角正弦
scoreboard players operation inp int *= -1 int
scoreboard players add inp int 400000000
function math:_sqrt

scoreboard players set iquat_y int 0

# 计算旋转轴*sin(theta/2)
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get nvec_z int
execute store result storage math:io xyz[2] double -0.0001 run scoreboard players get nvec_x int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score iquat_x int run data get storage math:io xyz[0] 10000
execute store result score iquat_z int run data get storage math:io xyz[2] 10000

scoreboard players operation iquat_x int *= res int
scoreboard players operation iquat_x int /= 20000 int

scoreboard players operation iquat_z int *= res int
scoreboard players operation iquat_z int /= 20000 int