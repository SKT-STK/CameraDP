function camera:map/overworld_tp with storage camera.map pos
function camera:map/clear with storage camera.map
execute at @a[tag=camera.player] run summon item ~ ~ ~ {Item:{id:dirt},PickupDelay:0}
data modify entity @n[type=item,nbt={Age:0s}] Item set from storage camera.map item
execute as @a[tag=camera.player] run function camera:map/give with storage camera.map

execute store result entity @n[tag=camera.taking_picture,tag=camera.head] Rotation[0] float 1 run scoreboard players get % camera.rot.0
execute as @e[tag=camera.taking_picture,tag=camera.head] at @s run tp @s ~ ~ ~ ~40 ~

attribute @p[tag=camera.player] movement_speed base set 0.1
attribute @p[tag=camera.player] jump_strength base set 0.42
effect clear @a[tag=camera.player] mining_fatigue

tag @e[tag=camera.taking_picture,tag=camera.head] remove camera.head
tag @e[tag=camera.taking_picture] remove camera.taking_picture
tag @a[tag=camera.player] remove camera.player
