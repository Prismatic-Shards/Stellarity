# First Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #stellarity.config stellarity.config.enable_chorus_juice matches 1 \
if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_from_loot_table {max_uses:8,xp:15,price_multiplier:0.2,buy_a_count:3,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:item/food/chorus_juice",sell_count:1}

execute if score #stellarity.config stellarity.config.enable_chorus_stew matches 1 \
if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_from_loot_table {max_uses:6,xp:15,price_multiplier:0.2,buy_a_count:4,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:item/food/chorus_stew",sell_count:1}

# Second Trade
  execute if score #stellarity.config stellarity.config.enable_fried_chorus_fruit matches 1 run function stellarity:entity/villager/trade_editor/add_from_loot_table {max_uses:8,xp:15,price_multiplier:0.2,buy_a_count:6,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:item/food/fried_chorus_fruit",sell_count:2}

