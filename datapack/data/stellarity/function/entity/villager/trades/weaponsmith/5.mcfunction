# First Trade

function stellarity:entity/villager/trade_editor/add_enderite_sell_with_modifier {xp:20,max_uses:2,price_multiplier:0.2,buy_a_count:21,buy_b_id:"air",buy_b_count:1,sell:"diamond_axe",sell_count:1,modifier:"stellarity:villager/common/enchant_21_35"}


# Second Trade
  execute store result score #trade stellarity.misc run random value 1..2

execute if score #trade stellarity.misc matches 1 \
if score #stellarity.config stellarity.config.enable_stellar_striker matches 1 run \
function stellarity:entity/villager/trade_editor/add_from_loot_table_reverse_order {xp:25,max_uses:1,price_multiplier:0.2,buy_a_id:"golden_sword",buy_a_count:1,buy_b_count:64,loot_table:"stellarity:item/weapon/stellar_striker",sell_count:1}

