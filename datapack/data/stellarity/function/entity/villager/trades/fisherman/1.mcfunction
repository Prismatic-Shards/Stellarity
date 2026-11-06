
# First Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:1,xp:10,price_multiplier:0.05,buy_a_id:"fishing_rod",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell_count:2}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {max_uses:2,price_multiplier:0.05,buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell:"fishing_rod",sell_count:1,xp:4}

# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:6,xp:5,price_multiplier:0.05,buy_a_id:"string",buy_a_count:30,buy_b_id:"air",buy_b_count:1,sell_count:1}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:8,xp:5,price_multiplier:0.05,buy_a_id:"coal",buy_a_count:24,buy_b_id:"air",buy_b_count:1,sell_count:1}

