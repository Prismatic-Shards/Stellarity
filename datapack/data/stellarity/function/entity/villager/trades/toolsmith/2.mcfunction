
# First Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:10,max_uses:3,price_multiplier:0.05,buy_a_count:6,buy_b_id:"air",buy_b_count:1,sell:"iron_axe",sell_count:1,modifier:"stellarity:villager/common/enchant_15_29"}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:10,max_uses:3,price_multiplier:0.05,buy_a_count:6,buy_b_id:"air",buy_b_count:1,sell:"iron_pickaxe",sell_count:1,modifier:"stellarity:villager/common/enchant_15_29"}

# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_from_loot_table {max_uses:6,price_multiplier:0.2,loot_table:"stellarity:item/material/hallowed_ingot",buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:10}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_from_loot_table {max_uses:8,price_multiplier:0.2,loot_table:"stellarity:item/material/chorus_plating",buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:10}

