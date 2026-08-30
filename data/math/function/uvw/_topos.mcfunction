#math:uvw/_topos
# 局部坐标转换执行者坐标
# 输入{<u,int>,<v,int>,<w,int>}
# 输出{<@s,x>,<@s,y>,<@s,z>}
# 输出entity @s Pos

scoreboard players operation @s x = ivec_x int
scoreboard players operation @s x *= u int
scoreboard players operation sstemp int = jvec_x int
scoreboard players operation sstemp int *= v int
scoreboard players operation @s x += sstemp int
scoreboard players operation sstemp int = kvec_x int
scoreboard players operation sstemp int *= w int
scoreboard players operation @s x += sstemp int
scoreboard players operation @s x /= 10000 int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation @s x += x int

scoreboard players operation @s y = ivec_y int
scoreboard players operation @s y *= u int
scoreboard players operation sstemp int = jvec_y int
scoreboard players operation sstemp int *= v int
scoreboard players operation @s y += sstemp int
scoreboard players operation sstemp int = kvec_y int
scoreboard players operation sstemp int *= w int
scoreboard players operation @s y += sstemp int
scoreboard players operation @s y /= 10000 int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation @s y += y int

scoreboard players operation @s z = ivec_z int
scoreboard players operation @s z *= u int
scoreboard players operation sstemp int = jvec_z int
scoreboard players operation sstemp int *= v int
scoreboard players operation @s z += sstemp int
scoreboard players operation sstemp int = kvec_z int
scoreboard players operation sstemp int *= w int
scoreboard players operation @s z += sstemp int
scoreboard players operation @s z /= 10000 int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation @s z += z int

data modify entity @s Pos set from storage math:io xyz