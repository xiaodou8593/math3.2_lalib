#math:vec/perf/np_cross_fvec/loop

# 在这里写测试命令
scoreboard players operation vec_x int = perf_loop int
execute store result score vec_y int store result score vec_z int \
	store result score fvec_x int store result score fvec_y int \
	store result score fvec_z int run scoreboard players operation vec_x int %= 10000 int
scoreboard players add vec_y int 1
scoreboard players add vec_z int 2
scoreboard players add fvec_x int 3
scoreboard players add fvec_y int 4
scoreboard players add fvec_z int 5
execute store result score vec_x int run compute default math:vec/_cross_fvec_x 10000
execute store result score vec_y int run compute default math:vec/_cross_fvec_y 10000
execute store result score vec_z int run compute default math:vec/_cross_fvec_z 10000

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function math:vec/perf/np_cross_fvec/loop