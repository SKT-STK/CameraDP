scoreboard players reset @s camera.map

data modify storage camera.map map_id set from entity @s SelectedItem.components."minecraft:map_id"

schedule function camera:map/schedule_tp 10t
schedule function camera:map/get_out 20t
