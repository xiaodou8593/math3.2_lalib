#math:damp_vec/test/iter/s0
# math:damp_vec/test/iter/main调用

# 取完参数就结束测试程序
execute unless data storage marker_control:io result.args[0] store result storage marker_control:io result.state int 1 run return -1

# 取参数
execute store result score target_x int run data get storage marker_control:io result.target_point[0] 10000
execute store result score target_y int run data get storage marker_control:io result.target_point[1] 10000
execute store result score target_z int run data get storage marker_control:io result.target_point[2] 10000
execute store result score damp_x int run data get storage marker_control:io result.start_point[0] 10000
execute store result score damp_y int run data get storage marker_control:io result.start_point[1] 10000
execute store result score damp_z int run data get storage marker_control:io result.start_point[2] 10000
scoreboard players operation damp_x int -= target_x int
scoreboard players operation damp_y int -= target_y int
scoreboard players operation damp_z int -= target_z int

execute store result score damp_k int run data get storage marker_control:io result.args[0].k
execute store result score damp_b int run data get storage marker_control:io result.args[0].b
execute store result score damp_f int run data get storage marker_control:io result.args[0].f
execute store result score damp_v int run data get storage marker_control:io result.args[0].v_length
data remove storage marker_control:io result.args[0]
function math:damp_vec/_print_const

# 生成damp_bullet
scoreboard players set x int 0
scoreboard players set y int 0
scoreboard players set z int 0
scoreboard players operation r int = damp_v int
scoreboard players operation r int /= 10 int
scoreboard players set inp int 64
data modify storage math:io render_command set value "function math:damp_vec/test/iter/summon_bullet"
execute as @e[tag=math_marker,limit=1] run function math:sphere/_render_cnt

# 下一刻跳转到状态s1
data modify storage marker_control:io result.state set value 1