#math:euler/_to_iquat
# 欧拉角转四元数
# 输出iquat{<iquat_x,int,1w>,<iquat_y,int,1w>,<iquat_z,int,1w>,<iquat_w,int,1w>}
# 需要传入世界实体为执行者

scoreboard players operation sstemp_0 int = theta int
execute store result entity @s Rotation[0] float -0.00005 run scoreboard players operation sstemp_0 int += phi int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0 0.0 0.0
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_c0 int run data get storage math:io xyz[2] 40000
execute store result score sstemp_s0 int run data get storage math:io xyz[0] 40000

scoreboard players operation sstemp_0 int = theta int
execute store result entity @s Rotation[0] float -0.00005 run scoreboard players operation sstemp_0 int -= phi int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_c1 int run data get storage math:io xyz[2] 40000
execute store result score sstemp_s1 int run data get storage math:io xyz[0] 40000

execute store result entity @s Rotation[0] float -0.00005 run scoreboard players get psi int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_c int run data get storage math:io xyz[2] 40000
execute store result score sstemp_s int run data get storage math:io xyz[0] 40000

# s0 = sin(theta/2)*cos(phi/2)
# s1 = -cos(theta/2)*sin(phi/2)
scoreboard players operation sstemp_s0 int += sstemp_s1 int
scoreboard players operation sstemp_s1 int *= 2 int
scoreboard players operation sstemp_s1 int -= sstemp_s0 int
scoreboard players operation sstemp_s0 int /= 2 int
scoreboard players operation sstemp_s1 int /= 2 int

scoreboard players operation iquat_x int = sstemp_s0 int
scoreboard players operation iquat_x int *= sstemp_s int
scoreboard players operation iquat_y int = sstemp_s1 int
scoreboard players operation iquat_y int *= sstemp_s int
scoreboard players operation sstemp_s0 int *= sstemp_c int
scoreboard players operation sstemp_s1 int *= sstemp_c int
scoreboard players operation iquat_x int -= sstemp_s1 int
scoreboard players operation iquat_y int += sstemp_s0 int

# c0 = cos(theta/2)*cos(phi/2)
# c1 = sin(theta/2)*sin(phi/2)
scoreboard players operation sstemp_c1 int -= sstemp_c0 int
scoreboard players operation sstemp_c0 int *= 2 int
scoreboard players operation sstemp_c0 int += sstemp_c1 int
scoreboard players operation sstemp_c0 int /= 2 int
scoreboard players operation sstemp_c1 int /= 2 int

scoreboard players operation iquat_z int = sstemp_c0 int
scoreboard players operation iquat_z int *= sstemp_s int
scoreboard players operation iquat_w int = sstemp_c1 int
scoreboard players operation iquat_w int *= sstemp_s int
scoreboard players operation sstemp_c0 int *= sstemp_c int
scoreboard players operation sstemp_c1 int *= sstemp_c int
scoreboard players operation iquat_z int -= sstemp_c1 int
scoreboard players operation iquat_w int += sstemp_c0 int

scoreboard players operation iquat_x int /= 160000 int
scoreboard players operation iquat_y int /= 160000 int
scoreboard players operation iquat_z int /= 160000 int
scoreboard players operation iquat_w int /= 160000 int