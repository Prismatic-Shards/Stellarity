summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.item.starless_scythe.cripple","smithed.entity","smithed.strict"],potion_contents:{custom_effects:[{id:"minecraft:slowness",duration:1,show_particles:1b,show_icon:1b,ambient:0b}]},Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}

execute store result entity @n[type=area_effect_cloud,tag=stellarity.item.starless_scythe.cripple] potion_contents.custom_effects[{id:"minecraft:slowness"}].duration int 1 run scoreboard players get #cripple_duration stellarity.misc
