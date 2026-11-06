# 1 base second
  scoreboard players set #duration stellarity.misc 1

# +1 second for each killed mob (sweep attack)
  scoreboard players operation #duration stellarity.misc += #sweep_attack_mobs_killed stellarity.misc

# Get duration to extend
  execute store result score #active_duration stellarity.misc run data get entity @s active_effects[{id:"minecraft:regeneration",amplifier:0b}].duration 0.05

# +2 seconds if not under the Regeneration effect
  execute if score #active_duration stellarity.misc matches 0 run scoreboard players add #duration stellarity.misc 2

# And... well... extend
  scoreboard players operation #duration stellarity.misc += #active_duration stellarity.misc

execute store result storage stellarity:temp starless_scythe.regeneration.duration int 1 run scoreboard players get #duration stellarity.misc
function stellarity:item/starless_scythe/enchant_interactions/regeneration/apply with storage stellarity:temp starless_scythe.regeneration
