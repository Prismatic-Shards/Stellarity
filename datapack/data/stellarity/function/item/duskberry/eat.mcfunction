advancement revoke @s only stellarity:event/item/duskberry/eat

effect give @s darkness 36
effect give @s nausea 36
effect give @s slowness 36
effect give @s mining_fatigue 36
effect give @s weakness 36

playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.666 1.5
playsound minecraft:entity.blaze.death player @a[distance=0..] ~ ~ ~ 0.666 1.666

particle minecraft:dust_color_transition{from_color: [0.373, 0.373, 0.373], scale: 1.0, to_color: [0.0, 0.0, 0.0]} ~ ~1 ~ .3 .55 .3 0 80 force

