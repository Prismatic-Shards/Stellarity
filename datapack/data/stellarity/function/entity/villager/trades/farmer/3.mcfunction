# First Trade
  execute if score #stellarity.config stellarity.config.enable_candied_chorus_fruit matches 1 \
  run function stellarity:entity/villager/trade_editor/add_from_loot_table {max_uses:3,price_multiplier:0.2,loot_table:"stellarity:item/food/candied_chorus_fruit",buy_a_count:2,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:20}

# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_reverse_order {max_uses:12,xp:5,price_multiplier:0.05,buy_a_id:"wheat_seeds",buy_a_count:12,buy_b_count:1,sell:"torchflower_seeds",sell_count:4}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_reverse_order {max_uses:8,xp:5,price_multiplier:0.05,buy_a_id:"wheat_seeds",buy_a_count:8,buy_b_count:1,sell:"pitcher_pod",sell_count:3}


