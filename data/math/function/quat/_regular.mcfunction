#math:quat/_regular
# 规整化四元数姿态，使某个轴与世界坐标系y轴对齐
# 输入uvw{ivec, jvec, kvec}
# 输出rquat{<rquat_x,int,1w>, <rquat_y,int,1w>, <rquat_z,int,1w>, <rquat_w,int,1w>}
# 需要把四元数姿态同步到局部坐标系uvw
# 需要以世界实体为执行者

# 符号与绝对值分离
scoreboard players operation sstemp_signi int = ivec_y int
scoreboard players operation sstemp_signj int = jvec_y int
scoreboard players operation sstemp_signk int = kvec_y int

execute if score ivec_y int matches ..-1 run scoreboard players operation ivec_y int *= -1 int
execute if score jvec_y int matches ..-1 run scoreboard players operation jvec_y int *= -1 int
execute if score kvec_y int matches ..-1 run scoreboard players operation kvec_y int *= -1 int

scoreboard players operation sstemp_signi int /= ivec_y int
scoreboard players operation sstemp_signj int /= jvec_y int
scoreboard players operation sstemp_signk int /= kvec_y int

# 寻找最大绝对值
scoreboard players operation sstemp_max int = ivec_y int
scoreboard players operation sstemp_max int > jvec_y int
scoreboard players operation sstemp_max int > kvec_y int

execute if score ivec_y int = sstemp_max int if score sstemp_signi int matches 1.. run return run function math:quat/regular/x_pcor
execute if score ivec_y int = sstemp_max int if score sstemp_signi int matches ..0 run return run function math:quat/regular/x_ncor
execute if score jvec_y int = sstemp_max int if score sstemp_signj int matches 1.. run return run function math:quat/regular/y_pcor
execute if score jvec_y int = sstemp_max int if score sstemp_signj int matches ..0 run return run function math:quat/regular/y_ncor
execute if score kvec_y int = sstemp_max int if score sstemp_signk int matches 1.. run return run function math:quat/regular/z_pcor
execute if score kvec_y int = sstemp_max int if score sstemp_signk int matches ..0 run return run function math:quat/regular/z_ncor