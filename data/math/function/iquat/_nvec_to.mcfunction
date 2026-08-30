#math:iquat/_nvec_to
# 使用平面法向量指定四元数(旋转j到nvec)
# 输入nvec{<nvec_x,int,1w>, <nvec_y,int,1w>, <nvec_z,int,1w>}
# 需要传入世界实体为执行者

execute if score nvec_y int matches ..-1 run return run function math:iquat/nvec_to_branch

# 计算二倍半角余弦
scoreboard players operation inp int = nvec_y int
scoreboard players add inp int 10000
scoreboard players operation inp int *= 20000 int
function math:_sqrt

# 取一半theta, 叉乘计算旋转轴*sin(theta/2)
scoreboard players operation iquat_x int = nvec_z int
scoreboard players operation iquat_x int *= 10000 int
scoreboard players operation iquat_x int /= res int

scoreboard players set iquat_y int 0

scoreboard players operation iquat_z int = nvec_x int
scoreboard players operation iquat_z int *= -10000 int
scoreboard players operation iquat_z int /= res int

# 取一半theta, 点乘计算cos(theta/2)
scoreboard players operation iquat_w int = res int
scoreboard players operation iquat_w int /= 2 int
#scoreboard players operation iquat_w int = nvec_y int
#scoreboard players add iquat_w int 10000
#scoreboard players operation iquat_w int *= 10000 int
#scoreboard players operation iquat_w int /= res int