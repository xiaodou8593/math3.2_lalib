#math:rquat/_touvec
# 旋转轴转换到单位向量uvec
# 输出uvec{<uvec_x,int,1w>,<uvec_y,int,1w>,<uvec_z,int,1w>}
# 输出旋转误差(1-cos(theta))/2到<res,int,1w>
# 需要传入世界实体

scoreboard players operation vec_x int = rquat_x int
scoreboard players operation vec_y int = rquat_y int
scoreboard players operation vec_z int = rquat_z int
function math:vec/_unit
scoreboard players operation res int *= res int
scoreboard players operation res int /= 100 int