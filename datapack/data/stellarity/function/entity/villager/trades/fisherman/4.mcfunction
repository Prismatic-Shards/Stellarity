# First Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {max_uses:2,price_multiplier:0.2,buy_a_count:10,buy_b_id:"air",buy_b_count:1,sell:"book",sell_count:1,modifier:"stellarity:villager/fisherman/enchant_lure",xp:10}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {max_uses:2,price_multiplier:0.2,buy_a_count:13,buy_b_id:"air",buy_b_count:1,sell:"book",sell_count:1,modifier:"stellarity:villager/fisherman/enchant_luck",xp:10}

# Second Trade
  function stellarity:entity/villager/trade_editor/add_from_loot_table {max_uses:6,xp:15,price_multiplier:0.2,buy_a_count:14,buy_b_id:"air",buy_b_count:1,loot_table:"stellarity:item/tool/fisher_of_voids",sell_count:1}

