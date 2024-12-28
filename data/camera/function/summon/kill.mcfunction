advancement revoke @s only camera:hit_camera

kill @e[tag=camera.brush]
kill @e[tag=camera.camera]
kill @e[tag=camera.legs]
kill @e[tag=camera.head]

give @s armor_stand[item_name='"Camera"',item_model="camera:camera",entity_data={id:"minecraft:armor_stand",Tags:["camera.head","camera.placed"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:dirt,components:{item_model:"camera:camera"}}]},max_stack_size=1] 1

playsound entity.armor_stand.break block @a ~ ~ ~ 1 1

kill @n[tag=camera.interaction,nbt={attack:{}},tag=camera.interaction]

execute in camera:camera_paintings run function camera:full_sweep
