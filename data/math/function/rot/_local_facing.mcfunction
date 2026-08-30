#math:rot/_local_facing
# 计算朝向，使得从局部坐标出发的射线指向目标
# 输入{<u,int,1w>, <v,int,1w>}
# 输入{<vec_x,int,1w>, <vec_y,int,1w>, <vec_z,int,1w>}
# 需要传入世界实体

scoreboard players operation dec int = vec_x int
function math:dec/_6sqr
scoreboard players operation inp int = dec int
scoreboard players operation dec int = vec_y int
function math:dec/_6sqr
scoreboard players operation inp int += dec int
scoreboard players operation dec int = vec_z int
function math:dec/_6sqr
scoreboard players operation inp int += dec int
scoreboard players operation dec int = u int
function math:dec/_6sqr
scoreboard players operation inp int -= dec int
scoreboard players operation dec int = v int
function math:dec/_6sqr
scoreboard players operation inp int -= dec int
function math:_sqrt

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get u int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get v int
execute store result storage math:io xyz[2] double 0.001 run scoreboard players get res int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run rotate @s ~ ~
data modify storage math:io rotation set from entity @s Rotation
execute store result score sstemp_phi int run data get storage math:io rotation[1] 10000
execute store result score sstemp_theta int run data get storage math:io rotation[0] -10000

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get vec_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get vec_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get vec_z int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run rotate @s ~ ~
data modify storage math:io rotation set from entity @s Rotation
execute store result score phi int run data get storage math:io rotation[1] 10000
execute store result score theta int run data get storage math:io rotation[0] -10000

scoreboard players operation phi int -= sstemp_phi int
scoreboard players operation theta int -= sstemp_theta int