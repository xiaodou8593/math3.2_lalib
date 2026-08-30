#math:damp_vec/test/bullet/_new
# 生成实体对象

tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["result", "damp_bullet"], CustomName:'{"text":"damp_bullet"}'}
data modify entity @e[tag=result,limit=1] data.plate set from storage math:io input