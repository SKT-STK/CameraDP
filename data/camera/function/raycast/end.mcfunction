setblock 0 3 0 air

fill -40 1 -40 40 1 40 barrier replace water[level=0]
fill -40 1 -40 40 1 40 moss_block replace air
fill -41 1 -41 41 1 41 white_concrete replace air
fill -41 1 -41 41 1 41 white_concrete replace water
fill -40 1 -40 40 1 40 water[level=0] replace barrier
fill -40 1 41 40 1 43 white_concrete
kill @e[type=item,x=-64,y=0,z=-64,dx=128,dy=2,dz=128]

kill @e[tag=camera.brush]
tag @s remove camera.taking_picture

execute store result storage camera.map pos.x double 1 run data get entity @s Pos[0]
execute store result storage camera.map pos.z double 1 run data get entity @s Pos[2]

playsound camera:block.camera.take_photo block @a ~ ~ ~ 1

forceload remove -64 -64 64 64
return -1
