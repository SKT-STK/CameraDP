stopsound @a * entity.armor_stand.place

summon item ~ ~ ~ {Item:{id:armor_stand,components:{item_name:'"Camera"',item_model:"camera:camera",entity_data:{id:"minecraft:armor_stand",Tags:["camera.head","camera.placed"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:dirt,components:{item_model:"camera:camera_head"}}]},max_stack_size:1}}}

tellraw @p[scores={camera.placed=1..}] "You can only place one camera at a time!"

scoreboard players reset @p[scores={camera.placed=1..}] camera.placed

kill @s
