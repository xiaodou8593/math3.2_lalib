#math:quat/test/half_a/start
# 聊天栏调用

tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["math_test","result"],CustomName:'"math_test"'}
execute as @e[tag=result,limit=1] run function marker_control:data/_get

data modify storage marker_control:io result.tick_func set value "math:quat/test/half_a/main"
data modify storage marker_control:io result.del_func set value "math:quat/test/half_a/end"

execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
tag @e[tag=result,limit=1] add entity_todel

scoreboard players set test int 0
scoreboard players set test_n int 10000

scoreboard players set @e[tag=result,limit=1] killtime 360