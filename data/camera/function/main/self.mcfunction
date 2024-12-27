execute as @e[type=armor_stand,tag=camera.placed] at @s unless entity @e[type=armor_stand,tag=camera.head,tag=!camera.placed] run function camera:main/start
execute as @e[type=armor_stand,tag=camera.taking_picture] run function camera:main/next
execute as @a[tag=camera.player,scores={camera.map=1}] at @s run function camera:map/self
