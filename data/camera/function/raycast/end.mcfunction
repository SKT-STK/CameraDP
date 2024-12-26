setblock 0 3 0 air

fill -40 1 -40 40 1 40 barrier replace water[level=0]
fill -40 1 -40 40 1 40 moss_block replace air
fill -41 1 -41 41 1 41 white_concrete replace air
fill -41 1 -41 41 1 41 white_concrete replace water
fill -40 1 -40 40 1 40 water[level=0] replace barrier
kill @e[type=item,x=-64,y=0,z=-64,dx=128,dy=2,dz=128]

kill @e[tag=camera.hitler]
tag @s remove camera.taking_picture

execute store result storage camera.map pos.x double 1 run data get entity @s Pos[0]
execute store result storage camera.map pos.z double 1 run data get entity @s Pos[2]

tp @a[tag=camera.player] 0 3 0
attribute @p[tag=camera.player] movement_speed base set 0
attribute @p[tag=camera.player] jump_strength base set 0
effect give @p[tag=camera.player] mining_fatigue infinite 255 true
data modify storage camera.map item set from entity @p[tag=camera.player] SelectedItem
execute unless data entity @p[tag=camera.player] SelectedItem run data remove storage camera.map item
item replace entity @a[tag=camera.player] weapon.mainhand with minecraft:map[item_name='"Blank Picture [LORE]"',lore=['{"text": "Right click to fill the picture!"}']]

forceload remove -64 -64 64 64
return -1
