execute if entity @s[tag=!stellarity.villager.employed] \
unless data entity @s VillagerData{profession:"minecraft:none"} run function stellarity:entity/villager/mark_as_employed

execute unless entity @s[tag=stellarity.villager.level_2] \
if entity @s[tag=stellarity.villager.employed] \
if data entity @s VillagerData{profession:"minecraft:none"} \
run function stellarity:entity/villager/unemploy

execute if data entity @s VillagerData{level:2} if entity @s[tag=!stellarity.villager.level_2] run function stellarity:entity/villager/update_trades_level_2
execute if data entity @s VillagerData{level:3} if entity @s[tag=!stellarity.villager.level_3] run function stellarity:entity/villager/update_trades_level_3
execute if data entity @s VillagerData{level:4} if entity @s[tag=!stellarity.villager.level_4] run function stellarity:entity/villager/update_trades_level_4
execute if data entity @s VillagerData{level:5} if entity @s[tag=!stellarity.villager.level_5] run function stellarity:entity/villager/update_trades_level_5

execute if data entity @s {Offers:{Recipes:[{buyB:{id:"minecraft:air"}}]}} run data remove entity @s Offers.Recipes[{buyB:{id:"minecraft:air"}}].buyB

