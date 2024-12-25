data modify entity @s Pose set value {Head:[15f,0f,0f]}
execute store result score @s camera.to_be_rot run data get entity @p Rotation[0]
scoreboard players operation @s camera.to_be_rot -= %30 camera.CONST
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s camera.to_be_rot
scoreboard players set @s camera.cur_step 1
execute at @s anchored eyes run function camera:raycast/self
