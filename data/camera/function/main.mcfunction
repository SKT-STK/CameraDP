execute as @e[type=armor_stand,tag=camera.camera,tag=camera.placed] unless entity @e[type=armor_stand,tag=camera.camera,tag=!camera.placed] run function camera:raycast/start
execute as @e[type=armor_stand,tag=camera.taking_picture] at @s run function camera:raycast/next
execute as @a[tag=camera.player,scores={camera.map=1}] at @s run function camera:map/self
