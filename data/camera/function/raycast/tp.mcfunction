data remove entity @n[tag=camera.interaction,nbt={interaction:{}},tag=camera.interaction] interaction
advancement revoke @s only camera:interact_camera

execute if entity @s[nbt=!{SelectedItem:{components:{"minecraft:custom_data":{"camera.canvas":true}}}}] run return -1
execute unless score % camera.row.x matches 82 run return -1
execute unless score % camera.row.y matches 14 run return -1
scoreboard players set % camera.row.x 0
scoreboard players set % camera.row.y 0

tag @s add camera.player

execute in camera:camera_paintings run tp @s 0 3 0
attribute @s movement_speed base set 0
attribute @s jump_strength base set 0
effect give @s mining_fatigue infinite 255 true
effect give @s blindness infinite 255 true
item replace entity @s weapon.mainhand with minecraft:map[item_name='"Blank Picture [LORE]"',lore=['{"text": "Right click to fill the picture!"}']]
