$data modify entity @s Offers.Recipes append value {xp:$(xp),maxUses:$(max_uses),rewardExp:1b,priceMultiplier:$(price_multiplier),buy:{id:"minecraft:stone",count:$(buy_a_count)},buyB:{components: {"minecraft:item_name": {translate: "item.stellarity.enderite_shard"}, "minecraft:item_model": "stellarity:enderite_shard", "minecraft:lore": ["", {color: "#EEEEEE", italic: 0b, translate: "item.stellarity.enderite_shard.description"}, "", {color: "#EAA7FF", italic: 0b, translate: "Stellarity", font: "stellarity:tooltip"}], "minecraft:rarity": "uncommon", "minecraft:custom_data": {"stellarity:item": "enderite_shard"}}, count: $(buy_b_count), id: "minecraft:endermite_spawn_egg"},sell:{id:"minecraft:stone",count:$(sell_count)}}
$loot replace entity @s mob.inventory.0 loot $(loot_table)
data modify entity @s Offers.Recipes[-1].buy.id set from entity @s Inventory[0].id
data modify entity @s Offers.Recipes[-1].buy.components set from entity @s Inventory[0].components


$loot replace entity @s mob.inventory.0 loot $(loot_table_2)
data modify entity @s Offers.Recipes[-1].sell.id set from entity @s Inventory[0].id
data modify entity @s Offers.Recipes[-1].sell.components set from entity @s Inventory[0].components
