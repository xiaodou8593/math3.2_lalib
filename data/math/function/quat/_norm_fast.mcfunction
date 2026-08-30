#math:quat/_norm_fast
# 单位化四元数
# 需要保证四元数模长接近1
# 算法来源：ethanout

scoreboard players operation sstemp_s int = quat_x int
scoreboard players operation sstemp_s int *= sstemp_s int
scoreboard players operation sstemp int = quat_y int
scoreboard players operation sstemp int *= sstemp int
scoreboard players operation sstemp_s int += sstemp int
scoreboard players operation sstemp int = quat_z int
scoreboard players operation sstemp int *= sstemp int
scoreboard players operation sstemp_s int += sstemp int
scoreboard players operation sstemp int = quat_w int
scoreboard players operation sstemp int *= sstemp int
scoreboard players operation sstemp_s int += sstemp int

scoreboard players remove sstemp_s int 300000000
scoreboard players operation sstemp_s int /= -20000 int

scoreboard players operation quat_x int *= sstemp_s int
scoreboard players operation quat_y int *= sstemp_s int
scoreboard players operation quat_z int *= sstemp_s int
scoreboard players operation quat_w int *= sstemp_s int

scoreboard players operation quat_x int /= 10000 int
scoreboard players operation quat_y int /= 10000 int
scoreboard players operation quat_z int /= 10000 int
scoreboard players operation quat_w int /= 10000 int