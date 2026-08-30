#math:uvw/_xyz_to_as
# 世界坐标转换局部坐标
# 输入{<x,int>,<y,int>,<z,int>}
# 输出{<u,int>,<v,int>,<w,int>}

execute store result score u int store result score v int store result score w int run scoreboard players operation x int -= @s x
execute store result score sstemp_u1 int store result score sstemp_v1 int store result score sstemp_w1 int run scoreboard players operation y int -= @s y
execute store result score sstemp_u2 int store result score sstemp_v2 int store result score sstemp_w2 int run scoreboard players operation z int -= @s z

scoreboard players operation u int *= @s ivec_x
scoreboard players operation sstemp_u1 int *= @s ivec_y
scoreboard players operation u int += sstemp_u1 int
scoreboard players operation sstemp_u2 int *= @s ivec_z
scoreboard players operation u int += sstemp_u2 int
scoreboard players operation u int /= 10000 int

scoreboard players operation v int *= @s jvec_x
scoreboard players operation sstemp_v1 int *= @s jvec_y
scoreboard players operation v int += sstemp_v1 int
scoreboard players operation sstemp_v2 int *= @s jvec_z
scoreboard players operation v int += sstemp_v2 int
scoreboard players operation v int /= 10000 int

scoreboard players operation w int *= @s kvec_x
scoreboard players operation sstemp_w1 int *= @s kvec_y
scoreboard players operation w int += sstemp_w1 int
scoreboard players operation sstemp_w2 int *= @s kvec_z
scoreboard players operation w int += sstemp_w2 int
scoreboard players operation w int /= 10000 int

scoreboard players operation x int += @s x
scoreboard players operation y int += @s y
scoreboard players operation z int += @s z