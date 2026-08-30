#math:damp_vec/test/iter/start
# 聊天栏执行

# 生成测试程序
tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["result", "test", "damp_vec_test"], CustomName:'{"text":"damp_vec_test"}'}
execute as @e[tag=result,limit=1] run function marker_control:data/_get

# 记录出发点和目标点
function math:test/_coords
data modify storage math:io test_coords set value [\
	[0.0d,0.0d,0.0d],\
	[15.0d,6.0d,0.0d],\
	[-15.0d,0.0d,-6.0d]\
]
function math:test/_next_coord
data modify storage marker_control:io result.start_point set from entity @e[tag=test_coord,limit=1] Pos
function math:test/_next_coord
data modify storage marker_control:io result.target_point set from entity @e[tag=test_coord,limit=1] Pos

# 设置测试参数
data modify storage marker_control:io result.args set value []
data modify storage marker_control:io result.args append value {k:95, b:100, f:100, v_length:10000}
data modify storage marker_control:io result.args append value {k:98, b:100, f:100, v_length:10000}
data modify storage marker_control:io result.args append value {k:99, b:100, f:500, v_length:10000}
data modify storage marker_control:io result.args append value {k:95, b:100, f:200, v_length:10000}
data modify storage marker_control:io result.args append value {k:98, b:100, f:200, v_length:10000}
data modify storage marker_control:io result.args append value {k:99, b:100, f:200, v_length:10000}
#data modify storage marker_control:io result.args append value {k:95, b:100, f:300, v_length:10000}
data modify storage marker_control:io result.args append value {k:98, b:100, f:300, v_length:10000}
data modify storage marker_control:io result.args append value {k:99, b:100, f:300, v_length:10000}

# 设置状态机
data modify storage marker_control:io result.state set value 0
data modify storage marker_control:io result.tick_func set value "math:damp_vec/test/iter/main"
tag @e[tag=result,limit=1] add entity_ticked

execute as @e[tag=result,limit=1] run function marker_control:data/_store

scoreboard players set @e[tag=result,limit=1] killtime 20