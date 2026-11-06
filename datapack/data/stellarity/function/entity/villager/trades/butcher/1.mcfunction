execute if score #stellarity.config stellarity.config.enable_enderman_flesh matches 1 run function stellarity:entity/villager/trade_editor/add_enderite_buy_for_loot_table {max_uses:14,price_multiplier:0.05,loot_table:"stellarity:item/food/enderman_flesh",buy_a_count:12,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:1}

execute if score #stellarity.config stellarity.config.enable_enderman_flesh matches 0 run function stellarity:entity/villager/trade_editor/add_enderite_buy {max_uses:14,price_multiplier:0.05,buy_a_id:"rotten_flesh",buy_a_count:12,buy_b_id:"air",buy_b_count:1,sell_count:1,xp:1}

