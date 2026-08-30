#math:uvw/_fvec_to_high
# 世界坐标转换局部坐标，高精度版本
# 输入{<fvec_x,int>,<fvec_y,int>,<fvec_z,int>}
# 输出{<u,int>,<v,int>,<w,int>}

execute store result score sstemp_x int run scoreboard players operation sstemp_x_l int = fvec_x int
execute store result score sstemp_y int run scoreboard players operation sstemp_y_l int = fvec_y int
execute store result score sstemp_z int run scoreboard players operation sstemp_z_l int = fvec_z int
scoreboard players operation sstemp_x int /= 10000 int
scoreboard players operation sstemp_y int /= 10000 int
scoreboard players operation sstemp_z int /= 10000 int
scoreboard players operation sstemp_x_l int %= 10000 int
scoreboard players operation sstemp_y_l int %= 10000 int
scoreboard players operation sstemp_z_l int %= 10000 int

# 计算高位
execute store result score u int store result score v int run scoreboard players operation w int = sstemp_x int
execute store result score sstemp_u1 int store result score sstemp_v1 int run scoreboard players operation sstemp_w1 int = sstemp_y int
execute store result score sstemp_u2 int store result score sstemp_v2 int run scoreboard players operation sstemp_w2 int = sstemp_z int

scoreboard players operation u int *= ivec_x int
scoreboard players operation sstemp_u1 int *= ivec_y int
scoreboard players operation u int += sstemp_u1 int
scoreboard players operation sstemp_u2 int *= ivec_z int
scoreboard players operation u int += sstemp_u2 int

scoreboard players operation v int *= jvec_x int
scoreboard players operation sstemp_v1 int *= jvec_y int
scoreboard players operation v int += sstemp_v1 int
scoreboard players operation sstemp_v2 int *= jvec_z int
scoreboard players operation v int += sstemp_v2 int

scoreboard players operation w int *= kvec_x int
scoreboard players operation sstemp_w1 int *= kvec_y int
scoreboard players operation w int += sstemp_w1 int
scoreboard players operation sstemp_w2 int *= kvec_z int
scoreboard players operation w int += sstemp_w2 int

# 计算低位
execute store result score sstemp_u0 int store result score sstemp_v0 int run scoreboard players operation sstemp_w0 int = sstemp_x_l int
execute store result score sstemp_u1 int store result score sstemp_v1 int run scoreboard players operation sstemp_w1 int = sstemp_y_l int
execute store result score sstemp_u2 int store result score sstemp_v2 int run scoreboard players operation sstemp_w2 int = sstemp_z_l int

scoreboard players operation sstemp_u0 int *= ivec_x int
scoreboard players operation sstemp_u1 int *= ivec_y int
scoreboard players operation sstemp_u0 int += sstemp_u1 int
scoreboard players operation sstemp_u2 int *= ivec_z int
scoreboard players operation sstemp_u0 int += sstemp_u2 int
scoreboard players operation sstemp_u0 int /= 10000 int

scoreboard players operation sstemp_v0 int *= jvec_x int
scoreboard players operation sstemp_v1 int *= jvec_y int
scoreboard players operation sstemp_v0 int += sstemp_v1 int
scoreboard players operation sstemp_v2 int *= jvec_z int
scoreboard players operation sstemp_v0 int += sstemp_v2 int
scoreboard players operation sstemp_v0 int /= 10000 int

scoreboard players operation sstemp_w0 int *= kvec_x int
scoreboard players operation sstemp_w1 int *= kvec_y int
scoreboard players operation sstemp_w0 int += sstemp_w1 int
scoreboard players operation sstemp_w2 int *= kvec_z int
scoreboard players operation sstemp_w0 int += sstemp_w2 int
scoreboard players operation sstemp_w0 int /= 10000 int

# 合并结果
scoreboard players operation u int += sstemp_u0 int
scoreboard players operation v int += sstemp_v0 int
scoreboard players operation w int += sstemp_w0 int