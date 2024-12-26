execute if score @s camera.cur_step matches 6723 in camera:camera_paintings run return run function camera:raycast/end
# execute if score @s camera.cur_step matches 200 in camera:camera_paintings run return run function camera:raycast/end

execute as @e[tag=camera.hitler] at @s run tp @s ~1 ~ ~

scoreboard players operation @s camera.go_next = @s camera.cur_step
scoreboard players operation @s camera.go_next %= %83 camera.CONST

execute if score @s camera.go_next matches 0 run function camera:raycast/row

execute unless score @s camera.go_next matches 0 anchored eyes run function camera:raycast/self
execute unless score @s camera.go_next matches 0 run tp @s ~ ~ ~ ~1 ~
