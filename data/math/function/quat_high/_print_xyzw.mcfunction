#math:quat_high/_print_xyzw
# 打印临时对象数据

tellraw @a ["quat_high: ", "[", {"score":{"name":"quat_high_x", "objective":"int"}}, ", " ,{"score":{"name":"quat_high_y", "objective":"int"}}, ", " ,{"score":{"name":"quat_high_z", "objective":"int"}}, ", " ,{"score":{"name":"quat_high_w", "objective":"int"}}, "]"]