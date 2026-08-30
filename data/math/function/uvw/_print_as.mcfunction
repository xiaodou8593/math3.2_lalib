#math:uvw/_print_as
# 输出实例局部坐标系

tellraw @a "math:uvw{"
tellraw @a ["    xyz: ", {"score":{"name":"@s","objective":"x"}}, ", ", {"score":{"name":"@s","objective":"y"}}, ", ", {"score":{"name":"@s","objective":"z"}}]
tellraw @a ["    ivec: ", {"score":{"name":"@s","objective":"ivec_x"}}, ", ", {"score":{"name":"@s","objective":"ivec_y"}}, ", ", {"score":{"name":"@s","objective":"ivec_z"}}]
tellraw @a ["    jvec: ", {"score":{"name":"@s","objective":"jvec_x"}}, ", ", {"score":{"name":"@s","objective":"jvec_y"}}, ", ", {"score":{"name":"@s","objective":"jvec_z"}}]
tellraw @a ["    kvec: ", {"score":{"name":"@s","objective":"kvec_x"}}, ", ", {"score":{"name":"@s","objective":"kvec_y"}}, ", ", {"score":{"name":"@s","objective":"kvec_z"}}]
tellraw @a "}"