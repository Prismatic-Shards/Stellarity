
# First Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_reverse_order_with_modifier {xp:20,max_uses:2,price_multiplier:0.2,buy_a_id:"book",buy_a_count:1,buy_b_count:40,sell:"book",sell_count:1,modifier:"stellarity:villager/librarian/expert_enchant"}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:6,max_uses:6,price_multiplier:0.05,buy_a_count:1,buy_b_id:"air",buy_b_count:1,sell:"writable_book",sell_count:1}

# Second Trade
  function stellarity:entity/villager/trade_editor/add_enderite_sell {xp:6,max_uses:3,price_multiplier:0.05,buy_a_count:7,buy_b_id:"air",buy_b_count:1,sell:"name_tag",sell_count:1}

