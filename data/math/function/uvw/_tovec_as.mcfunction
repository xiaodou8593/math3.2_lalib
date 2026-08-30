#math:uvw/_tovec_as
# 实例的局部坐标转换世界坐标
# 输入{<u,int>,<v,int>,<w,int>}
# 输出{<vec_x,int>,<vec_y,int>,<vec_z,int>}

scoreboard players operation vec_x int = @s ivec_x
scoreboard players operation vec_x int *= u int
scoreboard players operation sstemp int = @s jvec_x
scoreboard players operation sstemp int *= v int
scoreboard players operation vec_x int += sstemp int
scoreboard players operation sstemp int = @s kvec_x
scoreboard players operation sstemp int *= w int
scoreboard players operation vec_x int += sstemp int
scoreboard players operation vec_x int /= 10000 int
scoreboard players operation vec_x int += @s x

scoreboard players operation vec_y int = @s ivec_y
scoreboard players operation vec_y int *= u int
scoreboard players operation sstemp int = @s jvec_y
scoreboard players operation sstemp int *= v int
scoreboard players operation vec_y int += sstemp int
scoreboard players operation sstemp int = @s kvec_y
scoreboard players operation sstemp int *= w int
scoreboard players operation vec_y int += sstemp int
scoreboard players operation vec_y int /= 10000 int
scoreboard players operation vec_y int += @s y

scoreboard players operation vec_z int = @s ivec_z
scoreboard players operation vec_z int *= u int
scoreboard players operation sstemp int = @s jvec_z
scoreboard players operation sstemp int *= v int
scoreboard players operation vec_z int += sstemp int
scoreboard players operation sstemp int = @s kvec_z
scoreboard players operation sstemp int *= w int
scoreboard players operation vec_z int += sstemp int
scoreboard players operation vec_z int /= 10000 int
scoreboard players operation vec_z int += @s z