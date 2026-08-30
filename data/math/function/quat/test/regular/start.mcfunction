#math:quat/test/regular/start
# 聊天栏调用

function math:test/_coords
function math:test/_next_coord

tag @e[tag=result] remove result
execute at @e[tag=test_coord,limit=1] run summon item_display ~ ~ ~ {item:{id:"minecraft:command_block",count:1b} ,Tags:["test", "quat_test", "result"], CustomName:'{"text":"quat_test"}'}
execute as @e[tag=result,limit=1] run function marker_control:data/_get

data modify storage marker_control:io result.tick_func set value "math:quat/test/regular/main"
data modify storage marker_control:io result.state set value 0

execute as @e[tag=result,limit=1] run function marker_control:data/_store

tag @e[tag=result,limit=1] add entity_ticked
scoreboard players set @e[tag=result,limit=1] killtime 20

scoreboard players set test int 0

scoreboard players set rand_seed int 859345