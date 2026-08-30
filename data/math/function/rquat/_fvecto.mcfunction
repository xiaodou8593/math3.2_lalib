#math:rquat/_fvecto
# 相对坐标转四元数
# 输入fvec{<fvec_x,int,1w>,<fvec_y,int,1w>,<fvec_z,int,1w>}
# 需要传入世界实体

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get fvec_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get fvec_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get fvec_z int
data modify entity @s Pos set from storage math:io xyz
execute positioned 0.0 0.0 0.0 facing entity @s feet run function math:rquat/_facing_to