# Shulker Pickaxe
execute if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.template,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.shulker_shell,scores={stellarity.altar_of_the_endbound_carapace.count=4},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.netherite_pickaxe,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  run function stellarity:mechanic/altar_of_the_endbound_carapace/crafting/craft {loot:"stellarity:item/tool/shulker_pickaxe",parent:"stellarity.altar_carapace.netherite_pickaxe"}

# Shulker Axe
execute if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.template,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.shulker_shell,scores={stellarity.altar_of_the_endbound_carapace.count=4},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.netherite_axe,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  run function stellarity:mechanic/altar_of_the_endbound_carapace/crafting/craft {loot:"stellarity:item/tool/shulker_axe",parent:"stellarity.altar_carapace.netherite_axe"}

# Shulker Sword
execute if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.template,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.shulker_shell,scores={stellarity.altar_of_the_endbound_carapace.count=4},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.netherite_sword,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  run function stellarity:mechanic/altar_of_the_endbound_carapace/crafting/craft {loot:"stellarity:item/tool/shulker_sword",parent:"stellarity.altar_carapace.netherite_sword"}

# Shulker Spear
execute if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.template,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.shulker_shell,scores={stellarity.altar_of_the_endbound_carapace.count=4},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.netherite_spear,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  run function stellarity:mechanic/altar_of_the_endbound_carapace/crafting/craft {loot:"stellarity:item/tool/shulker_spear",parent:"stellarity.altar_carapace.netherite_spear"}

# Shulker Shovel
execute if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.template,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.shulker_shell,scores={stellarity.altar_of_the_endbound_carapace.count=4},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.netherite_shovel,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  run function stellarity:mechanic/altar_of_the_endbound_carapace/crafting/craft {loot:"stellarity:item/tool/shulker_shovel",parent:"stellarity.altar_carapace.netherite_shovel"}

# Shulker Hoe
execute if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.template,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.shulker_shell,scores={stellarity.altar_of_the_endbound_carapace.count=4},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  if entity @e[type=item,distance=..1.5,tag=stellarity.altar_carapace.netherite_hoe,scores={stellarity.altar_of_the_endbound_carapace.count=1},tag=!stellarity.altar_of_the_endbound_carapace.skip] \
  run function stellarity:mechanic/altar_of_the_endbound_carapace/crafting/craft {loot:"stellarity:item/tool/shulker_hoe",parent:"stellarity.altar_carapace.netherite_hoe"}
