#math:vec/test/slope/iter_loop
# math:vec/test/slope/main调用

execute if score test_n int < n int run function math:vec/test/slope/iter

scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:vec/test/slope/iter_loop