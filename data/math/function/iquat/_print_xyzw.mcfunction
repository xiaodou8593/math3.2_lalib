#math:iquat/_print_xyzw
# 输出四元数姿态

tellraw @a ["iquat_xyzw: ", {"score":{"name":"iquat_x","objective":"int"}}, ", ", {"score":{"name":"iquat_y","objective":"int"}}, ", ", {"score":{"name":"iquat_z","objective":"int"}}, ", ", {"score":{"name":"iquat_w","objective":"int"}}]