execute in camera:camera_paintings run forceload add -64 -64 64 64
execute in camera:camera_paintings run fill -64 0 -64 64 0 64 white_concrete
execute in camera:camera_paintings run fill -64 1 -64 64 1 64 white_concrete

tag @s remove camera.placed
tag @s add camera.taking_picture

tag @a[scores={camera.placed=1..}] add camera.player
scoreboard players reset @a[scores={camera.placed=1..}] camera.placed

execute in camera:camera_paintings run function camera:summon/markers
execute in camera:camera_paintings as @e[tag=camera.brush] in minecraft:overworld run function camera:summon/armors/self

scoreboard players set % camera.rot.1 -41
execute as @e[tag=camera.camera] run function camera:summon/armors/rot

execute store result score % camera.rot.0 run data get entity @p[tag=camera.player] Rotation[0]
scoreboard players remove % camera.rot.0 40
execute as @e[tag=camera.camera] store result entity @s Rotation[0] float 1 run scoreboard players get % camera.rot.0

scoreboard players set % camera.row.x 0
scoreboard players set % camera.row.y 1
