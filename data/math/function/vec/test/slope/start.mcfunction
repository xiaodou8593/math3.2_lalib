#math:vec/test/slope/start
# 聊天栏调用

# 生成测试空间
#function math:test/_rand_cube
data modify storage math:io test_coords set from storage math:io cache_coords
execute store result score n int run data get storage math:io test_coords
scoreboard players set test_n int 0

# 生成测试实例
tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["result","math_vec_test"],CustomName:'"math_vec_test"'}

# 设置回调函数
execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "math:vec/test/slope/main"
data modify storage marker_control:io result.del_func set value "math:vec/test/slope/end"
execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
tag @e[tag=result,limit=1] add entity_todel

data modify storage math:io test_commands set value []