scoreboard players operation @s stellarity.status_effects.echo.time = #effect.duration stellarity.misc
scoreboard players operation @s stellarity.status_effects.echo.damage += #echo.damage stellarity.misc

playsound block.sculk_sensor.clicking neutral @a[distance=0..] ~ ~ ~ 0.75 1
playsound block.amethyst_block.place neutral @a[distance=0..] ~ ~ ~ 1 1

tag @s add kohara.status_effect.tick
