#math:damp_vec/test/iter/main
# math:damp_vec/test/iter/start异步调用

function marker_control:data/_get

# 状态选择
execute store result score temp_state int run data get storage marker_control:io result.state
execute if score temp_state int matches -1 run return fail
execute if score temp_state int matches 0 run function math:damp_vec/test/iter/s0
execute if score temp_state int matches 1 run function math:damp_vec/test/iter/s1

function marker_control:data/_store

scoreboard players set @s killtime 20