#math:quat/test/regular/s0
# math:quat/test/regular/main调用

# 获取四元数姿态
scoreboard players set min int -100000
scoreboard players set max int 100000
function math:_random
scoreboard players operation quat_x int = random int
function math:_random
scoreboard players operation quat_y int = random int
function math:_random
scoreboard players operation quat_z int = random int
function math:_random
scoreboard players operation quat_w int = random int
execute as @e[tag=math_marker,limit=1] run function math:quat/_norm
#scoreboard players set quat_x int 4296
#scoreboard players set quat_y int 5861
#scoreboard players set quat_z int -6175
#scoreboard players set quat_w int -3048
function math:quat/_print_xyzw

# 同步实体姿态
execute store result storage math:io xyzw[0] float 0.0001 run scoreboard players get quat_x int
execute store result storage math:io xyzw[1] float 0.0001 run scoreboard players get quat_y int
execute store result storage math:io xyzw[2] float 0.0001 run scoreboard players get quat_z int
execute store result storage math:io xyzw[3] float 0.0001 run scoreboard players get quat_w int
data modify entity @s transformation.left_rotation set from storage math:io xyzw

# 刷新测试存在时间
scoreboard players set @s killtime 100

# 直接跳转到状态1
data modify storage marker_control:io result.state set value 1