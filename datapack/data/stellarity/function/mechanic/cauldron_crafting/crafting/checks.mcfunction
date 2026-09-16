
# Chorus Stew
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:chorus_fruit","minecraft:bowl","minecraft:chorus_flower"],amount:3}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_chorus_stew", macro:"loot_table", loot:"stellarity:item/food/chorus_stew",breath:"2"}

# Experience Bottle
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:glass_bottle","minecraft:lapis_lazuli","minecraft:lapis_lazuli_2"],amount:3}} run function stellarity:mechanic/cauldron_crafting/crafting/results/item {item:"minecraft:experience_bottle",breath:1}

# Golden Chorus Fruit
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:chorus_fruit","minecraft:gold_block"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_golden_chorus_fruit", macro:"loot_table", loot:"stellarity:item/food/golden_chorus_fruit",breath:"3"}

# Candied Chorus Fruit
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:chorus_fruit","minecraft:sugar","minecraft:sugar_2"],amount:3}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_candied_chorus_fruit", macro:"loot_table", loot:"stellarity:item/food/candied_chorus_fruit",breath:"1"}

# Fried Chorus Fruit
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:chorus_fruit","minecraft:wheat","minecraft:blaze_powder"],amount:3}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_fried_chorus_fruit", macro:"loot_table", loot:"stellarity:item/food/fried_chorus_fruit",breath:"1"}

# Grilled Enderman Flesh
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["enderman_flesh","minecraft:blaze_powder"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_grilled_enderman_flesh", macro:"loot_table", loot:"stellarity:item/food/grilled_enderman_flesh",breath:"1"}

# Frozen Carpaccio
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["enderman_flesh","minecraft:ice"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_frozen_carpaccio", macro:"loot_table", loot:"stellarity:item/food/frozen_carpaccio",breath:"1"}

# Chorus Pie
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:chorus_fruit","minecraft:sugar","ender_egg"],amount:3}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_chorus_pie", macro:"loot_table", loot:"stellarity:item/food/chorus_pie",breath:"2"}

# Pho
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["golden_chorus_fruit","minecraft:bowl","grilled_enderman_flesh"],amount:3}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_pho", macro:"loot_table", loot:"stellarity:item/food/pho",breath:"4"}

# Shepherd's Pie
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["shulker_body","minecraft:golden_carrot","minecraft:baked_potato","minecraft:chorus_fruit","minecraft:chorus_fruit"],amount:5}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_shepherd_pie", macro:"loot_table", loot:"stellarity:item/food/shepherd_pie",breath:"5"}

# Sushi
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["ender_koi","minecraft:dried_kelp"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_sushi", macro:"loot_table", loot:"stellarity:item/food/sushi",breath:"1"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["prismite","minecraft:dried_kelp"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_prismatic_sushi", macro:"loot_table", loot:"stellarity:item/food/prismatic_sushi",breath:"2"}

# Chorus Juice
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:chorus_fruit","minecraft:chorus_fruit","minecraft:glass_bottle"],amount:3}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_chorus_juice", macro:"loot_table", loot:"stellarity:item/food/chorus_juice",breath:"2"}

# Blind Rage Potion
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["fleshy_piranha","minecraft:nether_wart","minecraft:glass_bottle","minecraft:glowstone_dust"],amount:4}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_blind_rage_potion", macro:"loot_table", loot:"stellarity:item/potion/blind_rage_potion",breath:"2"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["blind_rage_potion","minecraft:redstone"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_blind_rage_potion", macro:"loot_table", loot:"stellarity:item/potion/blind_rage_potion_ext",breath:"3"}

# Endurance Potion
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:nether_wart","minecraft:glass_bottle","minecraft:iron_ingot","minecraft:popped_chorus_fruit"],amount:4}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_endurance_potion", macro:"loot_table", loot:"stellarity:item/potion/endurance_potion",breath:"2"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["endurance_potion","minecraft:redstone"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_endurance_potion", macro:"loot_table", loot:"stellarity:item/potion/endurance_potion_ext",breath:"3"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["endurance_potion","minecraft:glowstone_dust"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_endurance_potion", macro:"loot_table", loot:"stellarity:item/potion/endurance_potion_ii",breath:"3"}

# Entanglement Potion
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:nether_wart","minecraft:glass_bottle","overgrown_cod","minecraft:gunpowder"],amount:4}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_entanglement_potion", macro:"loot_table", loot:"stellarity:item/potion/entanglement_potion",breath:"2"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["entanglement_potion","minecraft:redstone"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_entanglement_potion", macro:"loot_table", loot:"stellarity:item/potion/entanglement_potion_ext",breath:"3"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["entanglement_potion","minecraft:glowstone_dust"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_entanglement_potion", macro:"loot_table", loot:"stellarity:item/potion/entanglement_potion_ii",breath:"3"}

