#math:quat/_theta_to
# 偏航角转四元数
# 输入<theta,int,1w>
# 需要传入世界实体为执行者

execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get theta int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score quat_y int run data get storage math:io xyz[0] 10000
execute store result score quat_w int run data get storage math:io xyz[2] 10000

scoreboard players set quat_x int 0
scoreboard players set quat_z int 0