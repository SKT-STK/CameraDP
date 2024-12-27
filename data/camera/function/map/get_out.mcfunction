function camera:map/overworld_tp with storage camera.map pos
function camera:map/clear with storage camera.map
execute as @a[tag=camera.player] run function camera:map/give with storage camera.map

attribute @p[tag=camera.player] movement_speed base set 0.1
attribute @p[tag=camera.player] jump_strength base set 0.42
effect clear @a[tag=camera.player] mining_fatigue
effect clear @a[tag=camera.player] blindness

tag @e[tag=camera.head] remove camera.head
tag @a[tag=camera.player] remove camera.player
