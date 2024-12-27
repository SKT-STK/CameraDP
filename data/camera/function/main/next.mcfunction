scoreboard players add % camera.row.x 1
execute as @e[tag=camera.brush] at @s run tp ~1 ~ ~

execute if score % camera.row.y matches 14 if score % camera.row.x matches 82 in camera:camera_paintings run return run function camera:raycast/end
execute if score % camera.row.x matches 82 run function camera:raycast/row

execute as @e[tag=camera.camera] at @s anchored eyes run function camera:raycast/self
execute as @e[tag=camera.camera] at @s run tp @s ~ ~ ~ ~1 ~

execute at @n[tag=camera.camera] run tp @s ~ ~-.8 ~ ~ ~
