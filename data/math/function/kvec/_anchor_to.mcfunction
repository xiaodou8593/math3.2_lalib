#math:kvec/_anchor_to
# 执行朝向转向量
# 输入执行朝向
# 需要以世界实体为执行者

execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score kvec_x int run data get storage math:io xyz[0] 10000
execute store result score kvec_y int run data get storage math:io xyz[1] 10000
execute store result score kvec_z int run data get storage math:io xyz[2] 10000