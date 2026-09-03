#math:fvec/_cross_vec
# 计算向量叉乘
# 输入vec{<vec_x,int,1w>, <vec_y,int,1w>, <vec_z,int,1w>}

execute store result score sstemp_x int run compute default float math:vec/_cross_fvec_x -10000
execute store result score sstemp_y int run compute default float math:vec/_cross_fvec_y -10000
execute store result score fvec_z int run compute default float math:vec/_cross_fvec_z -10000
scoreboard players operation fvec_x int = sstemp_x int
scoreboard players operation fvec_y int = sstemp_y int