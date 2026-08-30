#math:quat/_mult
# 用iquat左乘四元数姿态
# 输入iquat{<iquat_x,int,1w>, <iquat_y,int,1w>, <iquat_z,int,1w>, <iquat_w,int,1w>}
# 输出rquat{<rquat_x,int,1w>, <rquat_y,int,1w>, <rquat_z,int,1w>, <rquat_w,int,1w>}

scoreboard players operation rquat_x int = iquat_w int
scoreboard players operation rquat_x int *= quat_x int
scoreboard players operation sstempr int = iquat_z int
scoreboard players operation sstempr int *= quat_y int
scoreboard players operation rquat_x int -= sstempr int
scoreboard players operation sstempr int = iquat_x int
scoreboard players operation sstempr int *= quat_w int
scoreboard players operation rquat_x int += sstempr int
scoreboard players operation sstempr int = iquat_y int
scoreboard players operation sstempr int *= quat_z int
scoreboard players operation rquat_x int += sstempr int
scoreboard players operation rquat_x int /= 10000 int

scoreboard players operation rquat_y int = iquat_w int
scoreboard players operation rquat_y int *= quat_y int
scoreboard players operation sstempr int = iquat_x int
scoreboard players operation sstempr int *= quat_z int
scoreboard players operation rquat_y int -= sstempr int
scoreboard players operation sstempr int = iquat_y int
scoreboard players operation sstempr int *= quat_w int
scoreboard players operation rquat_y int += sstempr int
scoreboard players operation sstempr int = iquat_z int
scoreboard players operation sstempr int *= quat_x int
scoreboard players operation rquat_y int += sstempr int
scoreboard players operation rquat_y int /= 10000 int

scoreboard players operation rquat_z int = iquat_w int
scoreboard players operation rquat_z int *= quat_z int
scoreboard players operation sstempr int = iquat_x int
scoreboard players operation sstempr int *= quat_y int
scoreboard players operation rquat_z int += sstempr int
scoreboard players operation sstempr int = iquat_y int
scoreboard players operation sstempr int *= quat_x int
scoreboard players operation rquat_z int -= sstempr int
scoreboard players operation sstempr int = iquat_z int
scoreboard players operation sstempr int *= quat_w int
scoreboard players operation rquat_z int += sstempr int
scoreboard players operation rquat_z int /= 10000 int

scoreboard players operation rquat_w int = iquat_w int
scoreboard players operation rquat_w int *= quat_w int
scoreboard players operation sstempr int = iquat_x int
scoreboard players operation sstempr int *= quat_x int
scoreboard players operation rquat_w int -= sstempr int
scoreboard players operation sstempr int = iquat_y int
scoreboard players operation sstempr int *= quat_y int
scoreboard players operation rquat_w int -= sstempr int
scoreboard players operation sstempr int = iquat_z int
scoreboard players operation sstempr int *= quat_z int
scoreboard players operation rquat_w int -= sstempr int
scoreboard players operation rquat_w int /= 10000 int