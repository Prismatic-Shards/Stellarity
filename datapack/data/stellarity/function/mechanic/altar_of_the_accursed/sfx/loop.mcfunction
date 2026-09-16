execute unless entity @n[type=marker,tag=stellarity.altar_of_the_accursed.2,distance=..1.5] run summon marker ~ ~ ~ {Tags:["stellarity.altar_of_the_accursed.2","smithed.entity","smithed.strict"]}
execute as @n[type=marker,tag=stellarity.altar_of_the_accursed.2,distance=..1.5] at @s run function stellarity:mechanic/altar_of_the_accursed/sfx/loop_2

tp @s ~ ~ ~ ~5 ~

particle smoke ~ ~-0.3 ~ 0.05 0.3 0.05 0 1 force @a[distance=..96]

particle minecraft:dust_color_transition{from_color: [0.733, 0.0, 1.0], scale: 1.33, to_color: [0.106, 0.0, 0.145]} ^ ^-1 ^1 0 0 0 0 1 force @a[distance=..96]
particle minecraft:dust_color_transition{from_color: [0.733, 0.0, 1.0], scale: 1.33, to_color: [0.106, 0.0, 0.145]} ^ ^-1 ^-1 0 0 0 0 1 force @a[distance=..96]

execute positioned ~ ~-1 ~ if block ~ ~ ~ end_portal_frame[eye=true] run function stellarity:mechanic/altar_of_the_accursed/sfx/replace_eye

execute if predicate kohara:chance/33percent run particle enchant ~ ~ ~ 0 0 0 1 1 force @a[distance=..96]

