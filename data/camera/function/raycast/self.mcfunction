scoreboard players add @s camera.raycast_length 1
execute unless score @s camera.raycast_length matches 400 if block ~ ~ ~ #camera:airs positioned ^ ^ ^.5 run return run function camera:raycast/self

scoreboard players operation %search camera.id = @s camera.id
execute as @e[tag=camera.brush] if score @s camera.id = %search camera.id run tag @s add camera.this

clone ~ ~ ~ ~ ~ ~ to camera:camera_paintings 0 3 0
execute at @e[tag=camera.this] run clone from camera:camera_paintings 0 3 0 0 3 0 ~ ~ ~

execute if score @s camera.raycast_length matches 400 at @e[tag=camera.this] run setblock ~ ~ ~ diamond_block
scoreboard players reset @s camera.raycast_length

tag @e[tag=camera.this] remove camera.this
