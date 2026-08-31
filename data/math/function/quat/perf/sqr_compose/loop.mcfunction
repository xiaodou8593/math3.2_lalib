#math:quat/perf/sqr_compose/loop

# 在这里写测试命令
scoreboard players operation quat_x int = perf_loop int
scoreboard players operation quat_x int %= 1000 int
execute store result score quat_y int store result score quat_z int store result score quat_w int run scoreboard players add quat_x int 9500
execute store result score sstemp_s int run compute default math:quat/_sqr_compose

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function math:quat/perf/sqr_compose/loop