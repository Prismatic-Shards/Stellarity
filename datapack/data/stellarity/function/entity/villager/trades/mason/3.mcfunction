
# First Trade
  execute store result score #trade stellarity.misc run random value 1..4

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:6,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"polished_blackstone",sell_count:4}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:6,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"polished_deepslate",sell_count:4}

execute if score #trade stellarity.misc matches 3 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {xp:6,max_uses:6,price_multiplier:0.05,buy_a_id:"cobbled_deepslate",buy_a_count:20,buy_b_id:"air",buy_b_count:1,sell_count:1}

execute if score #trade stellarity.misc matches 4 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {xp:6,max_uses:6,price_multiplier:0.05,buy_a_id:"blackstone",buy_a_count:20,buy_b_id:"air",buy_b_count:1,sell_count:1}


# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:8,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"quartz_block",sell_count:4}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:8,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"quartz_pillar",sell_count:3}


