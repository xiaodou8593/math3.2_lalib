#math:quat/test/relative
# 聊天栏调用

tellraw @a "---math:quat relative test---"

scoreboard players set nvec_x int 0
scoreboard players set nvec_y int 0
scoreboard players set nvec_z int 10000
function math:iquat/_nvec_to

scoreboard players set quat_x int 0
scoreboard players set quat_y int 0
scoreboard players set quat_z int 7071
scoreboard players set quat_w int 7071

function math:quat/_print_xyzw

function math:quat/_relative
function math:rquat/_to_quat
function math:quat/_print_xyzw