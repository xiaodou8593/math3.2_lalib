#math:vec/_cross_fvec_high_high
# 计算向量叉乘
# 输入fvec{<fvec_x,int,1w>, <fvec_y,int,1w>, <fvec_z,int,1w>}

scoreboard players operation sstemp_x int = vec_x int
scoreboard players operation sstemp_y int = vec_y int
scoreboard players operation sstemp_z int = vec_z int
scoreboard players operation sstemp_fx int = fvec_x int
scoreboard players operation sstemp_fy int = fvec_y int
scoreboard players operation sstemp_fz int = fvec_z int
execute store result score sstemp_vx int run scoreboard players operation vec_x int /= 10000 int
execute store result score sstemp_vy int run scoreboard players operation vec_y int /= 10000 int
execute store result score sstemp_vz int run scoreboard players operation vec_z int /= 10000 int
scoreboard players operation fvec_x int /= 10000 int
scoreboard players operation fvec_y int /= 10000 int
scoreboard players operation fvec_z int /= 10000 int
execute store result score sstemp_lx int run scoreboard players operation sstemp_x int %= 10000 int
execute store result score sstemp_ly int run scoreboard players operation sstemp_y int %= 10000 int
execute store result score sstemp_lz int run scoreboard players operation sstemp_z int %= 10000 int
scoreboard players operation sstemp_fx int %= 10000 int
scoreboard players operation sstemp_fy int %= 10000 int
scoreboard players operation sstemp_fz int %= 10000 int

# 计算高位
scoreboard players operation sstempx int = vec_x int
scoreboard players operation vec_x int = vec_y int
scoreboard players operation vec_x int *= fvec_z int
scoreboard players operation sstemp0 int = fvec_y int
scoreboard players operation sstemp0 int *= vec_z int
scoreboard players operation vec_x int -= sstemp0 int

scoreboard players operation sstempy int = vec_y int
scoreboard players operation vec_y int = vec_z int
scoreboard players operation vec_y int *= fvec_x int
scoreboard players operation sstemp0 int = fvec_z int
scoreboard players operation sstemp0 int *= sstempx int
scoreboard players operation vec_y int -= sstemp0 int

scoreboard players operation vec_z int = sstempx int
scoreboard players operation vec_z int *= fvec_y int
scoreboard players operation sstempy int *= fvec_x int
scoreboard players operation vec_z int -= sstempy int

scoreboard players operation vec_x int *= 10000 int
scoreboard players operation vec_y int *= 10000 int
scoreboard players operation vec_z int *= 10000 int

# 计算中位1
scoreboard players operation sstempx int = sstemp_x int
scoreboard players operation sstemp_x int = sstemp_y int
scoreboard players operation sstemp_x int *= fvec_z int
scoreboard players operation sstemp0 int = fvec_y int
scoreboard players operation sstemp0 int *= sstemp_z int
scoreboard players operation sstemp_x int -= sstemp0 int

scoreboard players operation sstempy int = sstemp_y int
scoreboard players operation sstemp_y int = sstemp_z int
scoreboard players operation sstemp_y int *= fvec_x int
scoreboard players operation sstemp0 int = fvec_z int
scoreboard players operation sstemp0 int *= sstempx int
scoreboard players operation sstemp_y int -= sstemp0 int

scoreboard players operation sstemp_z int = sstempx int
scoreboard players operation sstemp_z int *= fvec_y int
scoreboard players operation sstempy int *= fvec_x int
scoreboard players operation sstemp_z int -= sstempy int

# 叠加
scoreboard players operation vec_x int += sstemp_x int
scoreboard players operation vec_y int += sstemp_y int
scoreboard players operation vec_z int += sstemp_z int

# 计算中位2
scoreboard players operation sstempx int = sstemp_vx int
scoreboard players operation sstemp_vx int = sstemp_vy int
scoreboard players operation sstemp_vx int *= sstemp_fz int
scoreboard players operation sstemp0 int = sstemp_fy int
scoreboard players operation sstemp0 int *= sstemp_vz int
scoreboard players operation sstemp_vx int -= sstemp0 int

scoreboard players operation sstempy int = sstemp_vy int
scoreboard players operation sstemp_vy int = sstemp_vz int
scoreboard players operation sstemp_vy int *= sstemp_fx int
scoreboard players operation sstemp0 int = sstemp_fz int
scoreboard players operation sstemp0 int *= sstempx int
scoreboard players operation sstemp_vy int -= sstemp0 int

scoreboard players operation sstemp_vz int = sstempx int
scoreboard players operation sstemp_vz int *= sstemp_fy int
scoreboard players operation sstempy int *= sstemp_fx int
scoreboard players operation sstemp_vz int -= sstempy int

# 叠加
scoreboard players operation vec_x int += sstemp_vx int
scoreboard players operation vec_y int += sstemp_vy int
scoreboard players operation vec_z int += sstemp_vz int

# 计算低位
scoreboard players operation sstempx int = sstemp_lx int
scoreboard players operation sstemp_lx int = sstemp_ly int
scoreboard players operation sstemp_lx int *= sstemp_fz int
scoreboard players operation sstemp0 int = sstemp_fy int
scoreboard players operation sstemp0 int *= sstemp_lz int
scoreboard players operation sstemp_lx int -= sstemp0 int

scoreboard players operation sstempy int = sstemp_ly int
scoreboard players operation sstemp_ly int = sstemp_lz int
scoreboard players operation sstemp_ly int *= sstemp_fx int
scoreboard players operation sstemp0 int = sstemp_fz int
scoreboard players operation sstemp0 int *= sstempx int
scoreboard players operation sstemp_ly int -= sstemp0 int

scoreboard players operation sstemp_lz int = sstempx int
scoreboard players operation sstemp_lz int *= sstemp_fy int
scoreboard players operation sstempy int *= sstemp_fx int
scoreboard players operation sstemp_lz int -= sstempy int

scoreboard players operation sstemp_lx int /= 10000 int
scoreboard players operation sstemp_ly int /= 10000 int
scoreboard players operation sstemp_lz int /= 10000 int

# 叠加
scoreboard players operation vec_x int += sstemp_lx int
scoreboard players operation vec_y int += sstemp_ly int
scoreboard players operation vec_z int += sstemp_lz int