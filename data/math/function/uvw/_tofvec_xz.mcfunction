#math:uvw/_tofvec_xz
# 局部坐标转换相对坐标
# 输入{<u,int>,<v,int>,<w,int>}
# 输出{<fvec_x,int>,<fvec_z,int>}

scoreboard players operation fvec_x int = ivec_x int
scoreboard players operation fvec_x int *= u int
scoreboard players operation sstemp int = jvec_x int
scoreboard players operation sstemp int *= v int
scoreboard players operation fvec_x int += sstemp int
scoreboard players operation sstemp int = kvec_x int
scoreboard players operation sstemp int *= w int
scoreboard players operation fvec_x int += sstemp int
scoreboard players operation fvec_x int /= 10000 int

scoreboard players operation fvec_z int = ivec_z int
scoreboard players operation fvec_z int *= u int
scoreboard players operation sstemp int = jvec_z int
scoreboard players operation sstemp int *= v int
scoreboard players operation fvec_z int += sstemp int
scoreboard players operation sstemp int = kvec_z int
scoreboard players operation sstemp int *= w int
scoreboard players operation fvec_z int += sstemp int
scoreboard players operation fvec_z int /= 10000 int