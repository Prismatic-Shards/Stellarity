
# Coal or Blaze Rods -> 1 Enderite Shard
  execute store result score #trade stellarity.misc run random value 1..3

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:12,price_multiplier:0.05,buy_a_id:"coal",buy_a_count:19,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:10,price_multiplier:0.05,buy_a_id:"charcoal",buy_a_count:24,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:2}

execute if score #trade stellarity.misc matches 3 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:10,price_multiplier:0.05,buy_a_id:"blaze_rod",buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:1}

# Randomly trimmed armor
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:2,max_uses:6,price_multiplier:0.2,buy_a_count:9,buy_b_id:"air",buy_b_count:1,sell_count:1,sell:"iron_chestplate",modifier:"stellarity:villager/armorer/iron_armor"}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:2,max_uses:6,price_multiplier:0.2,buy_a_count:7,buy_b_id:"air",buy_b_count:1,sell_count:1,sell:"iron_helmet",modifier:"stellarity:villager/armorer/iron_armor"}


