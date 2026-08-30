#math:rot/test/main
# math:rot/test/start异步调用

function math:rot/test/_get
execute as @e[tag=math_marker,limit=1] run function math:rot/_local_facing
function math:rot/test/_store
function math:rot/test/_update_display

# 渲染目标
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation x int += vec_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation y int += vec_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation z int += vec_z int
data modify entity @s Pos set from storage math:io xyz
execute at @s run particle minecraft:flame ~ ~ ~ 0.0 0.0 0.0 0.01 5 force @a

# 渲染激光
scoreboard players operation x int = @s x
scoreboard players operation y int = @s y
scoreboard players operation z int = @s z
scoreboard players operation u int = @s u
scoreboard players operation v int = @s v
scoreboard players set w int 0
function math:uvw/_tovec
scoreboard players operation x int = vec_x int
scoreboard players operation y int = vec_y int
scoreboard players operation z int = vec_z int
scoreboard players operation line_dx int = kvec_x int
scoreboard players operation line_dy int = kvec_y int
scoreboard players operation line_dz int = kvec_z int
scoreboard players operation line_dx int *= 20 int
scoreboard players operation line_dy int *= 20 int
scoreboard players operation line_dz int *= 20 int
data modify storage math:io render_command set from storage math:class particle_commands.red_dust
scoreboard players set render_density int 30
execute as @e[tag=math_marker,limit=1] run function math:line/_render

# 变换uv
scoreboard players operation temp_mod int = @s killtime
scoreboard players operation temp_mod int %= 20 int
execute unless score temp_mod int matches 0 run return fail

function marker_control:data/_get
execute unless data storage marker_control:io result.list_uvs[0] run return fail
execute store result score @s u run data get storage marker_control:io result.list_uvs[0][0]
execute store result score @s v run data get storage marker_control:io result.list_uvs[0][1]
scoreboard players operation @s u *= math_rot_test_k int
scoreboard players operation @s v *= math_rot_test_k int
data remove storage marker_control:io result.list_uvs[0]
function marker_control:data/_store