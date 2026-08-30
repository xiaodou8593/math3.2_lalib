#math:rot/test/set
# math:rot/test/_new调用

execute store result score @s x run data get storage math:io input.position[0] 10000
execute store result score @s y run data get storage math:io input.position[1] 10000
execute store result score @s z run data get storage math:io input.position[2] 10000

execute store result score @s theta run data get storage math:io input.rotation[0] 10000
execute store result score @s phi run data get storage math:io input.rotation[1] 10000

execute store result score @s n run data get storage math:io input.size

execute store result score @s u run data get storage math:io input.select[0] 10000
execute store result score @s v run data get storage math:io input.select[1] 10000

execute store result score @s scale_u run data get storage math:io input.scale[0] 10000
execute store result score @s scale_v run data get storage math:io input.scale[1] 10000

execute store result score @s vec_x run data get storage math:io input.target[0] 10000
execute store result score @s vec_y run data get storage math:io input.target[1] 10000
execute store result score @s vec_z run data get storage math:io input.target[2] 10000