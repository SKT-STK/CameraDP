# execute run spreadplayers 0 0 0 1 false @a[tag=camera.player]
# execute at @n[tag=camera.camera] run tp @a[tag=camera.player] ~ ~ ~ 0 0
function camera:map/overworld_tp with storage camera.map pos
function camera:map/clear with storage camera.map
execute if data storage camera.map item at @a[tag=camera.player] run summon item ~ ~ ~ {Item:{id:dirt},PickupDelay:0}
data modify entity @n[type=item,nbt={Age:0s}] Item set from storage camera.map item
execute as @a[tag=camera.player] run function camera:map/give with storage camera.map

attribute @p[tag=camera.player] movement_speed base set 0.1
attribute @p[tag=camera.player] jump_strength base set 0.42
effect clear @a[tag=camera.player] mining_fatigue

execute at @a[tag=camera.player] run tag @n[tag=camera.camera] remove camera.camera
tag @a[tag=camera.player] remove camera.player
