#math:quat/_rot_uvec_fvec
# 计算从uvec旋转到fvec(均为单位向量)的四元数
# 输入uvec{...}
# 输入fvec{...}
# 占用vec{...}
# 需要传入世界实体为执行者

# 计算点乘
scoreboard players operation inp int = uvec_x int
scoreboard players operation inp int *= fvec_x int
scoreboard players operation sstemp_d int = uvec_y int
scoreboard players operation sstemp_d int *= fvec_y int
scoreboard players operation inp int += sstemp_d int
scoreboard players operation sstemp_d int = uvec_z int
scoreboard players operation sstemp_d int *= fvec_z int
scoreboard players operation inp int += sstemp_d int
scoreboard players add inp int 100000000
scoreboard players operation inp int > 0 int
scoreboard players operation inp int /= 2 int
function math:_sqrt
scoreboard players operation quat_w int = res int

# 计算叉乘
scoreboard players operation sstemp_n1_x int = uvec_x int
scoreboard players operation sstemp_n1_y int = uvec_y int
scoreboard players operation sstemp_n1_z int = uvec_z int
# 计算从sstemp_n1到fvec的旋转四元数
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation sstemp_n1_x int += fvec_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation sstemp_n1_y int += fvec_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation sstemp_n1_z int += fvec_z int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score vec_x int run data get storage math:io xyz[0] 10000
execute store result score vec_y int run data get storage math:io xyz[1] 10000
execute store result score vec_z int run data get storage math:io xyz[2] 10000
function math:vec/_cross_fvec
scoreboard players operation quat_x int = vec_x int
scoreboard players operation quat_y int = vec_y int
scoreboard players operation quat_z int = vec_z int