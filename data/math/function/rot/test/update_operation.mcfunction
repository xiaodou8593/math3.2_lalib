#math:rot/test/update_operation
# math:rot/test/_update_display调用

scoreboard players operation u int = @s u
scoreboard players operation v int = @s v
function math:uvw/_topos
scoreboard players operation @s nvec_x = kvec_x int
scoreboard players operation @s nvec_y = kvec_y int
scoreboard players operation @s nvec_z = kvec_z int
function math:visual_plane/_update_display