# Spectral Fury
  execute if score @s stellarity.misc matches 4 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.diamond,scores={stellarity.altar_of_the_accursed.count=3},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.phantom_membrane,scores={stellarity.altar_of_the_accursed.count=8},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.sharanga,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_spectral_fury", macro:"craft_weapon", loot:"stellarity:item/weapon/spectral_fury", parent:"stellarity.sharanga"}

# Sandstorm Trident
  execute if score @s stellarity.misc matches 4 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.sand_rune,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.trident,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.breeze_rod,scores={stellarity.altar_of_the_accursed.count=2},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_sandstorm_trident", macro:"craft_weapon", loot:"stellarity:item/weapon/sandstorm_trident", parent:"minecraft.trident"}

# Tamaris
  execute if score @s stellarity.misc matches 4 \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_sword,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_shard,scores={stellarity.altar_of_the_accursed.count=8},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_of_the_accursed.minecraft.wither_skeleton_skull,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_tamaris", macro:"craft_weapon", loot:"stellarity:item/weapon/tamaris", parent:"minecraft.netherite_sword"}

