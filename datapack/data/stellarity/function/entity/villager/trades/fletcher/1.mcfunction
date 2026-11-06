
# First Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {max_uses:12,price_multiplier:0.05,buy_a_count:2,buy_b_id:"air",buy_b_count:1,sell:"spectral_arrow",sell_count:10,xp:8}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"arrow",sell_count:16,xp:6}

# Second Trade
  function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:12,xp:2,price_multiplier:0.05,buy_a_id:"stick",buy_a_count:48,buy_b_id:"air",buy_b_count:1,sell_count:1}

