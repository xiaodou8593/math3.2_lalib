#math:quat/test/half_a/main
# math:quat/test/half_a/start异步调用

scoreboard players operation loop int = test_n int
execute if score loop int matches 1.. run function math:quat/test/half_a/loop