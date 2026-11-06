
# First Trade
  execute store result score #trade stellarity.misc run random value 1..3

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {xp:2,max_uses:12,price_multiplier:0.05,buy_a_id:"coal",buy_a_count:20,buy_b_id:"air",buy_b_count:1,sell_count:1}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {xp:3,max_uses:12,price_multiplier:0.05,buy_a_id:"charcoal",buy_a_count:24,buy_b_id:"air",buy_b_count:1,sell_count:1}

execute if score #trade stellarity.misc matches 3 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {xp:4,max_uses:6,price_multiplier:0.05,buy_a_id:"blaze_rod",buy_a_count:6,buy_b_id:"air",buy_b_count:1,sell_count:1}

# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:8,max_uses:3,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:5,sell:"iron_hoe",sell_count:1,modifier:"stellarity:villager/common/enchant_15_29"}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:8,max_uses:3,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:5,sell:"iron_shovel",sell_count:1,modifier:"stellarity:villager/common/enchant_15_29"}

