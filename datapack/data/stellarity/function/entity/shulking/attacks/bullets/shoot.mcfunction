execute if score @s stellarity.shulking.phase matches ..5 run scoreboard players set @s stellarity.shulking.bullet_cooldown 65
execute if score @s stellarity.shulking.phase matches 6.. run scoreboard players set @s stellarity.shulking.bullet_cooldown 35

playsound stellarity:entity.shulking.shoot_bullet hostile @a ~ ~ ~ 2 1
playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 1.5 0.8

execute if score @s stellarity.shulking.phase matches ..3 at @a[distance=..40,gamemode=!creative,gamemode=!spectator] positioned ~ ~12 ~ run summon shulker_bullet ~ ~ ~

execute if score @s stellarity.shulking.phase matches 4.. at @s positioned ~ ~3 ~ run summon shulker_bullet ~ ~ ~
execute if score @s stellarity.shulking.phase matches 4.. at @s positioned ~ ~3 ~ run summon shulker_bullet ~ ~ ~
