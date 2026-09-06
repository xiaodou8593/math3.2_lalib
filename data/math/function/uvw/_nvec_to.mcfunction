#math:uvw/_nvec_to
# 法向量转换局部坐标
# 输入{<nvec_x,int>,<nvec_y,int>,<nvec_z,int>}
# 输出{<u,int>,<v,int>,<w,int>}

execute store result score u int run compute default float math:uvw/_nvec_to_u 10000
execute store result score v int run compute default float math:uvw/_nvec_to_v 10000
execute store result score w int run compute default float math:uvw/_nvec_to_w 10000