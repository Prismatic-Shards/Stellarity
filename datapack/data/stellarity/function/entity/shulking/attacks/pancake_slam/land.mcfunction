playsound stellarity:entity.shulking.land hostile @a ~ ~ ~ 2 1
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.8
playsound minecraft:block.anvil.land hostile @a ~ ~ ~ 2 0.5

particle block{block_state:"minecraft:cracked_stone_bricks"} ~ ~0.2 ~ 2.5 0.2 2.5 0.1 80
particle poof ~ ~0.5 ~ 2 0.5 2 0.1 50
particle explosion ~ ~1 ~ 0 0 0 1 0 force @a[distance=..64]

# Heavy damage: 16 damage (8 hearts) in radius 5 blocks
execute as @a[distance=..5,gamemode=!creative,gamemode=!spectator] run damage @s 16 mob_attack by @e[type=shulker,tag=stellarity.shulking,limit=1,sort=nearest]

# Spawn side bullets
execute at @s positioned ~1.5 ~1 ~ run summon shulker_bullet ~ ~ ~
execute at @s positioned ~-1.5 ~1 ~ run summon shulker_bullet ~ ~ ~

# Reset state
scoreboard players set @s stellarity.shulking.state 0
scoreboard players set @s stellarity.shulking.attack_cooldown 80
scoreboard players set @s stellarity.shulking.action_timer 0
