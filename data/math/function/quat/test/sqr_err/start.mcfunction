#math:quat/test/sqr_err/start
# 聊天栏调用

# 生成测试实例
tag @e[tag=result] remove result
summon item_display 10 -55 7 {item:{id:"minecraft:piston",count:1b}, interpolation_duration:1, Tags:["result","test"], CustomName:'"math_quat_test"', transformation:{right_rotation:[0.7071f,0.0f,0.0f,0.7071f], scale:[1.0f,1.0f,1.0f], left_rotation:[0.0f,0.0f,0.0f,1.0f], translation:[0.0f,0.0f,0.0f]}}
scoreboard players set quat_x int 0
scoreboard players set quat_y int 0
scoreboard players set quat_z int 0
scoreboard players set quat_w int 10000
function math:quat/_topose
scoreboard players set uvec_x int 0
scoreboard players set uvec_y int 0
scoreboard players set uvec_z int 10000
function math:quat/axis/_uvecto
scoreboard players set quat_phi int 0
execute as @e[tag=result,limit=1] run function math:quat/_store
scoreboard players set angular_x int 0
scoreboard players set angular_y int 0
scoreboard players set angular_z int 0

# 设置异步函数
execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "math:quat/test/sqr_err/main"
execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked

# 设置测试时间
scoreboard players set @e[tag=result,limit=1] killtime 100
scoreboard players set test int 0

execute at @e[tag=result,limit=1] run tp @e[tag=test_coord,limit=1] ~5 ~ ~-5
scoreboard players set -180 int -180