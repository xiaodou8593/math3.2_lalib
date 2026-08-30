#math:quat/_regular_discard
# 不推荐使用！
# 规整化四元数姿态，使某个轴与世界坐标系y轴对齐
# 输出rquat{<rquat_x,int,1w>, <rquat_y,int,1w>, <rquat_z,int,1w>, <rquat_w,int,1w>}
# 需要以世界实体为执行者

# 符号与绝对值分离
scoreboard players operation sstemp_signx int = quat_x int
scoreboard players operation sstemp_signy int = quat_y int
scoreboard players operation sstemp_signz int = quat_z int
scoreboard players operation sstemp_signw int = quat_w int

execute if score quat_x int matches ..-1 run scoreboard players operation quat_x int *= -1 int
execute if score quat_y int matches ..-1 run scoreboard players operation quat_y int *= -1 int
execute if score quat_z int matches ..-1 run scoreboard players operation quat_z int *= -1 int
execute if score quat_w int matches ..-1 run scoreboard players operation quat_w int *= -1 int

scoreboard players operation sstemp_signx int /= quat_x int
scoreboard players operation sstemp_signy int /= quat_y int
scoreboard players operation sstemp_signz int /= quat_z int
scoreboard players operation sstemp_signw int /= quat_w int

# 寻找最大绝对值
scoreboard players operation sstemp_max int = quat_x int
scoreboard players operation sstemp_max int > quat_y int
scoreboard players operation sstemp_max int > quat_z int
scoreboard players operation sstemp_max int > quat_w int

# 最大绝对值-0极化
scoreboard players operation sstemp_sx int = sstemp_max int
scoreboard players operation sstemp_sy int = sstemp_max int
scoreboard players operation sstemp_sz int = sstemp_max int
scoreboard players operation sstemp_sw int = sstemp_max int

scoreboard players operation sstemp_sx int -= quat_x int
scoreboard players operation sstemp_sy int -= quat_y int
scoreboard players operation sstemp_sz int -= quat_z int
scoreboard players operation sstemp_sw int -= quat_w int

scoreboard players operation sstemp_sx int /= quat_x int
scoreboard players operation sstemp_sy int /= quat_y int
scoreboard players operation sstemp_sz int /= quat_z int
scoreboard players operation sstemp_sw int /= quat_w int

# 根据极化结果寻找分支
scoreboard players set sstemp int 1
scoreboard players operation sstemp int *= sstemp_sy int
scoreboard players operation sstemp int *= sstemp_sw int
execute if score sstemp_sx int matches 1.. \
	if score sstemp_sz int matches 1.. \
	if score sstemp int matches 0 \
	run return run function math:quat/regular/y_pos

scoreboard players set sstemp int 1
scoreboard players operation sstemp int *= sstemp_sx int
scoreboard players operation sstemp int *= sstemp_sz int
execute if score sstemp_sy int matches 1.. \
	if score sstemp_sw int matches 1.. \
	if score sstemp int matches 0 \
	run return run function math:quat/regular/y_neg

# 寻找最小绝对值
scoreboard players operation sstemp_min int = quat_x int
scoreboard players operation sstemp_min int < quat_y int
scoreboard players operation sstemp_min int < quat_z int
scoreboard players operation sstemp_min int < quat_w int

# 最大绝对值-最小绝对值极化
scoreboard players operation sstemp_s0 int = sstemp_max int
scoreboard players operation sstemp_s1 int = sstemp_max int
scoreboard players operation sstemp_s2 int = sstemp_max int
scoreboard players operation sstemp_s3 int = sstemp_max int

scoreboard players operation sstemp_s0 int -= quat_x int
scoreboard players operation sstemp_s1 int -= quat_y int
scoreboard players operation sstemp_s2 int -= quat_z int
scoreboard players operation sstemp_s3 int -= quat_w int

scoreboard players operation sstemp_sx int = quat_x int
scoreboard players operation sstemp_sy int = quat_y int
scoreboard players operation sstemp_sz int = quat_z int
scoreboard players operation sstemp_sw int = quat_w int

scoreboard players operation sstemp_sx int -= sstemp_min int
scoreboard players operation sstemp_sy int -= sstemp_min int
scoreboard players operation sstemp_sz int -= sstemp_min int
scoreboard players operation sstemp_sw int -= sstemp_min int

scoreboard players operation sstemp_sx int /= sstemp_s0 int
scoreboard players operation sstemp_sy int /= sstemp_s1 int
scoreboard players operation sstemp_sz int /= sstemp_s2 int
scoreboard players operation sstemp_sw int /= sstemp_s3 int

# 根据极化结果寻找分支
scoreboard players operation sstemp_s0 int = sstemp_sx int
scoreboard players operation sstemp_s0 int *= sstemp_sy int

scoreboard players operation sstemp_s1 int = sstemp_sz int
scoreboard players operation sstemp_s1 int *= sstemp_sw int

scoreboard players operation sstemp_s2 int = sstemp_sy int
scoreboard players operation sstemp_s2 int *= sstemp_sz int

scoreboard players operation sstemp_s3 int = sstemp_sx int
scoreboard players operation sstemp_s3 int *= sstemp_sw int

scoreboard players operation sstemp int = sstemp_signx int
scoreboard players operation sstemp int *= sstemp_signy int
# x正半轴
execute if score sstemp_s0 int matches 1.. \
	if score sstemp int matches 1 \
	run return run function math:quat/regular/x_pos
# x负半轴
execute if score sstemp_s0 int matches 1.. \
	if score sstemp int matches -1 \
	run return run function math:quat/regular/x_neg

scoreboard players operation sstemp int = sstemp_signz int
scoreboard players operation sstemp int *= sstemp_signw int
# x正半轴
execute if score sstemp_s1 int matches 1.. \
	if score sstemp int matches 1 \
	run return run function math:quat/regular/x_pos
# x负半轴
execute if score sstemp_s1 int matches 1.. \
	if score sstemp int matches -1 \
	run return run function math:quat/regular/x_neg

scoreboard players operation sstemp int = sstemp_signy int
scoreboard players operation sstemp int *= sstemp_signz int
# z正半轴
execute if score sstemp_s2 int matches 1.. \
	if score sstemp int matches 1 \
	run return run function math:quat/regular/z_pos
# z负半轴
execute if score sstemp_s2 int matches 1.. \
	if score sstemp int matches -1 \
	run return run function math:quat/regular/z_neg

scoreboard players operation sstemp int = sstemp_signx int
scoreboard players operation sstemp int *= sstemp_signw int
# z正半轴
execute if score sstemp_s3 int matches 1.. \
	if score sstemp int matches -1 \
	run return run function math:quat/regular/z_pos
# z负半轴
execute if score sstemp_s3 int matches 1.. \
	if score sstemp int matches 1 \
	run return run function math:quat/regular/z_neg