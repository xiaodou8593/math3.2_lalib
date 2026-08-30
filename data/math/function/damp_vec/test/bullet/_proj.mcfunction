#math:damp_vec/test/bullet/_proj
# 数据模板投射临时对象
# math:damp_vec/test/bullet/_get调用

execute store result score damp_k int run data get storage math:io input.damp.k
execute store result score damp_b int run data get storage math:io input.damp.b
execute store result score damp_f int run data get storage math:io input.damp.f

execute store result score damp_x int run data get storage math:io input.damp.x[0] 10000
execute store result score damp_y int run data get storage math:io input.damp.x[1] 10000
execute store result score damp_z int run data get storage math:io input.damp.x[2] 10000

execute store result score damp_vx int run data get storage math:io input.damp.v[0] 10000
execute store result score damp_vy int run data get storage math:io input.damp.v[1] 10000
execute store result score damp_vz int run data get storage math:io input.damp.v[2] 10000

execute store result score target_x int run data get storage math:io input.target[0] 10000
execute store result score target_y int run data get storage math:io input.target[1] 10000
execute store result score target_z int run data get storage math:io input.target[2] 10000