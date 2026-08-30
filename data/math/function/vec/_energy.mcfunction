#math:vec/_energy
# 计算向量的模长平方
# 输出<res,int,1w>

# method_3
scoreboard players operation sstemp_div int = vec_x int
scoreboard players operation sstemp_mod int = vec_x int
scoreboard players operation sstemp_div int /= 10000 int
scoreboard players operation sstemp_mod int %= 10000 int
scoreboard players operation sstemp_low int = sstemp_mod int
scoreboard players operation sstemp_low int *= sstemp_low int
scoreboard players operation sstemp_low int /= 10000 int
scoreboard players operation sstemp_mod int *= sstemp_div int
scoreboard players operation sstemp_mod int *= 2 int
scoreboard players operation sstemp_div int *= sstemp_div int
scoreboard players operation sstemp_div int *= 10000 int
scoreboard players operation sstemp_div int += sstemp_mod int
scoreboard players operation sstemp_div int += sstemp_low int

scoreboard players operation res int = sstemp_div int

scoreboard players operation sstemp_div int = vec_y int
scoreboard players operation sstemp_mod int = vec_y int
scoreboard players operation sstemp_div int /= 10000 int
scoreboard players operation sstemp_mod int %= 10000 int
scoreboard players operation sstemp_low int = sstemp_mod int
scoreboard players operation sstemp_low int *= sstemp_low int
scoreboard players operation sstemp_low int /= 10000 int
scoreboard players operation sstemp_mod int *= sstemp_div int
scoreboard players operation sstemp_mod int *= 2 int
scoreboard players operation sstemp_div int *= sstemp_div int
scoreboard players operation sstemp_div int *= 10000 int
scoreboard players operation sstemp_div int += sstemp_mod int
scoreboard players operation sstemp_div int += sstemp_low int

scoreboard players operation res int += sstemp_div int

scoreboard players operation sstemp_div int = vec_z int
scoreboard players operation sstemp_mod int = vec_z int
scoreboard players operation sstemp_div int /= 10000 int
scoreboard players operation sstemp_mod int %= 10000 int
scoreboard players operation sstemp_low int = sstemp_mod int
scoreboard players operation sstemp_low int *= sstemp_low int
scoreboard players operation sstemp_low int /= 10000 int
scoreboard players operation sstemp_mod int *= sstemp_div int
scoreboard players operation sstemp_mod int *= 2 int
scoreboard players operation sstemp_div int *= sstemp_div int
scoreboard players operation sstemp_div int *= 10000 int
scoreboard players operation sstemp_div int += sstemp_mod int
scoreboard players operation sstemp_div int += sstemp_low int

scoreboard players operation res int += sstemp_div int