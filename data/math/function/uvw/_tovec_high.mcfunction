#math:uvw/_tovec_high
# 局部坐标转换世界坐标, 高精度版本
# 输入{<u,int>,<v,int>,<w,int>}
# 输出{<vec_x,int>,<vec_y,int>,<vec_z,int>}

execute store result score sstemp_u_l int run scoreboard players operation sstemp_u int = u int
execute store result score sstemp_v_l int run scoreboard players operation sstemp_v int = v int
execute store result score sstemp_w_l int run scoreboard players operation sstemp_w int = w int
scoreboard players operation sstemp_u int /= 10000 int
scoreboard players operation sstemp_v int /= 10000 int
scoreboard players operation sstemp_w int /= 10000 int
scoreboard players operation sstemp_u_l int %= 10000 int
scoreboard players operation sstemp_v_l int %= 10000 int
scoreboard players operation sstemp_w_l int %= 10000 int

# 计算低位
scoreboard players operation vec_x int = ivec_x int
scoreboard players operation vec_x int *= sstemp_u_l int
scoreboard players operation sstemp int = jvec_x int
scoreboard players operation sstemp int *= sstemp_v_l int
scoreboard players operation vec_x int += sstemp int
scoreboard players operation sstemp int = kvec_x int
scoreboard players operation sstemp int *= sstemp_w_l int
scoreboard players operation vec_x int += sstemp int
scoreboard players operation vec_x int /= 10000 int
scoreboard players operation vec_x int += x int

scoreboard players operation vec_y int = ivec_y int
scoreboard players operation vec_y int *= sstemp_u_l int
scoreboard players operation sstemp int = jvec_y int
scoreboard players operation sstemp int *= sstemp_v_l int
scoreboard players operation vec_y int += sstemp int
scoreboard players operation sstemp int = kvec_y int
scoreboard players operation sstemp int *= sstemp_w_l int
scoreboard players operation vec_y int += sstemp int
scoreboard players operation vec_y int /= 10000 int
scoreboard players operation vec_y int += y int

scoreboard players operation vec_z int = ivec_z int
scoreboard players operation vec_z int *= sstemp_u_l int
scoreboard players operation sstemp int = jvec_z int
scoreboard players operation sstemp int *= sstemp_v_l int
scoreboard players operation vec_z int += sstemp int
scoreboard players operation sstemp int = kvec_z int
scoreboard players operation sstemp int *= sstemp_w_l int
scoreboard players operation vec_z int += sstemp int
scoreboard players operation vec_z int /= 10000 int
scoreboard players operation vec_z int += z int

# 计算高位
scoreboard players operation sstemp int = ivec_x int
scoreboard players operation sstemp int *= sstemp_u int
scoreboard players operation vec_x int += sstemp int
scoreboard players operation sstemp int = jvec_x int
scoreboard players operation sstemp int *= sstemp_v int
scoreboard players operation vec_x int += sstemp int
scoreboard players operation sstemp int = kvec_x int
scoreboard players operation sstemp int *= sstemp_w int
scoreboard players operation vec_x int += sstemp int

scoreboard players operation sstemp int = ivec_y int
scoreboard players operation sstemp int *= sstemp_u int
scoreboard players operation vec_y int += sstemp int
scoreboard players operation sstemp int = jvec_y int
scoreboard players operation sstemp int *= sstemp_v int
scoreboard players operation vec_y int += sstemp int
scoreboard players operation sstemp int = kvec_y int
scoreboard players operation sstemp int *= sstemp_w int
scoreboard players operation vec_y int += sstemp int

scoreboard players operation sstemp int = ivec_z int
scoreboard players operation sstemp int *= sstemp_u int
scoreboard players operation vec_z int += sstemp int
scoreboard players operation sstemp int = jvec_z int
scoreboard players operation sstemp int *= sstemp_v int
scoreboard players operation vec_z int += sstemp int
scoreboard players operation sstemp int = kvec_z int
scoreboard players operation sstemp int *= sstemp_w int
scoreboard players operation vec_z int += sstemp int