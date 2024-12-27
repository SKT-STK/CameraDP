scoreboard players add % camera.row.y 1
scoreboard players set % camera.row.x 1
execute as @e[tag=camera.brush] at @s run tp -40 ~ ~6

execute as @e[tag=camera.camera] at @s run tp @s ~ ~ ~ ~ ~6
execute as @e[tag=camera.camera] store result entity @s Rotation[0] float 1 run scoreboard players get % camera.rot.0
