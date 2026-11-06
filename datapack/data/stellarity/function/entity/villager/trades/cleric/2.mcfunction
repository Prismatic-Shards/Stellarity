# First Trade
  function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:8,price_multiplier:0.05,buy_a_id:"gold_ingot",buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:8}

# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {max_uses:10,price_multiplier:0.05,sell:"lapis_lazuli",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell_count:3,xp:5}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {max_uses:12,price_multiplier:0.05,sell:"nether_wart",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell_count:2,xp:3}

