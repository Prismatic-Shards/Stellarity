
# First Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 \
if score #stellarity.config stellarity.config.enable_amethyst_budfish matches 1 run \
function stellarity:entity/villager/trade_editor/add_sell_for_loot_table {xp:4,max_uses:6,price_multiplier:0.05,loot_table:"stellarity:item/food/fish/amethyst_budfish",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"amethyst_shard",sell_count:4}

execute if score #trade stellarity.misc matches 2 \
if score #stellarity.config stellarity.config.enable_amethyst_budfish matches 1 run \
function stellarity:entity/villager/trade_editor/add_sell_for_loot_table {xp:5,max_uses:6,price_multiplier:0.05,loot_table:"stellarity:item/food/fish/amethyst_budfish",buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"quartz",sell_count:8}

# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:6,max_uses:8,price_multiplier:0.05,buy_a_count:2,buy_b_id:"air",buy_b_count:1,sell:"obsidian",sell_count:3}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:6,max_uses:6,price_multiplier:0.05,buy_a_count:2,buy_b_id:"air",buy_b_count:1,sell:"smooth_quartz",sell_count:4}

