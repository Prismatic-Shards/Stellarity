$data modify entity @s Offers.Recipes append value {xp:$(xp),maxUses:$(max_uses),rewardExp:1b,priceMultiplier:$(price_multiplier),buy:{id:"minecraft:stone",count:$(buy_a_count)},buyB:{id:"minecraft:$(buy_b_id)",count:$(buy_b_count)},sell:{id:"minecraft:$(sell)",count:$(sell_count)}}
data remove entity @s Offers.Recipes[{buyB:{id:"minecraft:air"}}].buyB

$loot replace entity @s villager.0 loot $(loot_table)
data modify entity @s Offers.Recipes[-1].buy.id set from entity @s Inventory[0].id
data modify entity @s Offers.Recipes[-1].buy.components set from entity @s Inventory[0].components
