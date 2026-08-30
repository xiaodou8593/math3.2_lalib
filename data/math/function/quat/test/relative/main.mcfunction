#math:quat/test/relative/main
# math:quat/test/relative/start异步调用

function marker_control:data/_get
execute store result score temp_state int run data get storage marker_control:io result.state
function math:quat/_get

execute if score temp_state int matches -1 run return fail
execute if score temp_state int matches 0 run function math:quat/test/relative/s0
execute if score temp_state int matches 1 run function math:quat/test/relative/s1

function math:quat/_store
function marker_control:data/_store

function math:quat/_touvw
data modify storage math:io xyz set from entity @s Pos
execute store result score x int run data get storage math:io xyz[0] 10000
execute store result score y int run data get storage math:io xyz[1] 10000
execute store result score z int run data get storage math:io xyz[2] 10000
scoreboard players set vec_n int 200
scoreboard players set vec_scale int 2
execute as @e[tag=math_marker,limit=1] run function math:uvw/_render_debug