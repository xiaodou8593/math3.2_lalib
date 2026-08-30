#math:damp_vec/test/bullet/_model
# 从临时对象构建数据模板
# math:damp_vec/test/bullet/_store调用

data modify storage math:io result set value {\
	damp:{\
		k:0, b:0, f:0,\
		x:[0.0d, 0.0d, 0.0d],\
		v:[0.0d, 0.0d, 0.0d]\
	},\
	target:[0.0d, 0.0d, 0.0d],\
}

execute store result storage math:io result.damp.k int 1 run scoreboard players get damp_k int
execute store result storage math:io result.damp.b int 1 run scoreboard players get damp_b int
execute store result storage math:io result.damp.f int 1 run scoreboard players get damp_f int

execute store result storage math:io result.damp.x[0] double 0.0001 run scoreboard players get damp_x int
execute store result storage math:io result.damp.x[1] double 0.0001 run scoreboard players get damp_y int
execute store result storage math:io result.damp.x[2] double 0.0001 run scoreboard players get damp_z int

execute store result storage math:io result.damp.v[0] double 0.0001 run scoreboard players get damp_vx int
execute store result storage math:io result.damp.v[1] double 0.0001 run scoreboard players get damp_vy int
execute store result storage math:io result.damp.v[2] double 0.0001 run scoreboard players get damp_vz int

execute store result storage math:io result.target[0] double 0.0001 run scoreboard players get target_x int
execute store result storage math:io result.target[1] double 0.0001 run scoreboard players get target_y int
execute store result storage math:io result.target[2] double 0.0001 run scoreboard players get target_z int