#math:damp_vec/_print
# 输出阻尼迭代数据

tellraw @a "math:damp_vec{"
tellraw @a ["    k, b, f: ", {"score":{"name":"damp_k","objective":"int"}}, ", ", {"score":{"name":"damp_b","objective":"int"}}, ", ", {"score":{"name":"damp_f","objective":"int"}}]
tellraw @a ["    x, y, z: ", {"score":{"name":"damp_x","objective":"int"}},", ",{"score":{"name":"damp_y","objective":"int"}},", ",{"score":{"name":"damp_z","objective":"int"}}]
tellraw @a ["    vx, vy, vz: ", {"score":{"name":"damp_vx","objective":"int"}},", ",{"score":{"name":"damp_vy","objective":"int"}},", ",{"score":{"name":"damp_vz","objective":"int"}}]
tellraw @a "}"