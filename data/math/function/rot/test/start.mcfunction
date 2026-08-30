#math:rot/test/start
# 聊天栏调用

function math:rot/test/_init

data modify storage math:io input set from storage math:class rot_test_plate
function math:rot/test/_new
tag @e[tag=result,limit=1] add test

execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "math:rot/test/main"
data modify storage marker_control:io result.del_func set value "math:rot/test/end"
data modify storage marker_control:io result.list_uvs set value [\
	[1,0],\
	[2,0],\
	[1,0],\
	[0,0],\
	[-1,0],\
	[-2,0],\
	[-2,1],\
	[-2,2],\
	[-2,1],\
	[-2,0],\
	[-2,-1],\
	[-2,-2],\
	[-1,-2],\
	[0,-2],\
	[1,-2],\
	[1,-1]\
]
data modify storage marker_control:io result.list_uvs append from storage marker_control:io result.list_uvs[]
data modify storage marker_control:io result.list_uvs append from storage marker_control:io result.list_uvs[]
execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
tag @e[tag=result,limit=1] add entity_todel

scoreboard players set @e[tag=result,limit=1] killtime 800