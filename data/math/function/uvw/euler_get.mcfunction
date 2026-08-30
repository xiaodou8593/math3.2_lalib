#math:uvw/euler_get
# math:uvw/_to_euler调用

rotate @s ~ ~
data modify storage math:io rotation set from entity @s Rotation
execute store result score phi int run data get storage math:io rotation[1] 10000
execute store result score theta int run data get storage math:io rotation[0] -10000

tp @s ^1.0 ^ ^
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_u int run data get storage math:io xyz[0] 10000
scoreboard players operation sstemp_u int *= ivec_x int
execute store result score sstemp_0 int run data get storage math:io xyz[1] 10000
scoreboard players operation sstemp_0 int *= ivec_y int
scoreboard players operation sstemp_u int += sstemp_0 int
execute store result score sstemp_0 int run data get storage math:io xyz[2] 10000
scoreboard players operation sstemp_0 int *= ivec_z int
scoreboard players operation sstemp_u int += sstemp_0 int

tp @s ^ ^1.0 ^
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_v int run data get storage math:io xyz[0] 10000
scoreboard players operation sstemp_v int *= ivec_x int
execute store result score sstemp_0 int run data get storage math:io xyz[1] 10000
scoreboard players operation sstemp_0 int *= ivec_y int
scoreboard players operation sstemp_v int += sstemp_0 int
execute store result score sstemp_0 int run data get storage math:io xyz[2] 10000
scoreboard players operation sstemp_0 int *= ivec_z int
execute store result storage math:io xyz[0] double 0.00000001 run scoreboard players operation sstemp_v int += sstemp_0 int
execute store result storage math:io xyz[2] double 0.00000001 run scoreboard players get sstemp_u int

data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ~ ~ ~ ~ ~
execute store result score psi int run data get entity @s Rotation[0] -10000