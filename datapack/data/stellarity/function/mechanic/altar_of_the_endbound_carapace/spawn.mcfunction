setblock ~ ~ ~ crying_obsidian

summon marker ~ ~1 ~ {Tags:["stellarity.altar_of_the_endbound_carapace","stellarity.marker","smithed.entity","smithed.strict"]}

summon item_display ~ ~0.5 ~ {item:{id:"minecraft:crying_obsidian",count:1},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f],right_rotation:[0f,0f,0f,1f]},Tags:["stellarity.altar_of_the_endbound_carapace_display","smithed.entity","smithed.strict"]}

particle dragon_breath ~ ~1 ~ 1 0.5 1 0.05 60
particle end_rod ~ ~1.5 ~ 0.5 0.5 0.5 0.05 30
playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 1.5 1.1
playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 1.5 0.7
