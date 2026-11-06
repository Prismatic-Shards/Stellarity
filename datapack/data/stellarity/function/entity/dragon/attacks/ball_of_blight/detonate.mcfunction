damage @p[distance=..2] 10 mob_attack by @n[type=ender_dragon]

particle explosion ~ ~ ~ 0 0 0 0 1 force
particle dragon_breath ~ ~ ~ 0 0 0 0.15 25 normal
particle minecraft:dust_color_transition{from_color: [1.0, 0.0, 0.918], scale: 2.0, to_color: [0.294, 0.0, 0.267]} ~ ~ ~ 0.5 0.5 0.5 1 10 force @a[distance=..64]

playsound entity.dragon_fireball.explode hostile @a[distance=0..] ~ ~ ~ 1 1.2

kill @s
