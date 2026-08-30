#math:quat/test/sqr_err/main
# math:quat/test/sqr_err/start异步调用

# 提前返回
execute if score test int matches 1 run return fail
# 刷新存在时间
scoreboard players set @s killtime 10

function math:quat/_get

# 四元数迭代
execute as @e[tag=math_marker,limit=1] run function math:quat/_xyzw

# 同步四元数姿态
execute store result storage math:io xyzw[0] float 0.0001 run scoreboard players get quat_x int
execute store result storage math:io xyzw[1] float 0.0001 run scoreboard players get quat_y int
execute store result storage math:io xyzw[2] float 0.0001 run scoreboard players get quat_z int
execute store result storage math:io xyzw[3] float 0.0001 run scoreboard players get quat_w int
# 成功修改姿态才会播放插值动画
data modify storage math:io temp set from entity @s transformation.left_rotation
data modify entity @s transformation.left_rotation set from storage math:io xyzw
execute store success score sres int run data modify storage math:io temp set from entity @s transformation.left_rotation
execute if score sres int matches 1 run data modify entity @s start_interpolation set value 0

function math:quat/test/sqr_err/calc

# 把当前四元数姿态设置为旋转的初始姿态
execute as 0-0-0-0-0 run function math:quat/_norm
function math:quat/_topose

# 计算角速度的单位向量和模长
scoreboard players operation vec_x int = angular_x int
scoreboard players operation vec_y int = angular_y int
scoreboard players operation vec_z int = angular_z int
function math:vec/_unit_sqrt
scoreboard players operation quat_phi int = res int
scoreboard players operation quat_phi int *= 10 int

# 用单位向量指定四元数旋转轴
function math:quat/axis/_uvecto

function math:quat/_store