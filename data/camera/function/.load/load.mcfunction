tellraw @a "Camera Datapack Loaded Successfully!"

scoreboard objectives add camera.raycast_length dummy
scoreboard objectives add camera.placed minecraft.used:minecraft.armor_stand
scoreboard objectives add camera.map minecraft.used:minecraft.map
scoreboard objectives add camera.id dummy
scoreboard objectives add camera.BOOL dummy
scoreboard objectives add camera.rot.0 dummy
scoreboard objectives add camera.rot.1 dummy
scoreboard objectives add camera.row.x dummy
scoreboard objectives add camera.row.y dummy

scoreboard players reset * camera.raycast_length
scoreboard players reset * camera.placed
scoreboard players reset * camera.map
scoreboard players reset * camera.BOOL
