#math:damp_vec/_iter
# 阻尼迭代
# 需要传入世界实体为执行者

# 位置迭代
scoreboard players operation damp_x int += damp_vx int
scoreboard players operation damp_y int += damp_vy int
scoreboard players operation damp_z int += damp_vz int

# 阻力系数
scoreboard players operation damp_vx int *= damp_k int
scoreboard players operation damp_vy int *= damp_k int
scoreboard players operation damp_vz int *= damp_k int
scoreboard players operation damp_vx int /= damp_b int
scoreboard players operation damp_vy int /= damp_b int
scoreboard players operation damp_vz int /= damp_b int

# 获取拉力向量
execute store result storage math:io xyz[0] double -0.0001 run scoreboard players get damp_x int
execute store result storage math:io xyz[1] double -0.0001 run scoreboard players get damp_y int
execute store result storage math:io xyz[2] double -0.0001 run scoreboard players get damp_z int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_x int run data get storage math:io xyz[0] 10000
execute store result score sstemp_y int run data get storage math:io xyz[1] 10000
execute store result score sstemp_z int run data get storage math:io xyz[2] 10000
scoreboard players operation sstemp_x int *= damp_f int
scoreboard players operation sstemp_y int *= damp_f int
scoreboard players operation sstemp_z int *= damp_f int
scoreboard players operation sstemp_x int /= 10000 int
scoreboard players operation sstemp_y int /= 10000 int
scoreboard players operation sstemp_z int /= 10000 int

# 速度叠加
scoreboard players operation damp_vx int += sstemp_x int
scoreboard players operation damp_vy int += sstemp_y int
scoreboard players operation damp_vz int += sstemp_z int