#math:uvw/_to_euler
# 局部坐标系转欧拉角
# 输出math:euler{<phi,int,1w>,<theta,int,1w>,<psi,int,1w>}
# 需要传入世界实体为执行者

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get kvec_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get kvec_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get kvec_z int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run function math:uvw/euler_get