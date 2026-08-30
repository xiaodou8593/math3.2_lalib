#math:quat/test/half_a/loop
# math:quat/test/half_a/main调用

execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get test int
execute at @s positioned 0.0 0.0 1.0 positioned ^ ^ ^1.0 facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^-1.0
scoreboard players add test int 1

scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:quat/test/half_a/loop