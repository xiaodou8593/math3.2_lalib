#math:uvec/get_ij
# math:uvec/_rot_fvec调用

tp @s ^1.0 ^ ^
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_ix int run data get storage math:io xyz[0] 10000
execute store result score sstemp_iy int run data get storage math:io xyz[1] 10000
execute store result score sstemp_iz int run data get storage math:io xyz[2] 10000

tp @s ^ ^1.0 ^
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_jx int run data get storage math:io xyz[0] 10000
execute store result score sstemp_jy int run data get storage math:io xyz[1] 10000
execute store result score sstemp_jz int run data get storage math:io xyz[2] 10000