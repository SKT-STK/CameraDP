summon armor_stand ~ ~.8 ~ {Tags:["camera.this", "camera.camera"], Small:1b, NoGravity:1b, Invisible:1b}
scoreboard players operation @e[tag=camera.this] camera.id = @s camera.id
tag @e[tag=camera.this] remove camera.this
