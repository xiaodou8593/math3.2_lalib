#math:rquat/_dist_sqr
# 计算与quat的欧几里得距离平方2-2*cos(theta/2)
# 输入quat{<quat_x,int,1w>, <quat_y,int,1w>, <quat_z,int,1w>, <quat_w,int,1w>}
# 输出<res,int,1w>

scoreboard players operation res int = rquat_x int
scoreboard players operation res int -= quat_x int
scoreboard players operation res int *= res int

scoreboard players operation sstemp int = rquat_y int
scoreboard players operation sstemp int -= quat_y int
scoreboard players operation sstemp int *= sstemp int
scoreboard players operation res int += sstemp int

scoreboard players operation sstemp int = rquat_z int
scoreboard players operation sstemp int -= quat_z int
scoreboard players operation sstemp int *= sstemp int
scoreboard players operation res int += sstemp int

scoreboard players operation sstemp int = rquat_w int
scoreboard players operation sstemp int -= quat_w int
scoreboard players operation sstemp int *= sstemp int
scoreboard players operation res int += sstemp int

scoreboard players operation res int /= 10000 int