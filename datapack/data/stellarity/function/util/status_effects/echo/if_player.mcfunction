scoreboard players add @s stellarity.status_effects.echo.sound_loop 1
execute if score @s stellarity.status_effects.echo.sound_loop matches 1 run playsound stellarity:effect.echo.loop player @s ~ ~ ~ 1 1
execute if score @s stellarity.status_effects.echo.sound_loop matches 140 run scoreboard players reset @s stellarity.status_effects.echo.sound_loop
