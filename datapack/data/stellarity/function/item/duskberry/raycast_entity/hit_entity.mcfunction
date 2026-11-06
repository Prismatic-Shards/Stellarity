scoreboard players set #hit stellarity.misc 1

effect give @s nausea 36
effect give @s weakness 36
effect give @s poison 36

playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.666 1.5
playsound minecraft:entity.blaze.death player @a[distance=0..] ~ ~ ~ 0.666 1.666

particle minecraft:dust_color_transition{from_color: [0.373, 0.373, 0.373], scale: 1.0, to_color: [0.0, 0.0, 0.0]} ~ ~.175 ~ .3 .18 .3 0 80 force
