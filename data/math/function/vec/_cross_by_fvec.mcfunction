#math:vec/_cross_by_fvec
# 计算向量叉乘
# 输入fvec{<fvec_x,int,1w>, <fvec_y,int,1w>, <fvec_z,int,1w>}

execute store result score sstemp_x int run compute default float math:vec/_cross_fvec_x -10000
execute store result score sstemp_y int run compute default float math:vec/_cross_fvec_y -10000
execute store result score vec_z int run compute default float math:vec/_cross_fvec_z -10000
scoreboard players operation vec_x int = sstemp_x int
scoreboard players operation vec_y int = sstemp_y int