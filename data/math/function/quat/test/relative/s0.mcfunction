#math:quat/test/relative/s0
# math:quat/test/relative/main调用

# 生成平面参数
# 随机法向量
scoreboard players set min int -100000
scoreboard players set max int 100000
function math:_random
scoreboard players operation vec_x int = random int
function math:_random
scoreboard players operation vec_y int = random int
function math:_random
scoreboard players operation vec_z int = random int
execute as @e[tag=math_marker,limit=1] run function math:vec/_norm
scoreboard players operation nvec_x int = uvec_x int
scoreboard players operation nvec_y int = uvec_y int
scoreboard players operation nvec_z int = uvec_z int
# 平面中心点
function math:test/_coords
function math:test/_next_coord
scoreboard players operation sstempx int = nvec_x int
scoreboard players operation sstempy int = nvec_y int
scoreboard players operation sstempz int = nvec_z int
scoreboard players operation sstempx int /= 2 int
scoreboard players operation sstempy int /= 2 int
scoreboard players operation sstempz int /= 2 int
scoreboard players operation x int -= sstempx int
scoreboard players operation y int -= sstempy int
scoreboard players operation z int -= sstempz int
scoreboard players operation sstempx int /= 50 int
scoreboard players operation sstempy int /= 50 int
scoreboard players operation sstempz int /= 50 int
scoreboard players operation x int -= sstempx int
scoreboard players operation y int -= sstempy int
scoreboard players operation z int -= sstempz int
execute as @e[tag=quat_test,tag=math_plane,limit=1] run function math:plane/_store
execute as @e[tag=quat_test,tag=math_plane,limit=1] run function math:plane/_update_display

# 刷新测试存在时间
scoreboard players set @s killtime 100

# 直接跳转到状态1
data modify storage marker_control:io result.state set value 1

# 结束测试
execute if score test_cnt int = test_n int run scoreboard players set test int 1
scoreboard players add test_cnt int 1