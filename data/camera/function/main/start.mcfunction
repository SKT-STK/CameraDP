advancement grant @a[scores={camera.placed=1..}] only camera:place_camera

execute in camera:camera_paintings run function camera:full_sweep
execute in camera:camera_paintings run forceload add -64 -64 64 64

tag @s remove camera.placed
tag @s add camera.taking_picture

execute in camera:camera_paintings run function camera:summon/markers
execute in camera:camera_paintings as @e[tag=camera.brush] in minecraft:overworld run function camera:summon/armors/self
summon armor_stand ~ ~ ~ {Tags:["camera.legs"],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:dirt,components:{item_model:"camera:camera_legs"}}]}
summon interaction ~ ~-.01 ~ {width:0.51,height:1.995,Tags:["camera.interaction"]}

scoreboard players set % camera.rot.1 -41
execute as @e[tag=camera.camera] run function camera:summon/armors/rot

execute store result score % camera.rot.0 run data get entity @p[scores={camera.placed=1..}] Rotation[0]
scoreboard players remove % camera.rot.0 40
execute as @e[tag=camera.camera] store result entity @s Rotation[0] float 1 run scoreboard players get % camera.rot.0

scoreboard players set % camera.row.x 0
scoreboard players set % camera.row.y 1

scoreboard players reset @a[scores={camera.placed=1..}] camera.placed
