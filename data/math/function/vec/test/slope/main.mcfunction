#math:vec/test/slope/main
# math:vec/test/slope/start异步调用

# 渲染test_coords
#data modify storage math:io render_command set from storage math:class particle_commands.end_rod
#execute as @e[tag=math_marker,limit=1] run function math:test/_render_coords

# 测试流程控制
execute if score test_n int >= n int run return fail
scoreboard players set @s killtime 10

scoreboard players set loop int 125
execute if score loop int matches 1.. run function math:vec/test/slope/iter_loop