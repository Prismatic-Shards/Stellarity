# Hallowed Helmet
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.hallowed_ingot,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_helmet,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_hallowed_armor", macro:"craft_weapon", loot:"stellarity:item/armor/hallowed/helmet", parent:"minecraft.netherite_helmet"}

# Hallowed Chestplate
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.hallowed_ingot,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_chestplate,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_hallowed_armor", macro:"craft_weapon", loot:"stellarity:item/armor/hallowed/chestplate", parent:"minecraft.netherite_chestplate"}

# Hallowed Leggings
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_leggings,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.hallowed_ingot,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_hallowed_armor", macro:"craft_weapon", loot:"stellarity:item/armor/hallowed/leggings", parent:"minecraft.netherite_leggings"}

# Hallowed Boots
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_boots,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.hallowed_ingot,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_hallowed_armor", macro:"craft_weapon", loot:"stellarity:item/armor/hallowed/boots", parent:"minecraft.netherite_boots"}

# Champion Helmet
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.chorus_plating,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_helmet,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_champion_armor", macro:"craft_weapon", loot:"stellarity:item/armor/champion/helmet", parent:"minecraft.netherite_helmet"}

# Champion Chestplate
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_chestplate,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.chorus_plating,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_champion_armor", macro:"craft_weapon", loot:"stellarity:item/armor/champion/chestplate", parent:"minecraft.netherite_chestplate"}

# Champion Leggings
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_leggings,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.chorus_plating,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_champion_armor", macro:"craft_weapon", loot:"stellarity:item/armor/champion/leggings", parent:"minecraft.netherite_leggings"}

# Champion Boots
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_boots,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.chorus_plating,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_champion_armor", macro:"craft_weapon", loot:"stellarity:item/armor/champion/boots", parent:"minecraft.netherite_boots"}

# Shulker Helmet
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.shulker_shell,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_helmet,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_shulker_armor", macro:"craft_weapon", loot:"stellarity:item/armor/shulker/helmet", parent:"minecraft.netherite_helmet"}

# Shulker Chestplate
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.shulker_shell,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_chestplate,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_shulker_armor", macro:"craft_weapon", loot:"stellarity:item/armor/shulker/chestplate", parent:"minecraft.netherite_chestplate"}

# Shulker Leggings
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_leggings,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.shulker_shell,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_shulker_armor", macro:"craft_weapon", loot:"stellarity:item/armor/shulker/leggings", parent:"minecraft.netherite_leggings"}

# Shulker Boots
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_boots,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.shulker_shell,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_shulker_armor", macro:"craft_weapon", loot:"stellarity:item/armor/shulker/boots", parent:"minecraft.netherite_boots"}

# Floral Helmet
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.cherry_leaves,scores={stellarity.altar_of_the_accursed.count=8},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_helmet,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_floral_armor", macro:"craft_weapon", loot:"stellarity:item/armor/floral/helmet", parent:"minecraft.netherite_helmet"}

# Floral Chestplate
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_chestplate,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.cherry_leaves,scores={stellarity.altar_of_the_accursed.count=8},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_floral_armor", macro:"craft_weapon", loot:"stellarity:item/armor/floral/chestplate", parent:"minecraft.netherite_chestplate"}

# Floral Leggings
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_leggings,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.cherry_leaves,scores={stellarity.altar_of_the_accursed.count=8},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_floral_armor", macro:"craft_weapon", loot:"stellarity:item/armor/floral/leggings", parent:"minecraft.netherite_leggings"}

# Floral Boots
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_boots,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.cherry_leaves,scores={stellarity.altar_of_the_accursed.count=8},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_floral_armor", macro:"craft_weapon", loot:"stellarity:item/armor/floral/boots", parent:"minecraft.netherite_boots"}

