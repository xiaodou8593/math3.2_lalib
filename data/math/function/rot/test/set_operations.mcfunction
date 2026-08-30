#math:rot/test/set_operations
# math:rot/test/_new调用

# 获取编号
execute store result score @s math_test_id run scoreboard players add #id math_test_id 1

# 生成子平面
function math:rot/test/_get
execute as @e[tag=math_marker,limit=1] run function math:rot/_touvw
scoreboard players set w int 0
data modify storage math:io input set from storage math:class visual_plane_plate
data modify storage math:io input.rgba set value [0,0,125,125]
execute store result storage math:io input.scale[0] float 0.0001 run scoreboard players get scale_u int
execute store result storage math:io input.scale[1] float 0.0001 run scoreboard players get scale_v int
execute store result storage math:io input.norm_vec[0] double 0.0001 run scoreboard players get kvec_x int
execute store result storage math:io input.norm_vec[1] double 0.0001 run scoreboard players get kvec_y int
execute store result storage math:io input.norm_vec[2] double 0.0001 run scoreboard players get kvec_z int
scoreboard players operation loop int = n int
scoreboard players operation loop int *= 2 int
execute store result score sstemp_mod int run scoreboard players add loop int 1
scoreboard players operation loop int *= loop int
execute if score loop int matches 1.. as @e[tag=math_marker,limit=1] run function math:rot/test/summon_loop

tag @e[tag=result] remove result
tag @s add result