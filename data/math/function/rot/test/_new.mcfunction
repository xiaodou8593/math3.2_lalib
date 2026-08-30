#math:rot/test/_new
# 生成测试实例
# 输入storage math:io input
# 返回entity @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["math_rot_test","result"],CustomName:'"math_rot_test"'}
execute as @e[tag=result,limit=1] run function math:rot/test/set
execute as @e[tag=result,limit=1] run function math:rot/test/set_operations