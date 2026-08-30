#math:damp_vec/test/iter/s1
# math:damp_vec/test/iter/main调用

# 下一刻跳转到状态s0
execute unless entity @e[tag=test,tag=damp_bullet] run return run data modify storage marker_control:io result.state set value 0

# 渲染起点和终点
function math:test/_coords
data modify storage math:io test_coords set value [\
	[0.0d,0.0d,0.0d],\
	[15.0d,6.0d,0.0d],\
	[-15.0d,0.0d,-6.0d]\
]
function math:test/_next_coord
function math:test/_render
function math:test/_next_coord
function math:test/_render_soul

# 运行子弹主程序
execute as @e[tag=test,tag=damp_bullet] run function math:damp_vec/test/bullet/main