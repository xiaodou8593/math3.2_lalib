#math:rot/test/_init
# 初始化本测试模块

scoreboard players set 20 int 20

scoreboard objectives add math_test_id dummy
scoreboard players set #id math_test_id -1

function math:rot/test/_class
function math:rot/test/_consts