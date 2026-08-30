#math:damp_vec/_energy
# 获取阻尼能量
# 输出<res,int>

# 计算v_x^2
scoreboard players operation res int = damp_vx int
scoreboard players operation sstemp_b int = res int
scoreboard players operation res int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int
scoreboard players operation sstemp_a int = res int
scoreboard players operation res int *= res int
scoreboard players operation res int *= 10000 int
scoreboard players operation sstemp_a int *= sstemp_b int
scoreboard players operation sstemp_a int *= 2 int
scoreboard players operation res int += sstemp_a int
scoreboard players operation sstemp_b int *= sstemp_b int
scoreboard players operation sstemp_b int /= 10000 int
scoreboard players operation res int += sstemp_b int

# 计算v_y^2
scoreboard players operation sstemp_v int = damp_vy int
scoreboard players operation sstemp_b int = sstemp_v int
scoreboard players operation sstemp_v int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int
scoreboard players operation sstemp_a int = sstemp_v int
scoreboard players operation sstemp_v int *= sstemp_v int
scoreboard players operation sstemp_v int *= 10000 int
scoreboard players operation sstemp_a int *= sstemp_b int
scoreboard players operation sstemp_a int *= 2 int
scoreboard players operation sstemp_v int += sstemp_a int
scoreboard players operation sstemp_b int *= sstemp_b int
scoreboard players operation sstemp_b int /= 10000 int
scoreboard players operation sstemp_v int += sstemp_b int
scoreboard players operation res int += sstemp_v int

# 计算v_z^2
scoreboard players operation sstemp_v int = damp_vz int
scoreboard players operation sstemp_b int = sstemp_v int
scoreboard players operation sstemp_v int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int
scoreboard players operation sstemp_a int = sstemp_v int
scoreboard players operation sstemp_v int *= sstemp_v int
scoreboard players operation sstemp_v int *= 10000 int
scoreboard players operation sstemp_a int *= sstemp_b int
scoreboard players operation sstemp_a int *= 2 int
scoreboard players operation sstemp_v int += sstemp_a int
scoreboard players operation sstemp_b int *= sstemp_b int
scoreboard players operation sstemp_b int /= 10000 int
scoreboard players operation sstemp_v int += sstemp_b int
scoreboard players operation res int += sstemp_v int

# 计算x^2
scoreboard players operation sstemp_x int = damp_x int
scoreboard players operation sstemp_b int = sstemp_x int
scoreboard players operation sstemp_x int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int
scoreboard players operation sstemp_a int = sstemp_x int
scoreboard players operation sstemp_x int *= sstemp_x int
scoreboard players operation sstemp_x int *= 10000 int
scoreboard players operation sstemp_a int *= sstemp_b int
scoreboard players operation sstemp_a int *= 2 int
scoreboard players operation sstemp_x int += sstemp_a int
scoreboard players operation sstemp_b int *= sstemp_b int
scoreboard players operation sstemp_b int /= 10000 int
scoreboard players operation sstemp_x int += sstemp_b int
scoreboard players operation res int += sstemp_x int

# 计算y^2
scoreboard players operation sstemp_x int = damp_y int
scoreboard players operation sstemp_b int = sstemp_x int
scoreboard players operation sstemp_x int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int
scoreboard players operation sstemp_a int = sstemp_x int
scoreboard players operation sstemp_x int *= sstemp_x int
scoreboard players operation sstemp_x int *= 10000 int
scoreboard players operation sstemp_a int *= sstemp_b int
scoreboard players operation sstemp_a int *= 2 int
scoreboard players operation sstemp_x int += sstemp_a int
scoreboard players operation sstemp_b int *= sstemp_b int
scoreboard players operation sstemp_b int /= 10000 int
scoreboard players operation sstemp_x int += sstemp_b int
scoreboard players operation res int += sstemp_x int

# 计算z^2
scoreboard players operation sstemp_x int = damp_z int
scoreboard players operation sstemp_b int = sstemp_x int
scoreboard players operation sstemp_x int /= 10000 int
scoreboard players operation sstemp_b int %= 10000 int
scoreboard players operation sstemp_a int = sstemp_x int
scoreboard players operation sstemp_x int *= sstemp_x int
scoreboard players operation sstemp_x int *= 10000 int
scoreboard players operation sstemp_a int *= sstemp_b int
scoreboard players operation sstemp_a int *= 2 int
scoreboard players operation sstemp_x int += sstemp_a int
scoreboard players operation sstemp_b int *= sstemp_b int
scoreboard players operation sstemp_b int /= 10000 int
scoreboard players operation sstemp_x int += sstemp_b int
scoreboard players operation res int += sstemp_x int