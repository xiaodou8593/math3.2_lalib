#math:uvw/_tofvec
# 局部坐标转换相对坐标
# 输入{<u,int>,<v,int>,<w,int>}
# 输出{<fvec_x,int>,<fvec_y,int>,<fvec_z,int>}

execute store result score fvec_x int run compute default float math:uvw/_tofvec_x 10000
execute store result score fvec_y int run compute default float math:uvw/_tofvec_y 10000
execute store result score fvec_z int run compute default float math:uvw/_tofvec_z 10000