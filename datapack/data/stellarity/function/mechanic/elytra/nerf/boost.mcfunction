# elytra_nerf.player_data means to check the player's inventory instead now
# #damage stellarity.misc is now in player stellarity.item.elytra.damage

scoreboard players set @s stellarity.item.elytra.damage 0
execute store result score @s stellarity.item.elytra.damage run data get entity @s equipment.chest.components."minecraft:damage" 1

execute if score @s kohara.used_firework matches 1.. run scoreboard players set #temp stellarity.misc 8
execute if score @s kohara.thrown_trident matches 1.. run function stellarity:mechanic/elytra/nerf/trident

execute store result score #unbreaking stellarity.misc run data get entity @s equipment.chest.components."minecraft:enchantments"."minecraft:unbreaking" 1
execute if score #unbreaking stellarity.misc matches 1.. run function stellarity:mechanic/elytra/nerf/unbreaking

scoreboard players operation @s stellarity.item.elytra.damage += #temp stellarity.misc
execute if score @s stellarity.item.elytra.damage matches 431.. run scoreboard players set @s stellarity.item.elytra.damage 430

execute store result storage stellarity:temp elytra_nerf.damage int 1 run scoreboard players get @s stellarity.item.elytra.damage

function stellarity:mechanic/elytra/nerf/apply_damage_macro with storage stellarity:temp elytra_nerf
