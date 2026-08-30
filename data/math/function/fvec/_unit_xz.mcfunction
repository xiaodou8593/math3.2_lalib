#math:fvec/_unit_xz
# 缩放向量，使得水平面内的投影长度为1
# 输出uvec{<uvec_x,int>,<uvec_y,int>,<uvec_z,int>}
# 输出水平面投影长度<res,int,1k>
# 若向量水平面投影长度为0，则uvec_z = 10000

# 计算x^2+z^2
scoreboard players operation dec int = fvec_x int
function math:dec/_6sqr
scoreboard players operation inp int = dec int
scoreboard players operation dec int = fvec_z int
function math:dec/_6sqr
scoreboard players operation inp int += dec int

function math:_sqrt

scoreboard players operation uvec_x int = fvec_x int
scoreboard players operation uvec_y int = fvec_y int
scoreboard players operation uvec_z int = fvec_z int
execute if score res int matches 0 run scoreboard players set uvec_z int 10
scoreboard players operation uvec_x int *= 1000 int
scoreboard players operation uvec_y int *= 1000 int
scoreboard players operation uvec_z int *= 1000 int
scoreboard players operation uvec_x int /= res int
scoreboard players operation uvec_y int /= res int
scoreboard players operation uvec_z int /= res int