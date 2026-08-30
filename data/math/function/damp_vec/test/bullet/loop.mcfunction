#math:damp_vec/test/bullet/loop
# math:damp_vec/test/bullet/main调用

scoreboard players operation sstemp_delta int = damp_vx int
scoreboard players operation sstemp_delta int *= loop int
scoreboard players operation sstemp_delta int /= n int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation sstemp_delta int += sstemp_x int

scoreboard players operation sstemp_delta int = damp_vy int
scoreboard players operation sstemp_delta int *= loop int
scoreboard players operation sstemp_delta int /= n int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation sstemp_delta int += sstemp_y int

scoreboard players operation sstemp_delta int = damp_vz int
scoreboard players operation sstemp_delta int *= loop int
scoreboard players operation sstemp_delta int /= n int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation sstemp_delta int += sstemp_z int

data modify entity @s Pos set from storage math:io xyz
execute at @s run particle end_rod ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @a

scoreboard players add loop int 1
execute if score loop int < n int run function math:damp_vec/test/bullet/loop