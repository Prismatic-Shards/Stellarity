
# First Trade
  execute store result score #trade stellarity.misc run random value 1..4

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:8,price_multiplier:0.05,buy_a_id:"wheat",buy_a_count:24,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:8,price_multiplier:0.05,buy_a_id:"potato",buy_a_count:32,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:3}

execute if score #trade stellarity.misc matches 3 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:8,price_multiplier:0.05,buy_a_id:"carrot",buy_a_count:32,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:3}

execute if score #trade stellarity.misc matches 4 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:10,price_multiplier:0.05,buy_a_id:"beetroot",buy_a_count:20,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

# Second Trade
  function stellarity:entity/villager/trade_editor/add_enderite_sell {max_uses:12,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"bread",sell_count:6,xp:2}

