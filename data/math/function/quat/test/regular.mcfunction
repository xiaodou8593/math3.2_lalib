#math:quat/test/regular
# 聊天栏调用

tellraw @a "---math:quat regular test---"

scoreboard players set quat_x int 4296
scoreboard players set quat_y int 5861
scoreboard players set quat_z int -6175
scoreboard players set quat_w int -3048

function math:quat/_touvw
tellraw @a ["ivec_y: ", {"score":{"name":"ivec_y","objective":"int"}}]
tellraw @a ["kvec_y: ", {"score":{"name":"kvec_y","objective":"int"}}]

function math:quat/_print_xyzw
execute as @e[tag=math_marker,limit=1] run function math:quat/_regular
function math:rquat/_to_quat
function math:quat/_print_xyzw