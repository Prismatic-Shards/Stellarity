
# First Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_from_loot_table {xp:6,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:village/trades/shepherd/carpet",sell_count:5}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_from_loot_table {xp:6,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:village/trades/shepherd/wool",sell_count:2}

# Second Trade
  function stellarity:entity/villager/trade_editor/add_from_loot_table {xp:10,max_uses:4,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:village/trades/shepherd/bed",sell_count:1}

