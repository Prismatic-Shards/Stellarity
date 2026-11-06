# First Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:25,max_uses:2,price_multiplier:0.2,buy_a_count:21,buy_b_id:"air",buy_b_count:1,sell:"diamond_axe",sell_count:1,modifier:"stellarity:villager/common/enchant_21_35"}

execute if score #trade stellarity.misc matches 2 run \
function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:25,max_uses:2,price_multiplier:0.2,buy_a_count:20,buy_b_id:"air",buy_b_count:1,sell:"diamond_pickaxe",sell_count:1,modifier:"stellarity:villager/common/enchant_21_35"}

# Second Trade
# No second trade

