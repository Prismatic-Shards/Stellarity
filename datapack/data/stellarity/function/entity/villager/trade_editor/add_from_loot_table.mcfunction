$data modify entity @s Offers.Recipes append value {xp:$(xp),maxUses:$(max_uses),rewardExp:1b,priceMultiplier:$(price_multiplier),buy:{components: {"minecraft:item_name": {translate: "item.stellarity.enderite_shard"}, "minecraft:item_model": "stellarity:enderite_shard", "minecraft:lore": ["", {color: "#EEEEEE", italic: 0b, translate: "item.stellarity.enderite_shard.description"}, "", {color: "#CC26FF", italic: 1b, translate: "Stellarity"}], "minecraft:rarity": "uncommon", "minecraft:custom_data": {"stellarity:item": "enderite_shard"}}, count: $(buy_a_count), id: "minecraft:amethyst_shard"},buyB:{id:"minecraft:$(buy_b_id)",count:$(buy_b_count)},sell:{id:"minecraft:stone",count:$(sell_count)}}
data remove entity @s Offers.Recipes[{buyB:{id:"minecraft:air"}}].buyB

$loot replace entity @s mob.inventory.0 loot $(loot_table)
data modify entity @s Offers.Recipes[-1].sell.id set from entity @s Inventory[0].id
data modify entity @s Offers.Recipes[-1].sell.components set from entity @s Inventory[0].components
