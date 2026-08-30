#math:uvw/get_ijk
# math:uvw/_anchor_to调用

tp @s ^1.0 ^ ^
data modify storage math:io xyz set from entity @s Pos
execute store result score ivec_x int run data get storage math:io xyz[0] 10000
scoreboard players set ivec_y int 0
execute store result score ivec_z int run data get storage math:io xyz[2] 10000

tp @s ^ ^1.0 ^
data modify storage math:io xyz set from entity @s Pos
execute store result score jvec_x int run data get storage math:io xyz[0] 10000
execute store result score jvec_y int run data get storage math:io xyz[1] 10000
execute store result score jvec_z int run data get storage math:io xyz[2] 10000

tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score kvec_x int run data get storage math:io xyz[0] 10000
execute store result score kvec_y int run data get storage math:io xyz[1] 10000
execute store result score kvec_z int run data get storage math:io xyz[2] 10000