
# First Trade
  function stellarity:entity/villager/trade_editor/add_enderite_sell_reverse_order {xp:8,max_uses:4,price_multiplier:0.05,buy_a_id:"item_frame",buy_a_count:2,buy_b_count:1,sell:"glow_item_frame",sell_count:2}

# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:6,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"turtle_scute",sell_count:1}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:6,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"armadillo_scute",sell_count:1}

