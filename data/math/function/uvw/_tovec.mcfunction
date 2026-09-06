#math:uvw/_tovec
# 局部坐标转换世界坐标
# 输入{<u,int>,<v,int>,<w,int>}
# 输出{<vec_x,int>,<vec_y,int>,<vec_z,int>}

execute store result score vec_x int run compute default float math:uvw/_tovec_x 10000
execute store result score vec_y int run compute default float math:uvw/_tovec_y 10000
execute store result score vec_z int run compute default float math:uvw/_tovec_z 10000