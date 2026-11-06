scoreboard players remove #stellarity.void_focus stellarity.void_focus.active 3

execute if score #stellarity.void_focus stellarity.void_focus.active matches 258..260 as @a[predicate=stellarity:location/in_the_end] run posteffect remove @s custom:void_focus_phase1
execute if score #stellarity.void_focus stellarity.void_focus.active matches 258..260 as @a[predicate=stellarity:location/in_the_end] run posteffect add @s custom:void_focus_phase2

execute if score #stellarity.void_focus stellarity.void_focus.active matches 178..180 as @a[predicate=stellarity:location/in_the_end] run posteffect remove @s custom:void_focus_phase2
execute if score #stellarity.void_focus stellarity.void_focus.active matches 178..180 as @a[predicate=stellarity:location/in_the_end] run posteffect add @s custom:vignette

execute if score #stellarity.void_focus stellarity.void_focus.active matches 78..80 as @a[predicate=stellarity:location/in_the_end] run posteffect remove @s custom:vignette
execute if score #stellarity.void_focus stellarity.void_focus.active matches 78..80 as @a[predicate=stellarity:location/in_the_end] run posteffect add @s custom:void_focus_phase3

execute if score #stellarity.void_focus stellarity.void_focus.active matches ..0 as @a run posteffect remove @s custom:void_focus_phase1
execute if score #stellarity.void_focus stellarity.void_focus.active matches ..0 as @a run posteffect remove @s custom:void_focus_phase2
execute if score #stellarity.void_focus stellarity.void_focus.active matches ..0 as @a run posteffect remove @s custom:vignette
execute if score #stellarity.void_focus stellarity.void_focus.active matches ..0 as @a run posteffect remove @s custom:void_focus_phase3

execute at @a[predicate=stellarity:location/in_the_end] run particle minecraft:sculk_soul ~ ~1.2 ~ 1.0 0.8 1.0 0.05 4 normal
execute at @a[predicate=stellarity:location/in_the_end] run particle minecraft:witch ~ ~0.4 ~ 0.8 0.3 0.8 0.02 2 normal
execute at @a[predicate=stellarity:location/in_the_end] run particle minecraft:smoke ~ ~1 ~ 1.2 0.6 1.2 0.02 8 normal
execute at @a[predicate=stellarity:location/in_the_end] run particle minecraft:reverse_portal ~ ~0.2 ~ 0.6 0.2 0.6 0.01 3 normal
execute at @a[predicate=stellarity:location/in_the_end] run particle minecraft:portal ~ ~1 ~ 1.2 0.8 1.2 0.3 20 normal
execute at @a[predicate=stellarity:location/in_the_end] run particle minecraft:reverse_portal ~ ~1 ~ 0.8 0.6 0.8 0.08 10 normal
execute at @a[predicate=stellarity:location/in_the_end] run particle minecraft:dragon_breath ~ ~1 ~ 0.8 0.4 0.8 0.03 6 normal
