#math:damp_vec/test/bullet/motion
# math:damp_vec/test/bullet/main调用

scoreboard players set n int 10
scoreboard players set loop int 0
execute if score loop int < n int run function math:damp_vec/test/bullet/loop

tp @s 0 0 0