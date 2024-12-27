scoreboard players reset @s camera.map

data modify storage camera.map map_id set from entity @s SelectedItem.components."minecraft:map_id"

stopsound @a[tag=camera.player] * minecraft:ui.cartography_table.take_result
playsound camera:block.camera.take_photo block @a[tag=camera.player] ~ ~ ~ 1

schedule function camera:map/schedule_tp 10t
schedule function camera:map/get_out 20t
