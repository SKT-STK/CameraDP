tellraw @a "Camera Datapack Loaded Successfully!"

scoreboard objectives add camera.to_be_rot dummy
scoreboard objectives add camera.cur_step dummy
scoreboard objectives add camera.CONST dummy
scoreboard objectives add camera.go_next dummy
scoreboard objectives add camera.raycast_length dummy
scoreboard objectives add camera.placed minecraft.used:minecraft.strider_spawn_egg
scoreboard objectives add camera.map minecraft.used:minecraft.map

scoreboard players reset * camera.CONST
scoreboard players reset * camera.go_next
scoreboard players reset * camera.raycast_length
scoreboard players reset * camera.placed
scoreboard players reset * camera.map

scoreboard players set %83 camera.CONST 83

execute in camera:camera_paintings run function camera:.load/in_camera_painting
