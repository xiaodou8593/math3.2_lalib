#math:iquat/test/nvec_to/main_debug
# math:iquat/test/nvec_to/start异步调用

function marker_control:data/_get
execute store result score temp_state int run data get storage marker_control:io result.state
execute if score temp_state int matches -1 run return fail

scoreboard players set @s killtime 10

# 接收用户信号切换到状态-1
execute if score test int matches 1 run tellraw @a "math:iquat nvec_to test finish"
execute if score test int matches 1 run data modify storage marker_control:io result.state set value -1
scoreboard players set test int 0

execute store result score temp_theta int run data get storage marker_control:io result.theta
execute unless score temp_theta int = theta int as @e[tag=math_marker,limit=1] run function math:iquat/test/nvec_to/update_theta

function marker_control:data/_store

execute as @e[tag=iquat_test,tag=math_plane,limit=1] run data modify storage math:io xyzw set from entity @s transformation.left_rotation
execute store result score quat_x int run data get storage math:io xyzw[0] 10000
execute store result score quat_y int run data get storage math:io xyzw[1] 10000
execute store result score quat_z int run data get storage math:io xyzw[2] 10000
execute store result score quat_w int run data get storage math:io xyzw[3] 10000
function math:quat/_touvw
data modify storage math:io xyz set from entity @e[tag=iquat_test,tag=math_plane,limit=1] Pos
execute store result score x int run data get storage math:io xyz[0] 10000
execute store result score y int run data get storage math:io xyz[1] 10000
execute store result score z int run data get storage math:io xyz[2] 10000
scoreboard players set vec_n int 200
scoreboard players set vec_scale int 2
execute as @e[tag=math_marker,limit=1] run function math:uvw/_render_debug