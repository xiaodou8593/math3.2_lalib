#math:vec/_cross_fvec
# 计算向量叉乘
# 输入fvec{<fvec_x,int,1w>, <fvec_y,int,1w>, <fvec_z,int,1w>}

scoreboard players operation sstempx int = vec_x int
scoreboard players operation vec_x int = vec_y int
scoreboard players operation vec_x int *= fvec_z int
scoreboard players operation sstemp0 int = fvec_y int
scoreboard players operation sstemp0 int *= vec_z int
scoreboard players operation vec_x int -= sstemp0 int
scoreboard players operation vec_x int /= 10000 int

scoreboard players operation sstempy int = vec_y int
scoreboard players operation vec_y int = vec_z int
scoreboard players operation vec_y int *= fvec_x int
scoreboard players operation sstemp0 int = fvec_z int
scoreboard players operation sstemp0 int *= sstempx int
scoreboard players operation vec_y int -= sstemp0 int
scoreboard players operation vec_y int /= 10000 int

scoreboard players operation vec_z int = sstempx int
scoreboard players operation vec_z int *= fvec_y int
scoreboard players operation sstempy int *= fvec_x int
scoreboard players operation vec_z int -= sstempy int
scoreboard players operation vec_z int /= 10000 int