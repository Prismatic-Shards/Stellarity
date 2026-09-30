# Teleport boss to center of victims
execute at @e[type=shulker,tag=stellarity.shulking.crush_victim,limit=1] run tp @s ~ ~ ~

# Crush all 7 shulkers with immense body weight
execute as @e[type=shulker,tag=stellarity.shulking.crush_victim] run damage @s 1000 mob_attack by @e[type=shulker,tag=stellarity.shulking,limit=1,sort=nearest]

# Heavy ground smash sounds & particles
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.7
playsound minecraft:block.anvil.land hostile @a ~ ~ ~ 2 0.4
playsound minecraft:entity.warden.attack_impact hostile @a ~ ~ ~ 2 0.6

# Cracking floor visuals
particle block{block_state:"minecraft:cracked_stone_bricks"} ~ ~0.2 ~ 3 0.2 3 0.1 120
particle poof ~ ~0.5 ~ 2 0.5 2 0.1 60
particle explosion ~ ~1 ~ 0 0 0 1 0 force @a[distance=..64]

# Emit immediate expanding shockwave
function stellarity:entity/shulking/attacks/shockwave/start

# Shoot 2 bullets from head immediately
execute at @s positioned ~ ~3 ~ run summon shulker_bullet ~ ~ ~
execute at @s positioned ~ ~3 ~ run summon shulker_bullet ~ ~ ~

# Set state back to ground combat
scoreboard players set @s stellarity.shulking.state 0
scoreboard players set @s stellarity.shulking.attack_cooldown 60
