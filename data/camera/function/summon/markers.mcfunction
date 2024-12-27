scoreboard players add %global camera.id 1
execute positioned -41 1 -40 summon marker run scoreboard players operation @s camera.id = %global camera.id
scoreboard players add %global camera.id 1
execute positioned -41 1 -39 summon marker run scoreboard players operation @s camera.id = %global camera.id
scoreboard players add %global camera.id 1
execute positioned -41 1 -38 summon marker run scoreboard players operation @s camera.id = %global camera.id
scoreboard players add %global camera.id 1
execute positioned -41 1 -37 summon marker run scoreboard players operation @s camera.id = %global camera.id
scoreboard players add %global camera.id 1
execute positioned -41 1 -36 summon marker run scoreboard players operation @s camera.id = %global camera.id
scoreboard players add %global camera.id 1
execute positioned -41 1 -35 summon marker run scoreboard players operation @s camera.id = %global camera.id

execute as @e[type=marker] store success score @s camera.BOOL run scoreboard players get @s camera.id
execute as @e[type=marker,scores={camera.BOOL=1}] run tag @s add camera.brush
execute as @e[type=marker,scores={camera.BOOL=1}] run scoreboard players reset @s camera.BOOL
