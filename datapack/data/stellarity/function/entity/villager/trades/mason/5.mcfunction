
# First Trade
  function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:16,max_uses:4,price_multiplier:0.05,buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell:"crying_obsidian",sell_count:2}

# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:12,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"purpur_pillar",sell_count:4}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:12,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"chiseled_quartz_block",sell_count:2}
