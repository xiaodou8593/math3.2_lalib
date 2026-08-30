#math:quat/_rand
# 生成随机四元数姿态
# 需要传入世界实体为执行者

scoreboard players set min int 1
scoreboard players set max int 3600000
function math:_random
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get random int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score quat_x int run data get storage math:io xyz[2] 10000
execute store result score quat_w int run data get storage math:io xyz[0] 10000

function math:_random
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get random int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score quat_z int run data get storage math:io xyz[2] 10000
execute store result score quat_y int run data get storage math:io xyz[0] 10000

scoreboard players set min int 0
scoreboard players set max int 100000000
function math:_random
execute store result score inp int run scoreboard players get random int
function math:_sqrt
scoreboard players operation quat_y int *= res int
scoreboard players operation quat_y int /= 10000 int
scoreboard players operation quat_z int *= res int
scoreboard players operation quat_z int /= 10000 int

scoreboard players operation inp int *= -1 int
scoreboard players add inp int 100000000
function math:_sqrt
scoreboard players operation quat_x int *= res int
scoreboard players operation quat_x int /= 10000 int
scoreboard players operation quat_w int *= res int
scoreboard players operation quat_w int /= 10000 int