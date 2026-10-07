#math:quat_high/_right_mul_by_quat_c
# 用math:quat的共轭右乘
# 输入math:quat{<quat_x,int,1w>,<quat_y,int,1w>,<quat_z,int,1w>,<quat_w,int,1w>}

execute store result score sstemp_x int run compute default float math:quat_high/_right_mul_by_quat_c_x
execute store result score sstemp_y int run compute default float math:quat_high/_right_mul_by_quat_c_y
execute store result score sstemp_z int run compute default float math:quat_high/_right_mul_by_quat_c_z
execute store result score quat_high_w int run compute default float math:quat_high/_right_mul_by_quat_c_w
scoreboard players operation quat_high_x int = sstemp_x int
scoreboard players operation quat_high_y int = sstemp_y int
scoreboard players operation quat_high_z int = sstemp_z int