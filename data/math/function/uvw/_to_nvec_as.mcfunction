#math:uvw/_to_nvec_as
# 使用实例的局部坐标转换相对坐标
# 输入{<u,int>,<v,int>,<w,int>}
# 传入实例为执行者
# 输出{<nvec_x,int>,<nvec_y,int>,<nvec_z,int>}

scoreboard players operation nvec_x int = @s ivec_x
scoreboard players operation nvec_x int *= u int
scoreboard players operation sstemp int = @s jvec_x
scoreboard players operation sstemp int *= v int
scoreboard players operation nvec_x int += sstemp int
scoreboard players operation sstemp int = @s kvec_x
scoreboard players operation sstemp int *= w int
scoreboard players operation nvec_x int += sstemp int
scoreboard players operation nvec_x int /= 10000 int

scoreboard players operation nvec_y int = @s ivec_y
scoreboard players operation nvec_y int *= u int
scoreboard players operation sstemp int = @s jvec_y
scoreboard players operation sstemp int *= v int
scoreboard players operation nvec_y int += sstemp int
scoreboard players operation sstemp int = @s kvec_y
scoreboard players operation sstemp int *= w int
scoreboard players operation nvec_y int += sstemp int
scoreboard players operation nvec_y int /= 10000 int

scoreboard players operation nvec_z int = @s ivec_z
scoreboard players operation nvec_z int *= u int
scoreboard players operation sstemp int = @s jvec_z
scoreboard players operation sstemp int *= v int
scoreboard players operation nvec_z int += sstemp int
scoreboard players operation sstemp int = @s kvec_z
scoreboard players operation sstemp int *= w int
scoreboard players operation nvec_z int += sstemp int
scoreboard players operation nvec_z int /= 10000 int