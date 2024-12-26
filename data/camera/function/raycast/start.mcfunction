execute in camera:camera_paintings run forceload add -64 -64 64 64
execute in camera:camera_paintings run fill -64 0 -64 64 1 64 white_concrete

tag @s remove camera.placed
tag @s add camera.taking_picture

tag @a[scores={camera.placed=1}] add camera.player
scoreboard players reset @a[scores={camera.placed=1}] camera.placed

execute in camera:camera_paintings run summon marker -40 1 -40 {Tags:["camera.hitler"]}

data modify entity @s Rotation[1] set value -40f
execute store result score @s camera.to_be_rot run data get entity @p Rotation[0]
scoreboard players remove @s camera.to_be_rot 40
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s camera.to_be_rot
scoreboard players set @s camera.cur_step 1
execute at @s anchored eyes run function camera:raycast/self
