#math:vec/_unit_fast
# 单位化三维向量

scoreboard players operation inp int = vec_x int
scoreboard players operation inp int *= inp int
scoreboard players operation res int = vec_y int
scoreboard players operation res int *= res int
scoreboard players operation inp int += res int
scoreboard players operation res int = vec_z int
scoreboard players operation res int *= res int
scoreboard players operation inp int += res int
execute if score inp int matches 1..15 run function math:vec/unit_fast/range_0
execute if score inp int matches 16..1295 run function math:vec/unit_fast/range_1
execute if score inp int matches 1296..129599 run function math:vec/unit_fast/range_2
execute if score inp int matches 129600..12960000 run function math:vec/unit_fast/range_3
function math:_sqrt
scoreboard players operation vec_x int *= 10000 int
scoreboard players operation vec_y int *= 10000 int
scoreboard players operation vec_z int *= 10000 int
scoreboard players operation vec_x int /= res int
scoreboard players operation vec_y int /= res int
scoreboard players operation vec_z int /= res int