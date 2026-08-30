#math:vec/test/slope/edit_commands
# 聊天栏调用

data modify storage math:io list set from storage math:io test_commands
execute store result score list_n int run data get storage math:io list
scoreboard players set list_phi int 0
function math:list/_inverse
data modify storage math:io test_commands append from storage math:io list[]