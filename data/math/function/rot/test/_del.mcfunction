#math:rot/test/_del
# 销毁测试实例
# 传入实例为执行者

scoreboard players operation tempid int = @s math_test_id
execute as @e[tag=math_rot_test_plane] if score @s int = tempid int run function math:visual_plane/_del
kill @s