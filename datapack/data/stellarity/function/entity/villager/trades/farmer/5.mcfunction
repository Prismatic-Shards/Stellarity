# First Trade
  execute if score #stellarity.config stellarity.config.enable_pho matches 1 \
  run function stellarity:entity/villager/trade_editor/add_from_loot_table {max_uses:3,xp:25,price_multiplier:0.2,buy_a_count:14,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:item/food/pho",sell_count:1}

# Second Trade - 20% Chance
  execute store result score #trade stellarity.misc run random value 1..5

execute if score #stellarity.config stellarity.config.enable_loaf_of_plenty matches 1 \
if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_from_loot_table_reverse_order {max_uses:2,xp:50,price_multiplier:0.2,buy_a_id:"bread",buy_a_count:10,buy_b_count:64,loot_table:"stellarity:item/food/loaf_of_plenty",sell_count:1}

