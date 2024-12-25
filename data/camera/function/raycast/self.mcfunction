execute if block ~ ~ ~ air positioned ^ ^ ^.5 run return run function camera:raycast/self

forceload add 0 0
clone ~ ~ ~ ~ ~ ~ 0 0 0
execute at @p run clone 0 0 0 0 0 0 ~ ~ ~
forceload remove 0 0

#* clone ~ ~ ~ ~ ~ ~ to camera:camera_paintings 0 1 0 --> thats how we make use of the custom dimension
