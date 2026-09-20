# Shulker Pickaxe
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.shulker_shell,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_pickaxe,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_shulker_tools", macro:"craft_weapon", loot:"stellarity:item/tool/shulker_pickaxe", parent:"minecraft.netherite_pickaxe"}

# Shulker Axe
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_axe,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.shulker_shell,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_shulker_tools", macro:"craft_weapon", loot:"stellarity:item/tool/shulker_axe", parent:"minecraft.netherite_axe"}

# Shulker Shovel
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.shulker_shell,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_shovel,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_shulker_tools", macro:"craft_weapon", loot:"stellarity:item/tool/shulker_shovel", parent:"minecraft.netherite_shovel"}

# Shulker Hoe
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_hoe,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.shulker_shell,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_shulker_tools", macro:"craft_weapon", loot:"stellarity:item/tool/shulker_hoe", parent:"minecraft.netherite_hoe"}

