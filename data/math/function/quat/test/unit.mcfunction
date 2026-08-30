#math:quat/test/unit
# 聊天栏调用

tellraw @a "---math:quat unit test---"

scoreboard players set quat_x int 8000
scoreboard players set quat_y int 8000
scoreboard players set quat_z int 0
scoreboard players set quat_w int 0

function math:quat/_print_xyzw
function math:quat/_unit
function math:quat/_print_xyzw