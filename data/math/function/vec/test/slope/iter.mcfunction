#math:vec/test/slope/iter
# math:vec/test/slope/main调用

execute store result score vec_x int run data get storage math:io test_coords[0][0] 1500
execute store result score vec_y int run data get storage math:io test_coords[0][1] 1500
execute store result score vec_z int run data get storage math:io test_coords[0][2] 1500
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get vec_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get vec_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get vec_z int
data modify entity @s Pos set from storage math:io xyz

function math:vec/_sqr_slope
scoreboard players set min int 0
scoreboard players set max int 3000
execute if score res int matches -1 run scoreboard players operation res int = max int
scoreboard players operation inp int = res int
function math:rgb/_num_map
function math:rgb/_lift
scoreboard players set a int 125
scoreboard players set inp int 1000
execute at @s summon text_display run function math:rgba/_render_debug
#execute at @s run function math:rgb/_render_debug
#execute at @s run function math:rgb/_gen_command
#data modify storage math:io test_commands append from storage math:io result

#function math:vec/_unit_xz
#function math:uvec/_tovec
#execute if score vec_y int matches 1.. run scoreboard players set vec_y int 7071
#execute if score vec_y int matches ..0 run scoreboard players set vec_y int -7071
##scoreboard players operation vec_y int > -7071 int
##scoreboard players operation vec_y int < 7071 int
#scoreboard players operation vec_x int *= res int
#scoreboard players operation vec_y int *= res int
#scoreboard players operation vec_z int *= res int
#scoreboard players operation vec_x int /= 1000 int
#scoreboard players operation vec_y int /= 1000 int
#scoreboard players operation vec_z int /= 1000 int

execute store result storage math:io test_coords[0][0] double 0.0001 run scoreboard players get vec_x int
execute store result storage math:io test_coords[0][1] double 0.0001 run scoreboard players get vec_y int
execute store result storage math:io test_coords[0][2] double 0.0001 run scoreboard players get vec_z int

scoreboard players add test_n int 1
data modify storage math:io test_coords append from storage math:io test_coords[0]
data remove storage math:io test_coords[0]