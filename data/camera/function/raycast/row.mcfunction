execute as @e[tag=camera.hitler] at @s run tp @s -41 ~ ~1

tp @s ~ ~ ~ ~ ~1
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s camera.to_be_rot

scoreboard players add @s camera.cur_step 1
