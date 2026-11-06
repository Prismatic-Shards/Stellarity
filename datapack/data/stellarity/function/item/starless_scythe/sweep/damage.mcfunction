# Count hit mobs
  scoreboard players add #sweep_attack_mobs_hit stellarity.misc 1

$damage @s $(damage) minecraft:player_attack by @p[predicate=stellarity:item/holding/starless_scythe]

execute if data entity @s {Health:0f} run scoreboard players add #sweep_attack_mobs_killed stellarity.misc 1

execute if score #cripple_duration stellarity.misc matches 1.. run \
function stellarity:item/starless_scythe/enchant_interactions/cripple/apply_slowdown
