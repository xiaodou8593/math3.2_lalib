#math:quat/_rot_fvec
# 旋转fvec
# 输入fvec{<fvec_x,int,1w>,<fvec_y,int,1w>,<fvec_z,int,1w>}
# 输出fvec{<fvec_x,int,1w>,<fvec_y,int,1w>,<fvec_z,int,1w>}

execute store result score sstemp_iy int store result score sstemp_iz int store result score sstempxw int run scoreboard players operation sstemp_ix int = quat_x int
scoreboard players operation sstemp_ix int *= quat_x int
execute store result score sstemp_jz int store result score sstempyw int run scoreboard players operation sstemp_jy int = quat_y int
scoreboard players operation sstemp_jy int *= quat_y int
execute store result score sstempzw int run scoreboard players operation sstemp_kz int = quat_z int
scoreboard players operation sstemp_kz int *= quat_z int
scoreboard players operation sstempx2 int = sstemp_ix int
scoreboard players operation sstempy2 int = sstemp_jy int
scoreboard players operation sstempw2 int = quat_w int
scoreboard players operation sstempw2 int *= quat_w int
scoreboard players operation sstemp_ix int += sstempw2 int
scoreboard players operation sstemp_ix int -= sstemp_jy int
scoreboard players operation sstemp_ix int -= sstemp_kz int
scoreboard players operation sstemp_jy int += sstempw2 int
scoreboard players operation sstemp_jy int -= sstempx2 int
scoreboard players operation sstemp_jy int -= sstemp_kz int
scoreboard players operation sstemp_kz int += sstempw2 int
scoreboard players operation sstemp_kz int -= sstempx2 int
scoreboard players operation sstemp_kz int -= sstempy2 int

scoreboard players operation sstemp_ix int /= 10000 int
scoreboard players operation sstemp_jy int /= 10000 int
scoreboard players operation sstemp_kz int /= 10000 int

scoreboard players operation sstemp_iy int *= quat_y int
scoreboard players operation sstemp_jx int = sstemp_iy int
scoreboard players operation sstempzw int *= quat_w int
scoreboard players operation sstemp_iy int += sstempzw int
scoreboard players operation sstemp_jx int -= sstempzw int

scoreboard players operation sstemp_iy int /= 5000 int
scoreboard players operation sstemp_jx int /= 5000 int

scoreboard players operation sstemp_iz int *= quat_z int
scoreboard players operation sstemp_kx int = sstemp_iz int
scoreboard players operation sstempyw int *= quat_w int
scoreboard players operation sstemp_iz int -= sstempyw int
scoreboard players operation sstemp_kx int += sstempyw int

scoreboard players operation sstemp_iz int /= 5000 int
scoreboard players operation sstemp_kx int /= 5000 int

scoreboard players operation sstemp_jz int *= quat_z int
scoreboard players operation sstemp_ky int = sstemp_jz int
scoreboard players operation sstempxw int *= quat_w int
scoreboard players operation sstemp_jz int += sstempxw int
scoreboard players operation sstemp_ky int -= sstempxw int

scoreboard players operation sstemp_jz int /= 5000 int
scoreboard players operation sstemp_ky int /= 5000 int

scoreboard players operation sstemp_ix int *= fvec_x int
scoreboard players operation sstemp_iy int *= fvec_x int
scoreboard players operation sstemp_iz int *= fvec_x int
scoreboard players operation sstemp_jx int *= fvec_y int
scoreboard players operation sstemp_jy int *= fvec_y int
scoreboard players operation sstemp_jz int *= fvec_y int
scoreboard players operation sstemp_kx int *= fvec_z int
scoreboard players operation sstemp_ky int *= fvec_z int
scoreboard players operation sstemp_kz int *= fvec_z int

scoreboard players operation sstemp_ix int /= 10000 int
scoreboard players operation sstemp_iy int /= 10000 int
scoreboard players operation sstemp_iz int /= 10000 int
scoreboard players operation sstemp_jx int /= 10000 int
scoreboard players operation sstemp_jy int /= 10000 int
scoreboard players operation sstemp_jz int /= 10000 int
scoreboard players operation sstemp_kx int /= 10000 int
scoreboard players operation sstemp_ky int /= 10000 int
scoreboard players operation sstemp_kz int /= 10000 int

scoreboard players operation fvec_x int = sstemp_ix int
scoreboard players operation fvec_x int += sstemp_jx int
scoreboard players operation fvec_x int += sstemp_kx int

scoreboard players operation fvec_y int = sstemp_iy int
scoreboard players operation fvec_y int += sstemp_jy int
scoreboard players operation fvec_y int += sstemp_ky int

scoreboard players operation fvec_z int = sstemp_iz int
scoreboard players operation fvec_z int += sstemp_jz int
scoreboard players operation fvec_z int += sstemp_kz int