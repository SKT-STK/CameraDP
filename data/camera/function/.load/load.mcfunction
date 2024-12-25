tellraw @a "Camera Datapack Loaded Successfully!"

scoreboard objectives add camera.to_be_rot dummy
scoreboard objectives add camera.cur_step dummy
scoreboard objectives add camera.CONST dummy

scoreboard players reset * camera.to_be_rot
scoreboard players reset * camera.cur_step
scoreboard players reset * camera.CONST

scoreboard players set %30 camera.CONST 30
