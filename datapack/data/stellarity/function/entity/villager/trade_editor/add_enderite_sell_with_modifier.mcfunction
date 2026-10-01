$data modify entity @s Offers.Recipes append value {xp:$(xp),maxUses:$(max_uses),rewardExp:1b,priceMultiplier:$(price_multiplier),buy:{components: {"minecraft:item_name": {translate: "item.stellarity.enderite_shard"}, "minecraft:item_model": "stellarity:enderite_shard", "minecraft:lore": ["", {color: "#EEEEEE", italic: 0b, translate: "item.stellarity.enderite_shard.description"}, "", {color: "#eaa7ff", italic: 0b, translate: "Stellarity", font: "stellarity:tooltip"}], "minecraft:rarity": "uncommon", "minecraft:custom_data": {"stellarity:item": "enderite_shard"}, "minecraft:provides_trim_material": "stellarity:enderite", "!minecraft:entity_data": {}}, count: $(buy_a_count), id: "minecraft:endermite_spawn_egg"},buyB:{id:"minecraft:$(buy_b_id)",count:$(buy_b_count)},sell:{id:"minecraft:stone",count:1}}
data remove entity @s Offers.Recipes[{buyB:{id:"minecraft:air"}}].buyB

$item replace entity @s mob.inventory.0 with minecraft:$(sell) $(sell_count)
$item modify entity @s mob.inventory.0 $(modifier)
data modify entity @s Offers.Recipes[-1].sell set from entity @s Inventory[0]

