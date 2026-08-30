#math:damp_vec/test/iter/summon_bullet
# math:damp_vec/test/iter/s0异步调用

tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score damp_vx int run data get storage math:io xyz[0] 10000
execute store result score damp_vy int run data get storage math:io xyz[1] 10000
execute store result score damp_vz int run data get storage math:io xyz[2] 10000

function math:damp_vec/test/bullet/_model
data modify storage math:io input set from storage math:io result
function math:damp_vec/test/bullet/_new
tag @e[tag=result,limit=1] add test