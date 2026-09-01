#math:quat/_norm_np
# 四元数单位化，np算法
# 四元数模长区间[0.5,1.5]
# 算法作者: Ethanout
# 输入_this{<quat_x,int,1w>, <quat_y,int,1w>, <quat_z,int,1w>, <quat_w,int,1w>}

execute store result score sstemp_s int run compute default math:quat/_sqr 100000000
execute store result score sstemp_x int run compute default math:quat/_norm_r 10000
scoreboard players operation quat_x int *= sstemp_x int
scoreboard players operation quat_y int *= sstemp_y int
scoreboard players operation quat_z int *= sstemp_z int
scoreboard players operation quat_w int *= sstemp_w int
scoreboard players operation quat_x int /= 10000 int
scoreboard players operation quat_y int /= 10000 int
scoreboard players operation quat_z int /= 10000 int
scoreboard players operation quat_w int /= 10000 int