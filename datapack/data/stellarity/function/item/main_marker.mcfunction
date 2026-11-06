function stellarity:item/spellbooks/main

# Prismatic Punch
  execute if entity @s[tag=stellarity.prismatic_blast] run function stellarity:item/prismatic_punch/blast_loop

# Starstruck Shield
  execute if entity @s[tag=stellarity.starstruck_shield.star] run function stellarity:item/starstruck_shield/star_loop

# Prismember
  execute if entity @s[tag=stellarity.prismember] run function stellarity:item/prismember/spin/animation/main

# Copper Elektra Shield
  execute if entity @s[tag=stellarity.item.elektra_shield.marker] run function stellarity:item/elektra_shield/dash/as_marker

# Spectral Fury
  execute if entity @s[tag=stellarity.wisp] run function stellarity:item/spectral_fury/wisp/loop

# Stellar Striker
  execute if entity @s[tag=stellarity.star] run function stellarity:item/stellar_striker/star/projectile/loop

# Phantom Item Frame
  execute if score #stellarity.config stellarity.config.enable_phantom_item_frame matches 1 if entity @s[tag=stellarity.phantom_item_frame] run function stellarity:item/phantom_item_frame/main_marker

execute if entity @s[tag=stellarity.satchel_of_voids,tag=!stellarity.satchel_of_voids.stationary] run function stellarity:item/satchel_of_voids/marker_loop
execute if entity @s[tag=stellarity.satchel_of_voids.stationary] run function stellarity:item/satchel_of_voids/marker_loop_stationary
