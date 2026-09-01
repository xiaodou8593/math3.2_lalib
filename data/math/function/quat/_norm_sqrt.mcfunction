#math:quat/_norm_sqrt
# 把临时四元数单位化
# 输入_this{<quat_x,int,1w>, <quat_y,int,1w>, <quat_z,int,1w>, <quat_w,int,1w>}

scoreboard players operation inp int = quat_x int
scoreboard players operation inp int *= inp int
scoreboard players operation res int = quat_y int
scoreboard players operation res int *= res int
scoreboard players operation inp int += res int
scoreboard players operation res int = quat_z int
scoreboard players operation res int *= res int
scoreboard players operation inp int += res int
scoreboard players operation res int = quat_w int
scoreboard players operation res int *= res int
scoreboard players operation inp int += res int
function math:_sqrt
scoreboard players operation quat_x int *= 10000 int
scoreboard players operation quat_x int /= res int
scoreboard players operation quat_y int *= 10000 int
scoreboard players operation quat_y int /= res int
scoreboard players operation quat_z int *= 10000 int
scoreboard players operation quat_z int /= res int
scoreboard players operation quat_w int *= 10000 int
scoreboard players operation quat_w int /= res int