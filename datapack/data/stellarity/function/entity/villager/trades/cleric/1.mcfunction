
# First Trade
  execute store result score #trade stellarity.misc run random value 1..3

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:8,price_multiplier:0.05,buy_a_id:"phantom_membrane",buy_a_count:16,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:3}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_a_id:"bone",buy_a_count:28,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

execute if score #stellarity.config stellarity.config.enable_enderman_flesh matches 1 \
if score #trade stellarity.misc matches 3 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy_for_loot_table {max_uses:12,price_multiplier:0.05,loot_table:"stellarity:item/food/enderman_flesh",buy_a_count:40,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:3}


# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {max_uses:16,price_multiplier:0.05,sell:"redstone",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell_count:4,xp:1}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {max_uses:8,price_multiplier:0.05,sell:"blaze_rod",buy_a_count:2,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}


