spreadplayers ~ ~ 0 16 true @s

scoreboard players reset @s stellarity.status_effects.creative_shock.failsafe

tag @s add stellarity.creative_shock.failsafe
schedule function stellarity:util/status_effects/creative_shock/failsafe/scheduled 1t
