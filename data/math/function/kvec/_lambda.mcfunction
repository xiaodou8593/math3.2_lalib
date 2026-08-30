#math:kvec/_lambda
# 伸缩单位向量
# 输入<inp,int,1w>
# 输出{<fvec_x,int,1w>,<fvec_y,int,1w>,<fvec_z,int,1w>}

scoreboard players operation fvec_x int = kvec_x int
scoreboard players operation fvec_y int = kvec_y int
scoreboard players operation fvec_z int = kvec_z int
scoreboard players operation fvec_x int *= inp int
scoreboard players operation fvec_y int *= inp int
scoreboard players operation fvec_z int *= inp int
scoreboard players operation fvec_x int /= 10000 int
scoreboard players operation fvec_y int /= 10000 int
scoreboard players operation fvec_z int /= 10000 int