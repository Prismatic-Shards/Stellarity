scoreboard players remove @s stellarity.status_effects.creative_shock.time 1

particle minecraft:witch ~ ~1.2 ~ 0.35 0.5 0.35 10 1
particle minecraft:vault_connection ~ ~2 ~ 0.1 0.1 0.1 2 2

gamemode adventure @s[gamemode=survival]

scoreboard players remove @s[scores={stellarity.status_effects.creative_shock.failsafe=1..}] stellarity.status_effects.creative_shock.failsafe 1
execute \
	unless block ~ ~ ~1 #kohara:non_solid \
	unless block ~ ~ ~-1 #kohara:non_solid \
	unless block ~1 ~ ~ #kohara:non_solid \
	unless block ~-1 ~ ~ #kohara:non_solid \
	unless block ~ ~1 ~1 #kohara:non_solid \
	unless block ~ ~1 ~-1 #kohara:non_solid \
	unless block ~1 ~1 ~ #kohara:non_solid \
	unless block ~-1 ~1 ~ #kohara:non_solid run \
	scoreboard players add @s stellarity.status_effects.creative_shock.failsafe 2

execute if score @s stellarity.status_effects.creative_shock.failsafe matches 140.. run function stellarity:util/status_effects/creative_shock/failsafe/teleport

# title @s actionbar {"score": {"name": "@s","objective": "stellarity.status_effects.creative_shock.failsafe"},"color": "gold"}

execute if score @s stellarity.status_effects.creative_shock.time matches 0 run function stellarity:util/status_effects/creative_shock/remove
