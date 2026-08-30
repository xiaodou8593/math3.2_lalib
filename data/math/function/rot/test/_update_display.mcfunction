#math:rot/test/_update_display
# 更新实例的显示状态
# 以实例为执行者

function math:rot/test/_get
execute as @e[tag=math_marker,limit=1] run function math:rot/_touvw

scoreboard players operation tempid int = @s math_test_id
scoreboard players operation temp_u int = @s u
scoreboard players operation temp_v int = @s v
scoreboard players set w int 0
execute as @e[tag=math_rot_test_plane] if score @s int = tempid int run function math:rot/test/update_operation
scoreboard players operation @s u = temp_u int
scoreboard players operation @s v = temp_v int