#math:rquat/_print_xyzw
# 输出四元数姿态

tellraw @a ["rquat_xyzw: ", {"score":{"name":"rquat_x","objective":"int"}}, ", ", {"score":{"name":"rquat_y","objective":"int"}}, ", ", {"score":{"name":"rquat_z","objective":"int"}}, ", ", {"score":{"name":"rquat_w","objective":"int"}}]