#math:uvw/_tofvec_y
# 局部坐标转换相对坐标
# 输入{<u,int>,<v,int>,<w,int>}
# 输出{<fvec_y,int>}

scoreboard players operation fvec_y int = ivec_y int
scoreboard players operation fvec_y int *= u int
scoreboard players operation sstemp int = jvec_y int
scoreboard players operation sstemp int *= v int
scoreboard players operation fvec_y int += sstemp int
scoreboard players operation sstemp int = kvec_y int
scoreboard players operation sstemp int *= w int
scoreboard players operation fvec_y int += sstemp int
scoreboard players operation fvec_y int /= 10000 int