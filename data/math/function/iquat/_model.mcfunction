#math:iquat/_model
# 构建数据模板
# 输出storage math:io xyzw

execute store result storage math:io xyzw[0] float 0.0001 run scoreboard players get iquat_x int
execute store result storage math:io xyzw[1] float 0.0001 run scoreboard players get iquat_y int
execute store result storage math:io xyzw[2] float 0.0001 run scoreboard players get iquat_z int
execute store result storage math:io xyzw[3] float 0.0001 run scoreboard players get iquat_w int