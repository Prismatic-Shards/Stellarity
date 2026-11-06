tp @s ~ ~ ~ ~ 10

particle minecraft:dust_color_transition{from_color: [0.82, 0.322, 0.918], scale: 1.0, to_color: [0.549, 0.176, 0.737]} ~ ~1 ~ .3 .5 .3 0 40 force
playsound item.chorus_fruit.teleport player @a[distance=0..] ~ ~ ~

effect give @s speed 5 0 true
effect give @s speed 4 1 true
effect give @s slow_falling 1 0 true