# Frost Cloud Potion
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["frost_minnow","minecraft:glass_bottle","minecraft:packed_ice","minecraft:packed_ice_2","minecraft:nether_wart"],amount:6}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"frost_cloud_potion", macro:"loot_table", loot:"stellarity:item/potion/frost_cloud_potion",breath:"4"}

# Hellfire Treader Potion
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:nether_wart","minecraft:glass_bottle","flarefin_koi","minecraft:sugar"],amount:4}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_hellfire_treader_potion", macro:"loot_table", loot:"stellarity:item/potion/hellfire_treader_potion",breath:"2"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["hellfire_treader_potion","minecraft:redstone"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_hellfire_treader_potion", macro:"loot_table", loot:"stellarity:item/potion/hellfire_treader_potion_ext",breath:"3"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["hellfire_treader_potion","minecraft:glowstone_dust"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_hellfire_treader_potion", macro:"loot_table", loot:"stellarity:item/potion/hellfire_treader_potion_ii",breath:"3"}

# Lifeforce Potion
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:nether_wart","minecraft:glass_bottle","prismite","starlight_soot"],amount:4}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_lifeforce_potion", macro:"loot_table", loot:"stellarity:item/potion/lifeforce_potion",breath:"3"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["lifeforce_potion","minecraft:redstone"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_lifeforce_potion", macro:"loot_table", loot:"stellarity:item/potion/lifeforce_potion_ext",breath:"4"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["lifeforce_potion","minecraft:glowstone_dust"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_lifeforce_potion", macro:"loot_table", loot:"stellarity:item/potion/lifeforce_potion_ii",breath:"3"}

# Spelunker Potion
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:nether_wart","minecraft:glass_bottle","minecraft:brown_mushroom","minecraft:gold_ingot"],amount:4}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_spelunker_potion", macro:"loot_table", loot:"stellarity:item/potion/spelunker_potion",breath:"2"}
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:nether_wart","minecraft:glass_bottle","minecraft:red_mushroom","minecraft:gold_ingot"],amount:4}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_spelunker_potion", macro:"loot_table", loot:"stellarity:item/potion/spelunker_potion",breath:"2"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["spelunker_potion","minecraft:redstone"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_spelunker_potion", macro:"loot_table", loot:"stellarity:item/potion/spelunker_potion_ext",breath:"3"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["spelunker_potion","minecraft:glowstone_dust"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_spelunker_potion", macro:"loot_table", loot:"stellarity:item/potion/spelunker_potion_ii",breath:"3"}

# Luck Potion
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:nether_wart","minecraft:glass_bottle","minecraft:short_grass","minecraft:short_grass_2","minecraft:diamond"],amount:5}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_luck_potion", macro:"loot_table", loot:"stellarity:item/potion/luck_potion",breath:"5"}

# Poseidon's Nectar
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["bubblefish","minecraft:nautilus_shell","minecraft:prismarine_shard","minecraft:honey_bottle","minecraft:kelp"],amount:5}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_poseidons_nectar", macro:"loot_table", loot:"stellarity:item/potion/poseidons_nectar",breath:"6"}

# Red Potion
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:wither_rose","minecraft:wither_skeleton_skull","minecraft:red_dye","minecraft:sweet_berries","minecraft:nether_wart_block","minecraft:glass_bottle"],amount:6}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_red_potion", macro:"loot_table", loot:"stellarity:item/potion/red_potion",breath:"7"}

# Regeneraga
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["crimson_tigerfish","prismite","minecraft:glistering_melon_slice","minecraft:ghast_tear","minecraft:nether_wart","minecraft:glass_bottle"],amount:6}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_regeneraga", macro:"loot_table", loot:"stellarity:item/potion/regeneraga",breath:"4"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["regeneraga","starlight_soot"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_regeneraga", macro:"loot_table", loot:"stellarity:item/potion/regeneraga_ii",breath:"4"}

# Royal Jelly
  execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:honey_bottle","starlight_soot","minecraft:amethyst_shard","minecraft:amethyst_shard_2"],amount:4}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_royal_jelly", macro:"loot_table", loot:"stellarity:item/potion/royal_jelly",breath:"5"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["royal_jelly","starlight_soot"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/check_scoreboards {scoreboard:"enable_royal_jelly", macro:"loot_table", loot:"stellarity:item/potion/royal_jelly_ii",breath:"3"}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:end_stone","minecraft:dirt"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/results/loot_table {loot:"stellarity:block/ender_dirt",breath:2}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:end_stone","minecraft:rooted_dirt"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/results/loot_table {loot:"stellarity:block/rooted_ender_dirt",breath:2}

execute if data storage stellarity:temp {cauldron_crafting:{ingredients:["minecraft:end_stone","minecraft:grass_block"],amount:2}} run function stellarity:mechanic/cauldron_crafting/crafting/results/loot_table {loot:"stellarity:block/ender_grass_block",breath:2}



