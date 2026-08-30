#math:rot/test/summon_loop
# math:rot/test/set_operations调用

scoreboard players remove loop int 1
scoreboard players operation u int = loop int
scoreboard players operation v int = loop int
scoreboard players operation u int /= sstemp_mod int
scoreboard players operation v int %= sstemp_mod int
scoreboard players operation u int -= n int
scoreboard players operation v int -= n int
scoreboard players operation u int *= math_rot_test_k int
scoreboard players operation v int *= math_rot_test_k int
function math:uvw/_topos
data modify storage math:io input.center set from entity @s Pos
function math:visual_plane/_new
scoreboard players operation @e[tag=result,limit=1] u = u int
scoreboard players operation @e[tag=result,limit=1] v = v int
scoreboard players operation @e[tag=result,limit=1] int = #id math_test_id
tag @e[tag=result,limit=1] add math_rot_test_plane

execute if score loop int matches 1.. run function math:rot/test/summon_loop