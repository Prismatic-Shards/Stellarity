# First Trade
  execute store result score #trade stellarity.misc run random value 1..3

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:20,max_uses:2,price_multiplier:0.2,buy_a_count:4,buy_b_id:"air",buy_b_count:1,sell:"painting",sell_count:1,modifier:"stellarity:villager/shepherd/fire_painting"}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:20,max_uses:2,price_multiplier:0.2,buy_a_count:4,buy_b_id:"air",buy_b_count:1,sell:"painting",sell_count:1,modifier:"stellarity:villager/shepherd/air_painting"}

execute if score #trade stellarity.misc matches 3 run \
function stellarity:entity/villager/trade_editor/add_from_loot_table {xp:6,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:village/trades/shepherd/wool",sell_count:2}

# Second Trade
  execute store result score #trade stellarity.misc run random value 1..3

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:20,max_uses:2,price_multiplier:0.2,buy_a_count:4,buy_b_id:"air",buy_b_count:1,sell:"painting",sell_count:1,modifier:"stellarity:villager/shepherd/earth_painting"}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:20,max_uses:2,price_multiplier:0.2,buy_a_count:4,buy_b_id:"air",buy_b_count:1,sell:"painting",sell_count:1,modifier:"stellarity:villager/shepherd/water_painting"}

execute if score #trade stellarity.misc matches 3 run \
function stellarity:entity/villager/trade_editor/add_from_loot_table {xp:6,max_uses:8,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:village/trades/shepherd/dye",sell_count:3}

