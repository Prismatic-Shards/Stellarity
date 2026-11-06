# Prismatic Pearl
  execute if entity @s[scores={stellarity.item.prismatic_pearl.cooldown=1..}] run function stellarity:item/prismatic_pearl/cooldown/countdown

execute if entity @s[predicate=stellarity:item/armor/wearing_full_champion_armor,predicate=kohara:player/is_running,predicate=!kohara:player/is_swimming,predicate=!kohara:player/is_sneaking] rotated as @s rotated ~ 0 positioned ^ ^ ^-.33 run function stellarity:item/armor/champion/visuals
execute if entity @s[tag=stellarity.holy_protection] run function stellarity:item/armor/hallowed/visuals
execute if entity @s[predicate=stellarity:item/armor/floral/wearing_full_set,predicate=kohara:player/is_running,predicate=!kohara:player/is_swimming,predicate=!kohara:player/is_sneaking] run function stellarity:item/armor/floral/running_trail

scoreboard players reset @s stellarity.misc.loop.2t
