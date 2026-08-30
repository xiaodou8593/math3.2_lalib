#math:uvec/_rot_fvec
# 以uvec为旋转轴，旋转fvec
# 输入<theta,int,1w>
# 输入fvec{<fvec_x,int,1w>,<fvec_y,int,1w>,<fvec_z,int,1w>}
# 需要传入世界实体为执行者

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get uvec_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get uvec_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get uvec_z int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run function math:uvec/get_ij

execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get theta int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score cos int run data get storage math:io xyz[2] 10000
execute store result score sin int run data get storage math:io xyz[0] 10000

scoreboard players operation sstemp_u int = sstemp_ix int
scoreboard players operation sstemp_u int *= fvec_x int
scoreboard players operation sstemp_0 int = sstemp_iy int
scoreboard players operation sstemp_0 int *= fvec_y int
scoreboard players operation sstemp_u int += sstemp_0 int
scoreboard players operation sstemp_0 int = sstemp_iz int
scoreboard players operation sstemp_0 int *= fvec_z int
scoreboard players operation sstemp_u int += sstemp_0 int
scoreboard players operation sstemp_u int /= 10000 int

scoreboard players operation sstemp_v int = sstemp_jx int
scoreboard players operation sstemp_v int *= fvec_x int
scoreboard players operation sstemp_0 int = sstemp_jy int
scoreboard players operation sstemp_0 int *= fvec_y int
scoreboard players operation sstemp_v int += sstemp_0 int
scoreboard players operation sstemp_0 int = sstemp_jz int
scoreboard players operation sstemp_0 int *= fvec_z int
scoreboard players operation sstemp_v int += sstemp_0 int
scoreboard players operation sstemp_v int /= 10000 int

scoreboard players operation sstemp_0 int = sstemp_u int
scoreboard players operation sstemp_1 int = sstemp_v int
scoreboard players operation sstemp_0 int *= sin int
scoreboard players operation sstemp_1 int *= sin int
scoreboard players operation sstemp_0 int /= 10000 int
scoreboard players operation sstemp_1 int /= 10000 int

scoreboard players operation sstemp_u int *= cos int
scoreboard players operation sstemp_v int *= cos int
scoreboard players operation sstemp_u int /= 10000 int
scoreboard players operation sstemp_v int /= 10000 int

scoreboard players operation sstemp_u int -= sstemp_1 int
scoreboard players operation sstemp_v int += sstemp_0 int

scoreboard players operation sstemp_ix int *= sstemp_u int
scoreboard players operation sstemp_iy int *= sstemp_u int
scoreboard players operation sstemp_iz int *= sstemp_u int
scoreboard players operation sstemp_jx int *= sstemp_v int
scoreboard players operation sstemp_jy int *= sstemp_v int
scoreboard players operation sstemp_jz int *= sstemp_v int
scoreboard players operation sstemp_ix int /= 10000 int
scoreboard players operation sstemp_iy int /= 10000 int
scoreboard players operation sstemp_iz int /= 10000 int
scoreboard players operation sstemp_jx int /= 10000 int
scoreboard players operation sstemp_jy int /= 10000 int
scoreboard players operation sstemp_jz int /= 10000 int

scoreboard players operation fvec_x int *= uvec_x int
scoreboard players operation fvec_y int *= uvec_y int
scoreboard players operation fvec_z int *= uvec_z int
scoreboard players operation fvec_x int += fvec_y int
scoreboard players operation fvec_x int += fvec_z int
execute store result score fvec_y int store result score fvec_z int run scoreboard players operation fvec_x int /= 10000 int
scoreboard players operation fvec_x int *= uvec_x int
scoreboard players operation fvec_y int *= uvec_y int
scoreboard players operation fvec_z int *= uvec_z int
scoreboard players operation fvec_x int /= 10000 int
scoreboard players operation fvec_y int /= 10000 int
scoreboard players operation fvec_z int /= 10000 int

scoreboard players operation fvec_x int += sstemp_ix int
scoreboard players operation fvec_y int += sstemp_iy int
scoreboard players operation fvec_z int += sstemp_iz int
scoreboard players operation fvec_x int += sstemp_jx int
scoreboard players operation fvec_y int += sstemp_jy int
scoreboard players operation fvec_z int += sstemp_jz int