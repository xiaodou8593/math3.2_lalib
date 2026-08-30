#math:uvw/_vecto_high_as
# 世界坐标转换局部坐标，高精度版本
# 输入{<vec_x,int>,<vec_y,int>,<vec_z,int>}
# 传入实例为执行者
# 输出{<u,int>,<v,int>,<w,int>}

scoreboard players operation sstemp_x int = vec_x int
scoreboard players operation sstemp_y int = vec_y int
scoreboard players operation sstemp_z int = vec_z int
execute store result score sstemp_x_l int run scoreboard players operation sstemp_x int -= @s x
execute store result score sstemp_y_l int run scoreboard players operation sstemp_y int -= @s y
execute store result score sstemp_z_l int run scoreboard players operation sstemp_z int -= @s z

# 计算低位
execute store result score u int store result score v int store result score w int run scoreboard players operation sstemp_x_l int %= 10000 int
execute store result score sstemp_u1 int store result score sstemp_v1 int store result score sstemp_w1 int run scoreboard players operation sstemp_y_l int %= 10000 int
execute store result score sstemp_u2 int store result score sstemp_v2 int store result score sstemp_w2 int run scoreboard players operation sstemp_z_l int %= 10000 int

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

# 计算高位
execute store result score sstemp_u0 int store result score sstemp_v0 int store result score sstemp_w0 int run scoreboard players operation sstemp_x int /= 10000 int
execute store result score sstemp_u1 int store result score sstemp_v1 int store result score sstemp_w1 int run scoreboard players operation sstemp_y int /= 10000 int
execute store result score sstemp_u2 int store result score sstemp_v2 int store result score sstemp_w2 int run scoreboard players operation sstemp_z int /= 10000 int

scoreboard players operation sstemp_u0 int *= @s ivec_x
scoreboard players operation sstemp_u1 int *= @s ivec_y
scoreboard players operation sstemp_u0 int += sstemp_u1 int
scoreboard players operation sstemp_u2 int *= @s ivec_z
scoreboard players operation sstemp_u0 int += sstemp_u2 int

scoreboard players operation sstemp_v0 int *= @s jvec_x
scoreboard players operation sstemp_v1 int *= @s jvec_y
scoreboard players operation sstemp_v0 int += sstemp_v1 int
scoreboard players operation sstemp_v2 int *= @s jvec_z
scoreboard players operation sstemp_v0 int += sstemp_v2 int

scoreboard players operation sstemp_w0 int *= @s kvec_x
scoreboard players operation sstemp_w1 int *= @s kvec_y
scoreboard players operation sstemp_w0 int += sstemp_w1 int
scoreboard players operation sstemp_w2 int *= @s kvec_z
scoreboard players operation sstemp_w0 int += sstemp_w2 int

# 高低位合并
scoreboard players operation u int += sstemp_u0 int
scoreboard players operation v int += sstemp_v0 int
scoreboard players operation w int += sstemp_w0 int