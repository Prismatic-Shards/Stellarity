
# First Trade
  execute if score #stellarity.config stellarity.config.enable_sharanga matches 1 run function stellarity:entity/villager/trade_editor/add_from_loot_table_reverse_order {xp:25,max_uses:2,price_multiplier:0.2,buy_a_id:"bow",buy_a_count:1,buy_b_count:64,loot_table:"stellarity:item/weapon/sharanga",sell_count:1}
  # Second Trade
  # :(

  data modify entity @s Offers.Recipes set from entity @s Offers.Recipes
