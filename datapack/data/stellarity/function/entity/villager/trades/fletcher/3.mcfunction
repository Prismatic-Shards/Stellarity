
# First Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:12,xp:4,price_multiplier:0.05,buy_a_id:"string",buy_a_count:18,buy_b_id:"air",buy_b_count:1,sell_count:1}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:6,xp:6,price_multiplier:0.05,buy_a_id:"feather",buy_a_count:10,buy_b_id:"air",buy_b_count:1,sell_count:1}

# Second Trade
  function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {max_uses:2,price_multiplier:0.2,buy_a_count:10,buy_b_id:"air",buy_b_count:1,sell:"crossbow",sell_count:1,modifier:"stellarity:villager/common/enchant_15_29",xp:12}

