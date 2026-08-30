#math:uvw/_to_nvec
# 局部坐标转换相对坐标
# 输入{<u,int>,<v,int>,<w,int>}
# 输出{<nvec_x,int>,<nvec_y,int>,<nvec_z,int>}

scoreboard players operation nvec_x int = ivec_x int
scoreboard players operation nvec_x int *= u int
scoreboard players operation sstemp int = jvec_x int
scoreboard players operation sstemp int *= v int
scoreboard players operation nvec_x int += sstemp int
scoreboard players operation sstemp int = kvec_x int
scoreboard players operation sstemp int *= w int
scoreboard players operation nvec_x int += sstemp int
scoreboard players operation nvec_x int /= 10000 int

scoreboard players operation nvec_y int = ivec_y int
scoreboard players operation nvec_y int *= u int
scoreboard players operation sstemp int = jvec_y int
scoreboard players operation sstemp int *= v int
scoreboard players operation nvec_y int += sstemp int
scoreboard players operation sstemp int = kvec_y int
scoreboard players operation sstemp int *= w int
scoreboard players operation nvec_y int += sstemp int
scoreboard players operation nvec_y int /= 10000 int

scoreboard players operation nvec_z int = ivec_z int
scoreboard players operation nvec_z int *= u int
scoreboard players operation sstemp int = jvec_z int
scoreboard players operation sstemp int *= v int
scoreboard players operation nvec_z int += sstemp int
scoreboard players operation sstemp int = kvec_z int
scoreboard players operation sstemp int *= w int
scoreboard players operation nvec_z int += sstemp int
scoreboard players operation nvec_z int /= 10000 int