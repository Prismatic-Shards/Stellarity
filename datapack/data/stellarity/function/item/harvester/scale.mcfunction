execute if score #damage stellarity.misc matches 1200.. run return 1

## Extra damage
  # Mostly passive mobs

  execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={minor=true}}] run \
  scoreboard players set #damage_extra stellarity.misc 3
  # Weaker mobs, like e.g. Zombies, Skeletons, Endermen

  execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={small=true}}] run \
  scoreboard players set #damage_extra stellarity.misc 6
  # Stronger foes, like e.g. Creepers, Vindicators

  execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={big=true}}] run \
  scoreboard players set #damage_extra stellarity.misc 11
  # Rarer stronger mobs. Evokers, Illusioners, Ravagers...

  execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={large=true}}] run \
  scoreboard players set #damage_extra stellarity.misc 14
  # Wardens, Withers, datapack bosses

  execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={huge=true}}] run \
  scoreboard players set #damage_extra stellarity.misc 78
  execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={boss=true}}] run \
  scoreboard players set #damage_extra stellarity.misc 78

# Contants

scoreboard players set #3 stellarity.misc 3
scoreboard players set #100 stellarity.misc 100

# Scaling

scoreboard players operation #temp5 stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp5 stellarity.misc /= #100 stellarity.misc
scoreboard players operation #temp5 stellarity.misc /= #3 stellarity.misc
execute unless score #temp5 stellarity.misc matches 0 run scoreboard players operation #damage_extra stellarity.misc /= #temp5 stellarity.misc

execute if score #damage_extra stellarity.misc matches 1.. run function stellarity:item/harvester/continue
