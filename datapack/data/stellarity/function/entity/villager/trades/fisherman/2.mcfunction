# First Trade

function stellarity:entity/villager/trade_editor/add_enderite_buy_for_loot_table {max_uses:8,xp:4,price_multiplier:0.05,loot_table:"stellarity:village/trades/fisherman/apprentice_fish",buy_a_count:6,buy_b_id:"air",buy_b_count:1,sell_count:1}

# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"campfire",sell_count:1,xp:5}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {max_uses:6,price_multiplier:0.05,buy_a_count:2,buy_b_id:"air",buy_b_count:1,sell:"soul_campfire",sell_count:1,xp:8}

