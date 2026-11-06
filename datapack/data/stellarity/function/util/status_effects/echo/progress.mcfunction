scoreboard players remove @s stellarity.status_effects.echo.time 1

particle minecraft:dust{color:[0.7019607843137254, 0.5568627450980392, 0.9529411764705882], scale:2.0} ~ ~1.2 ~ 0.1 0.1 0.1 0.02 1
particle minecraft:dust{color:[0.8117647058823529, 0.6274509803921569, 0.9529411764705882], scale:1.0} ~ ~1.2 ~ 0.4 0.4 0.4 0.02 1

execute if score @s stellarity.status_effects.echo.damage matches 30.. run particle minecraft:dust{color:[0.00784313725490196, 0.25098039215686274, 0.3137254901960784], scale:1.5} ~ ~1.2 ~ 0.25 0.25 0.25 0.02 1
execute if score @s stellarity.status_effects.echo.damage matches 70.. run function stellarity:util/status_effects/echo/heartbeat

execute if entity @s[type=player] run function stellarity:util/status_effects/voided/if_player

execute if score @s stellarity.status_effects.echo.time matches 0 run function stellarity:util/status_effects/echo/damage
