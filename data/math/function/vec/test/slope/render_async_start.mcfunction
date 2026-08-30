#math:vec/test/slope/start
# 聊天栏调用

# 计算测试次数
execute store result score n int run data get storage math:io test_commands
scoreboard players operation n int *= 2 int
scoreboard players set test_n int 0

# 生成测试实例
tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["result","math_vec_test"],CustomName:'"math_vec_test"'}

# 设置回调函数
execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "math:vec/test/slope/render_async_main"
execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked

scoreboard players set @e[tag=result,limit=1] killtime 10