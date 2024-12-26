forceload add -64 -64 64 64
fill -64 0 -64 64 0 64 white_concrete
fill -64 1 -64 64 1 64 white_concrete
fill -64 4 -64 64 4 64 light[level=15]
setblock 0 2 0 glass
fill -1 3 -1 1 3 1 glass
setblock 0 3 0 air
setblock -65 0 -65 glass
forceload remove -64 -64 64 64
