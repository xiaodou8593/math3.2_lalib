#math:vec/_sqr_slope
# 计算向量斜率的平方y^2/(x^2+z^2)
# 输出<res,int,1k>
# 若斜率不存在则输出-1

# 计算x^2+z^2
scoreboard players operation dec int = vec_x int
function math:dec/_6sqr
scoreboard players operation inp int = dec int
scoreboard players operation dec int = vec_z int
function math:dec/_6sqr
scoreboard players operation inp int += dec int

execute if score inp int matches 0 run return run scoreboard players set res int -1

# 计算y^2
scoreboard players operation dec int = vec_y int
function math:dec/_6sqr
scoreboard players operation res int = dec int

# 计算除法
function math:_3div