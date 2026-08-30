#math:damp_vec/_print_const
# 输出阻尼迭代数据

tellraw @a "math:damp_vec{"
tellraw @a ["    k, b, f: ", {"score":{"name":"damp_k","objective":"int"}}, ", ", {"score":{"name":"damp_b","objective":"int"}}, ", ", {"score":{"name":"damp_f","objective":"int"}}]
tellraw @a "}"