#math:quat/test/relative/s1
# math:quat/test/relative/main调用

# 暂停状态
execute if score test int matches 2 run return run scoreboard players add @s killtime 1

# 自动切换到状态0
execute if score @s killtime matches 2 run tellraw @a "math:quat relative test refresh"
execute if score @s killtime matches 2 run data modify storage marker_control:io result.state set value 0

# 接收用户信号切换到状态-1
execute if score test int matches 1 run tellraw @a "math:quat relative test finish"
execute if score test int matches 1 run scoreboard players set @s killtime 10
execute if score test int matches 1 run data modify storage marker_control:io result.state set value -1
scoreboard players set test int 0

# 测试时间过滤
execute unless score @s killtime matches 75 run return fail

data modify entity @s interpolation_duration set value 1
data modify entity @s start_interpolation set value 0

execute as @e[tag=quat_test,tag=math_plane,limit=1] run function math:plane/_get
# 平面四元数
function math:iquat/_nvec_to

# 转换为相对四元数
function math:quat/_relative
function math:rquat/_to_quat

# 四元数规整化
function math:quat/_touvw
execute as @e[tag=math_marker,limit=1] run function math:quat/_regular
function math:rquat/_to_quat

# 转换为世界坐标系
function math:quat/_mult
function math:rquat/_to_quat

execute store result storage math:io xyzw[0] float 0.0001 run scoreboard players get quat_x int
execute store result storage math:io xyzw[1] float 0.0001 run scoreboard players get quat_y int
execute store result storage math:io xyzw[2] float 0.0001 run scoreboard players get quat_z int
execute store result storage math:io xyzw[3] float 0.0001 run scoreboard players get quat_w int
data modify entity @s transformation.left_rotation set from storage math:io xyzw