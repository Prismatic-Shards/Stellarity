# get max health and current health
  attribute @s minecraft:max_health modifier remove kohara:heal
  execute store result score #max_health kohara.misc run attribute @s minecraft:max_health get 1000
  execute store result score #current_health kohara.misc run data get entity @s Health 1000

# if your current health is at your max health (or greater somehow), exit the function as there is no need to heal
  execute if score #max_health kohara.misc <= #current_health kohara.misc run return 1

scoreboard players operation #current_health kohara.misc += #heal kohara.misc
scoreboard players operation #max_hp_to_remove kohara.misc = #max_health kohara.misc
scoreboard players operation #max_hp_to_remove kohara.misc -= #current_health kohara.misc

# if this heal will fully heal the player, no need to modify attributes. Just fully heal and exit.
  execute if score #max_hp_to_remove kohara.misc matches ..0 run effect give @s[type=!#minecraft:inverted_healing_and_harm] minecraft:instant_health 1 28 true
  execute if score #max_hp_to_remove kohara.misc matches ..0 run effect give @s[type=#minecraft:inverted_healing_and_harm] minecraft:instant_damage 1 28 true

execute if score #max_hp_to_remove kohara.misc matches ..0 run return 2

#set up and run the macro
execute store result storage kohara:temp heal.amount.x double -0.001 run scoreboard players get #max_hp_to_remove kohara.misc
function kohara:heal/set_hp with storage kohara:temp heal.amount

#heal the health then prepare to remove the attribute modifier
effect give @s[type=!#minecraft:inverted_healing_and_harm] minecraft:instant_health 1 28 true
effect give @s[type=#minecraft:inverted_healing_and_harm] minecraft:instant_damage 1 28 true
tag @s add kohara.healed
scoreboard players set @s kohara.health_reset 0
