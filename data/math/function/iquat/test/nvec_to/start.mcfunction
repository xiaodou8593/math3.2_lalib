#math:iquat/test/nvec_to/start
# 聊天栏调用

function math:test/_coords
function math:test/_next_coord

tag @e[tag=result] remove result
execute at @e[tag=test_coord,limit=1] run summon item_display ~ ~ ~ {item:{id:"minecraft:command_block",count:1b} ,Tags:["test", "iquat_test", "result"], CustomName:'{"text":"iquat_test"}'}
#data modify entity @e[tag=result,limit=1] item.id set value "minecraft:air"
execute as @e[tag=result,limit=1] run function marker_control:data/_get

data modify storage marker_control:io result.tick_func set value "math:iquat/test/nvec_to/main"
data modify storage marker_control:io result.del_func set value "math:iquat/test/nvec_to/end"
data modify storage marker_control:io result.state set value 0
data modify storage marker_control:io result.theta set value 0
scoreboard players set theta int 0

execute as @e[tag=result,limit=1] run function marker_control:data/_store

tag @e[tag=result,limit=1] add entity_ticked
tag @e[tag=result,limit=1] add entity_todel
scoreboard players set @e[tag=result,limit=1] killtime 20

scoreboard players set quat_x int 0
scoreboard players set quat_y int 0
scoreboard players set quat_z int 0
scoreboard players set quat_w int 10000
execute as @e[tag=result,limit=1] run function math:quat/_store

scoreboard players set nvec_x int 0
scoreboard players set nvec_y int 10000
scoreboard players set nvec_z int 0
scoreboard players remove y int 5000
function math:plane/_gen
tag @e[tag=result,limit=1] add test
tag @e[tag=result,limit=1] add iquat_test

scoreboard players set test int 0
scoreboard players set test_n int 10
scoreboard players set test_cnt int 0

scoreboard players set rand_seed int 859345