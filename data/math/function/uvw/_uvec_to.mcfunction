#math:uvw/_uvec_to
# 单位向量转换局部坐标
# 输入{<uvec_x,int>,<uvec_y,int>,<uvec_z,int>}
# 输出{<u,int>,<v,int>,<w,int>}

execute store result score u int store result score v int run scoreboard players operation w int = uvec_x int
execute store result score sstemp_u1 int store result score sstemp_v1 int run scoreboard players operation sstemp_w1 int = uvec_y int
execute store result score sstemp_u2 int store result score sstemp_v2 int run scoreboard players operation sstemp_w2 int = uvec_z int

scoreboard players operation u int *= ivec_x int
scoreboard players operation sstemp_u1 int *= ivec_y int
scoreboard players operation u int += sstemp_u1 int
scoreboard players operation sstemp_u2 int *= ivec_z int
scoreboard players operation u int += sstemp_u2 int
scoreboard players operation u int /= 10000 int

scoreboard players operation v int *= jvec_x int
scoreboard players operation sstemp_v1 int *= jvec_y int
scoreboard players operation v int += sstemp_v1 int
scoreboard players operation sstemp_v2 int *= jvec_z int
scoreboard players operation v int += sstemp_v2 int
scoreboard players operation v int /= 10000 int

scoreboard players operation w int *= kvec_x int
scoreboard players operation sstemp_w1 int *= kvec_y int
scoreboard players operation w int += sstemp_w1 int
scoreboard players operation sstemp_w2 int *= kvec_z int
scoreboard players operation w int += sstemp_w2 int
scoreboard players operation w int /= 10000 int