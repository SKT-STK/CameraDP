scoreboard players add @s camera.raycast_length 1
execute unless score @s camera.raycast_length matches 400 if block ~ ~ ~ #camera:airs positioned ^ ^ ^.5 run return run function camera:raycast/self

clone ~ ~ ~ ~ ~ ~ to camera:camera_paintings 0 3 0
execute at @e[tag=camera.hitler] run clone from camera:camera_paintings 0 3 0 0 3 0 ~ ~ ~

execute if score @s camera.raycast_length matches 400 at @e[tag=camera.hitler] run setblock ~ ~ ~ diamond_block
scoreboard players reset @s camera.raycast_length

scoreboard players add @s camera.cur_step 1
