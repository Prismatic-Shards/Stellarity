# Cursed Enchiridion
  execute if score @s stellarity.misc matches 1 \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.enchanted_book,scores={stellarity.altar_of_the_accursed.count=1}] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/items/special/endonomicon

# Chorus Plating
  execute if score @s stellarity.misc matches 2 \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.iron_ingot,scores={stellarity.altar_of_the_accursed.count=1}] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.popped_chorus_fruit,scores={stellarity.altar_of_the_accursed.count=2}] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/craft_generic {loot:"stellarity:item/material/chorus_plating"}

# Enderite Upgrade Smithing Template Duplication
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1}] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.purpur_block,scores={stellarity.altar_of_the_accursed.count=9}] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_shard,scores={stellarity.altar_of_the_accursed.count=5}] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/items/special/smithing_template

# Book of Jinx
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.stellarity.chorus_plating,scores={stellarity.altar_of_the_accursed.count=8},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.book,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_shard,scores={stellarity.altar_of_the_accursed.count=10},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_book_of_jinx", macro:"craft_generic", loot:"stellarity:item/spellbook/book_of_jinx", parent:""}

# Grand Tome of Teleportation
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.ender_pearl,scores={stellarity.altar_of_the_accursed.count=16},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.book,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_shard,scores={stellarity.altar_of_the_accursed.count=32},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_book_of_conveyance", macro:"craft_generic", loot:"stellarity:item/spellbook/book_of_conveyance", parent:""}

# Crest of The End
  execute if score @s stellarity.misc matches 3 \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_smithing_template,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.shield,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_ingot,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_crest_of_the_end", macro:"craft_weapon", loot:"stellarity:item/trinket/crest_of_the_end", parent:"minecraft.shield"}

# Satchel of Voids
  execute if score @s stellarity.misc matches 5 \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.bundle,scores={stellarity.altar_of_the_accursed.count=1},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.stellarity.starlight_soot,scores={stellarity.altar_of_the_accursed.count=64},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.nether_star,scores={stellarity.altar_of_the_accursed.count=2},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_shard,scores={stellarity.altar_of_the_accursed.count=64},tag=!stellarity.altar_of_the_accursed.skip] \
  if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.netherite_ingot,scores={stellarity.altar_of_the_accursed.count=4},tag=!stellarity.altar_of_the_accursed.skip] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/check_scoreboards {scoreboard:"enable_satchel_of_voids", macro:"craft_generic", loot:"stellarity:item/trinket/satchel_of_voids", parent:""}

