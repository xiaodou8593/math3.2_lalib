#math:vec/_norm_fast
# 单位化三维向量
# 需要保证三维向量模长接近1

scoreboard players operation sstemp_s int = vec_x int
scoreboard players operation sstemp_s int *= sstemp_s int
scoreboard players operation sstemp int = vec_y int
scoreboard players operation sstemp int *= sstemp int
scoreboard players operation sstemp_s int += sstemp int
scoreboard players operation sstemp int = vec_z int
scoreboard players operation sstemp int *= sstemp int
scoreboard players operation sstemp_s int += sstemp int

scoreboard players remove sstemp_s int 300000000
scoreboard players operation sstemp_s int /= -20000 int

scoreboard players operation vec_x int *= sstemp_s int
scoreboard players operation vec_y int *= sstemp_s int
scoreboard players operation vec_z int *= sstemp_s int

scoreboard players operation vec_x int /= 10000 int
scoreboard players operation vec_y int /= 10000 int
scoreboard players operation vec_z int /= 10000 int