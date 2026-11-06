scoreboard players operation #damage kohara.misc = @s stellarity.status_effects.echo.damage

function kohara:damage/calculate {armor_penetration:0,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing_no_knockback",damage_type:"stellarity:echo",tag:"stellarity.damage.echo"}

execute if score @s stellarity.status_effects.echo.damage matches 30..69 run playsound minecraft:block.sculk_sensor.clicking neutral @a[distance=0..] ~ ~ ~ 1 1
execute if score @s stellarity.status_effects.echo.damage matches 70.. run playsound minecraft:block.sculk_sensor.clicking neutral @a[distance=0..] ~ ~ ~ 1 0.68
execute if score @s stellarity.status_effects.echo.damage matches 70.. run playsound minecraft:entity.warden.attack_impact neutral @a[distance=0..] ~ ~ ~ 1 0.5
execute if score @s stellarity.status_effects.echo.damage matches 70.. run particle sonic_boom ~ ~1.2 ~ 0 0 0 0 1 force @a[distance=..32]

playsound minecraft:block.amethyst_block.resonate master @a[distance=0..] ~ ~1.2 ~ 1 0.5
playsound minecraft:block.amethyst_block.resonate master @a[distance=0..] ~ ~1.2 ~ 1 0.75
playsound minecraft:block.amethyst_block.resonate master @a[distance=0..] ~ ~1.2 ~ 1 1
playsound stellarity:effect.voided.deactivate master @a[distance=0..] ~ ~1.2 ~ 0.5 1

function stellarity:util/status_effects/echo/remove
