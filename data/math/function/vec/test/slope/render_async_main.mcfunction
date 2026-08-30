#math:vec/test/slope/render_async_main
# math:vec/test/slope/render_async_start异步调用

# 测试流程控制
execute if score @s killtime matches 8.. run return fail
execute if score test_n int >= n int run return fail
scoreboard players set @s killtime 10

# 渲染命令
scoreboard players set inp int 625
execute positioned 0.0 0.0 0.0 run function math:test/_iter_commands
scoreboard players operation test_n int += inp int