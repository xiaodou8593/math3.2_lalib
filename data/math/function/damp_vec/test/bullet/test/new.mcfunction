#math:damp_vec/test/bullet/test/new
# 聊天栏调用

function math:test/_coords
scoreboard players operation target_x int = x int
scoreboard players operation target_y int = y int
scoreboard players operation target_z int = z int

scoreboard players set damp_k int 98
scoreboard players set damp_b int 100
scoreboard players set damp_f int 100

scoreboard players set damp_x int -50000
scoreboard players set damp_y int 0
scoreboard players set damp_z int 0

scoreboard players set damp_vx int -500
scoreboard players set damp_vy int 0
scoreboard players set damp_vz int 5000

function math:damp_vec/test/bullet/_model
data modify storage math:io input set from storage math:io result
function math:damp_vec/test/bullet/_new

execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "math:damp_vec/test/bullet/main"
tag @e[tag=result,limit=1] add entity_ticked
execute as @e[tag=result,limit=1] run function marker_control:data/_store