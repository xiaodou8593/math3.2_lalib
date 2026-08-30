#math:quat/_print_xyzw
# 输出四元数姿态

tellraw @a ["quat_xyzw: ", {"score":{"name":"quat_x","objective":"int"}}, ", ", {"score":{"name":"quat_y","objective":"int"}}, ", ", {"score":{"name":"quat_z","objective":"int"}}, ", ", {"score":{"name":"quat_w","objective":"int"}}]