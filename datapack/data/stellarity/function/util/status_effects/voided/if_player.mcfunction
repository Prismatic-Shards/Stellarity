summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.voided","smithed.entity","smithed.strict"],potion_contents:{custom_effects:[{id:"minecraft:wither",duration:2,show_icon:0b,show_particles:0b}]},Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1,custom_particle:{type:"block","block_state":"air"}}

scoreboard players add @s stellarity.status_effects.voided.sound_loop 1
execute if score @s stellarity.status_effects.voided.sound_loop matches 1 run playsound stellarity:effect.voided.loop player @s ~ ~ ~ 1 1
execute if score @s stellarity.status_effects.voided.sound_loop matches 140 run scoreboard players reset @s stellarity.status_effects.voided.sound_loop
