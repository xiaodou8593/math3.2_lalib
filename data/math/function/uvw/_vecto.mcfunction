#math:uvw/_vecto
# 世界坐标转换局部坐标
# 输入{<vec_x,int>,<vec_y,int>,<vec_z,int>}
# 输出{<u,int>,<v,int>,<w,int>}

execute store result score u int run compute default float math:uvw/_vecto_u 10000
execute store result score v int run compute default float math:uvw/_vecto_v 10000
execute store result score w int run compute default float math:uvw/_vecto_w 10000