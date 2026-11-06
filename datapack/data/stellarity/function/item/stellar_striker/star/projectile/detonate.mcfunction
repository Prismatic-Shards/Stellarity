execute as @n[type=!#kohara:invalid_targets,dx=0] at @s run function stellarity:item/stellar_striker/star/projectile/damage/direct_hit
execute as @e[type=!#kohara:invalid_targets,distance=..3,tag=!stellarity.stellar_striker.no_splash] at @s run function stellarity:item/stellar_striker/star/projectile/damage/splash

tag @e[type=!#kohara:invalid_targets,tag=stellarity.stellar_striker.no_splash] remove stellarity.stellar_striker.no_splash

particle gust ~ ~ ~ 0 0 0 0.4 1 force
particle end_rod ~ ~ ~ 0 0 0 0.12 22 force
particle poof ~ ~ ~ 1 1 1 0 8 force

execute if entity @s[tag=stellarity.casket] run particle smoke ~ ~ ~ 1 1 1 0 16 force

playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 0.5 1.8
playsound minecraft:entity.breeze.wind_burst player @a[distance=0..] ~ ~ ~ 0.5 1

scoreboard players set @s stellarity.misc2 1
