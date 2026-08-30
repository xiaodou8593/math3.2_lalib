#math:quat/test/sqr_err/calc
# math:quat/test/sqr_err/main调用

# 获取目标姿态
execute at @s facing entity @p eyes as @e[tag=math_marker,limit=1] run function math:iquat/_facing_to

# 计算转轴和角度差
scoreboard players operation quat_x int *= -1 int
scoreboard players operation quat_y int *= -1 int
scoreboard players operation quat_z int *= -1 int
function math:quat/_mult
scoreboard players operation quat_x int *= -1 int
scoreboard players operation quat_y int *= -1 int
scoreboard players operation quat_z int *= -1 int
execute if score rquat_w int matches ..-1 run function math:rquat/_neg
execute as @e[tag=math_marker,limit=1] run function math:rquat/_touvec
scoreboard players operation res int *= -2 int
scoreboard players add res int 10000
scoreboard players operation cos int = res int
execute as @e[tag=math_marker,limit=1] run function math:_arccos
scoreboard players operation damp_x int = theta int
scoreboard players operation damp_x int *= -1 int

# 计算当前角速度沿转轴分量
scoreboard players operation damp_v int = angular_x int
scoreboard players operation damp_v int *= uvec_x int
scoreboard players operation temp int = angular_y int
scoreboard players operation temp int *= uvec_y int
scoreboard players operation damp_v int += temp int
scoreboard players operation temp int = angular_z int
scoreboard players operation temp int *= uvec_z int
scoreboard players operation damp_v int += temp int
scoreboard players operation damp_v int /= 10000 int

# 阻尼控制参数
scoreboard players set damp_k int 95
scoreboard players set damp_b int 100
scoreboard players set damp_f int 800

# 阻尼迭代
function math:damp/_iter

# 更新角速度
scoreboard players operation angular_x int = uvec_x int
scoreboard players operation angular_y int = uvec_y int
scoreboard players operation angular_z int = uvec_z int
scoreboard players operation angular_x int *= damp_v int
scoreboard players operation angular_y int *= damp_v int
scoreboard players operation angular_z int *= damp_v int
scoreboard players operation angular_x int /= 10000 int
scoreboard players operation angular_y int /= 10000 int
scoreboard players operation angular_z int /= 10000 int