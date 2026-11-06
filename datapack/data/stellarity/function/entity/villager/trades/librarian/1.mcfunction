
# First Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {xp:2,max_uses:6,price_multiplier:0.05,buy_a_id:"paper",buy_a_count:32,buy_b_id:"air",buy_b_count:1,sell_count:1}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_buy {xp:3,max_uses:8,price_multiplier:0.05,buy_a_id:"book",buy_a_count:3,buy_b_id:"air",buy_b_count:1,sell_count:1}

# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:4,max_uses:8,price_multiplier:0.05,buy_a_count:5,buy_b_id:"air",buy_b_count:1,sell:"bookshelf",sell_count:1}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_reverse_order_with_modifier {xp:8,max_uses:3,price_multiplier:0.2,buy_a_id:"book",buy_a_count:1,buy_b_count:15,sell:"book",sell_count:1,modifier:"stellarity:villager/librarian/novice_enchant"}


