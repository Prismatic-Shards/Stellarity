# Dragonblade
  execute as @e[tag=stellarity.dragonblade_punching] run function stellarity:item/dragonblade/punch/progress_reset_countdown

# Sharanga & Call of The Void
  execute as @e[type=#minecraft:arrows,tag=stellarity.arrow] at @s run function stellarity:loop/projectile_loop

execute as @e[type=item_frame,tag=stellarity.phantom_item_frame] at @s run function stellarity:item/phantom_item_frame/main

execute as @e[type=trident,tag=stellarity.sandstorm_trident,tag=!stellarity.sandstorm_trident.activated] at @s run function stellarity:item/sandstorm_trident/main

execute as @e[type=block_display,tag=stellarity.sandstorm_trident] at @s run function stellarity:item/sandstorm_trident/wind_tunnel/movement/tick_block_display

execute as @e[type=item_display,tag=stellarity.fluffy_hammer] at @s run function stellarity:item/fluffy_hammer/main



