#math:quat/perf/inv_norm_base/loop

# 在这里写测试命令
scoreboard players operation quat_x int = perf_loop int
scoreboard players operation quat_x int %= 1000 int
execute store result score quat_y int store result score quat_z int store result score quat_w int run scoreboard players add quat_x int 4500

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function math:quat/perf/inv_norm_base/loop