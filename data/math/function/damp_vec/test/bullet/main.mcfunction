#math:damp_vec/test/bullet/main
# 实体对象主程序

function math:damp_vec/test/bullet/_get

scoreboard players operation sstemp_x int = damp_x int
scoreboard players operation sstemp_y int = damp_y int
scoreboard players operation sstemp_z int = damp_z int
scoreboard players operation sstemp_x int += target_x int
scoreboard players operation sstemp_y int += target_y int
scoreboard players operation sstemp_z int += target_z int

execute as 0-0-0-0-0 run function math:damp_vec/test/bullet/motion

function math:damp_vec/_energy
scoreboard players operation temp_e int = res int
function math:damp_vec/_threshold
execute if score temp_e int <= res int run return run kill @s
function math:damp_vec/_iter

function math:damp_vec/test/bullet/_store