#math:vec/_cross_fvec_high
# 计算向量叉乘
# 输入fvec{<fvec_x,int,1w>, <fvec_y,int,1w>, <fvec_z,int,1w>}

scoreboard players operation sstemp_x int = vec_x int
scoreboard players operation sstemp_y int = vec_y int
scoreboard players operation sstemp_z int = vec_z int
scoreboard players operation vec_x int /= 10000 int
scoreboard players operation vec_y int /= 10000 int
scoreboard players operation vec_z int /= 10000 int
scoreboard players operation sstemp_x int %= 10000 int
scoreboard players operation sstemp_y int %= 10000 int
scoreboard players operation sstemp_z int %= 10000 int

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

# 计算低位
scoreboard players operation sstempx int = sstemp_x int
scoreboard players operation sstemp_x int = sstemp_y int
scoreboard players operation sstemp_x int *= fvec_z int
scoreboard players operation sstemp0 int = fvec_y int
scoreboard players operation sstemp0 int *= sstemp_z int
scoreboard players operation sstemp_x int -= sstemp0 int
scoreboard players operation sstemp_x int /= 10000 int

scoreboard players operation sstempy int = sstemp_y int
scoreboard players operation sstemp_y int = sstemp_z int
scoreboard players operation sstemp_y int *= fvec_x int
scoreboard players operation sstemp0 int = fvec_z int
scoreboard players operation sstemp0 int *= sstempx int
scoreboard players operation sstemp_y int -= sstemp0 int
scoreboard players operation sstemp_y int /= 10000 int

scoreboard players operation sstemp_z int = sstempx int
scoreboard players operation sstemp_z int *= fvec_y int
scoreboard players operation sstempy int *= fvec_x int
scoreboard players operation sstemp_z int -= sstempy int
scoreboard players operation sstemp_z int /= 10000 int

# 叠加
scoreboard players operation vec_x int += sstemp_x int
scoreboard players operation vec_y int += sstemp_y int
scoreboard players operation vec_z int += sstemp_z int