#math:vec/_length
# 计算向量的模长, 1k倍率
# 输出<res,int>

# 计算x^2+y^2+z^2
scoreboard players operation dec int = vec_x int
function math:dec/_6sqr
scoreboard players operation inp int = dec int
scoreboard players operation dec int = vec_y int
function math:dec/_6sqr
scoreboard players operation inp int += dec int
scoreboard players operation dec int = vec_z int
function math:dec/_6sqr
scoreboard players operation inp int += dec int

function math:_sqrt