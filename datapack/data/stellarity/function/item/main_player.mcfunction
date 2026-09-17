# Bows
  execute if entity @s[scores={kohara.shot_bow=3}] run function stellarity:item/check_bow

# Dragonblade
  execute if entity @s[predicate=stellarity:item/holding/dragonblade,predicate=kohara:player/is_sneaking] as @e[type=!#kohara:invalid_targets,distance=0.001..5,tag=stellarity.item.dragonblade.punch_ready] at @s run function stellarity:item/dragonblade/punch/progress

# The Beginning and The End
  execute if entity @s[predicate=stellarity:item/holding/spirit_dagger/both,predicate=stellarity:item/spirit_dagger/looking_at_spirit] run function stellarity:item/spirit_dagger/charge/progress
  execute if entity @s[scores={stellarity.item.spirit_dagger.until_consume_reset=1..}] run function stellarity:item/spirit_dagger/charge/reset_countdown

# Ender Insignia
  execute if entity @s[predicate=stellarity:item/life_crystal_can_heal] run function stellarity:item/life_crystal/heal
  execute if entity @s[tag=stellarity.life_crystal.active,predicate=!stellarity:item/life_crystal_can_heal] run function stellarity:item/life_crystal/stop

# Tamaris
  execute if entity @s[predicate=stellarity:item/holding/tamaris] if entity @n[type=!#kohara:invalid_targets,distance=0.01..10,tag=stellarity.item.tamaris.executable] run function stellarity:item/tamaris/holding_loop

# Soaring Insignia
  execute if entity @s[predicate=stellarity:item/holding/trinket/soaring_insignia] if score #stellarity.config stellarity.config.enable_soaring_insignia matches 1 run function stellarity:item/soaring_insignia/loop
  execute if entity @s[tag=stellarity.insignia.flying,predicate=!stellarity:item/holding/trinket/soaring_insignia] if score #stellarity.config stellarity.config.enable_soaring_insignia matches 1 run function stellarity:item/soaring_insignia/stop_flight
  execute if entity @s[tag=stellarity.insignia.flying] if score #stellarity.config stellarity.config.enable_soaring_insignia matches 0 run function stellarity:item/soaring_insignia/stop_flight

# Kaleidoscope
  execute if entity @s[predicate=stellarity:item/holding/kaleidoscope] run function stellarity:item/kaleidoscope/loop

# Book of Updraft
  execute if entity @s[tag=stellarity.book_of_updraft.animation] run function stellarity:item/spellbooks/updraft/animation

# Prismember
  execute if entity @s[predicate=stellarity:item/holding/prismember] run function stellarity:item/prismember/main
  execute if score @s stellarity.item.prismember.until_charge_reset matches 1.. run function stellarity:item/prismember/charge/reset_charge_countdown

# Copper Elektra Shield
  execute if entity @s[predicate=stellarity:item/holding/trinket/elektra_shield,scores={stellarity.item.elektra_shield.dashes=0..2}] run function stellarity:item/elektra_shield/recharge_dashes

# Chorus Dagger
  execute if entity @s[predicate=stellarity:item/holding/chorus_dagger,predicate=kohara:player/is_sneaking] unless score @s stellarity.item.chorus_dagger.cooldown matches 1.. if entity @e[type=!#kohara:invalid_targets,distance=0.01..8] run function stellarity:item/chorus_dagger/dash

# Harvester
  execute if entity @s[tag=stellarity.cryonics] run function stellarity:item/harvester/abilities/cryonics/loop

# Starless Scythe
  execute if entity @s[predicate=stellarity:item/holding/starless_scythe] run function stellarity:item/starless_scythe/hold/loop
  execute if entity @s[tag=stellarity.item.starless_scythe.holding,predicate=!stellarity:item/holding/starless_scythe] run function stellarity:item/starless_scythe/hold/stop

# Spectral Fury
  execute if entity @s[scores={stellarity.item.spectral_fury.until_charge_reset=1..}] run function stellarity:item/spectral_fury/charge_reset_countdown

# Stellar Striker
  execute if entity @s[predicate=stellarity:item/holding/stellar_striker] run function stellarity:item/stellar_striker/holding/loop
  execute if entity @s[tag=stellarity.holding_stellar_striker,predicate=!stellarity:item/holding/stellar_striker] run function stellarity:item/stellar_striker/holding/stop

# Void Pendant
  execute if entity @s[predicate=stellarity:item/holding/void_pendant/amethyst] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/amethyst/loop

  execute if entity @s[predicate=stellarity:item/holding/void_pendant/diamond] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/diamond/loop
  execute if entity @s[tag=stellarity.void_pendant.diamond,predicate=!stellarity:item/holding/void_pendant/diamond] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/diamond/remove_buff
  execute if entity @s[tag=stellarity.void_pendant.diamond] if score #stellarity.config stellarity.config.enable_void_pendant matches 0 run function stellarity:item/void_pendant/diamond/remove_buff

  execute if entity @s[predicate=stellarity:item/holding/void_pendant/emerald] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/emerald/loop
  execute if entity @s[tag=stellarity.void_pendant.emerald,predicate=!stellarity:item/holding/void_pendant/emerald] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/emerald/remove_buff
  execute if entity @s[tag=stellarity.void_pendant.emerald] if score #stellarity.config stellarity.config.enable_void_pendant matches 0 run function stellarity:item/void_pendant/emerald/remove_buff

  execute if entity @s[predicate=stellarity:item/holding/void_pendant/iron] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/iron/loop
  execute if entity @s[tag=stellarity.void_pendant.iron,predicate=!stellarity:item/holding/void_pendant/iron] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/iron/remove_buff
  execute if entity @s[tag=stellarity.void_pendant.iron] if score #stellarity.config stellarity.config.enable_void_pendant matches 0 run function stellarity:item/void_pendant/iron/remove_buff
  
  execute if entity @s[predicate=stellarity:item/holding/void_pendant/gold] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/gold/loop
  execute if entity @s[tag=stellarity.void_pendant.gold,predicate=!stellarity:item/holding/void_pendant/gold] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/gold/remove_buff
  execute if entity @s[tag=stellarity.void_pendant.gold] if score #stellarity.config stellarity.config.enable_void_pendant matches 0 run function stellarity:item/void_pendant/gold/remove_buff

  execute if entity @s[predicate=stellarity:item/holding/void_pendant/netherite] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/netherite/loop
  execute if entity @s[tag=stellarity.void_pendant.netherite,predicate=!stellarity:item/holding/void_pendant/netherite] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/netherite/remove_buff
  execute if entity @s[tag=stellarity.void_pendant.netherite] if score #stellarity.config stellarity.config.enable_void_pendant matches 0 run function stellarity:item/void_pendant/netherite/remove_buff

  execute if entity @s[predicate=stellarity:item/holding/void_pendant/quartz] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/quartz/loop
  execute if entity @s[tag=stellarity.void_pendant.quartz,predicate=!stellarity:item/holding/void_pendant/quartz] if score #stellarity.config stellarity.config.enable_void_pendant matches 1 run function stellarity:item/void_pendant/quartz/remove_buff
  execute if entity @s[tag=stellarity.void_pendant.quartz] if score #stellarity.config stellarity.config.enable_void_pendant matches 0 run function stellarity:item/void_pendant/quartz/remove_buff
## Armor sets
  # Has to be ticked after everything so
    # that Floral Armor effects can work
      # as intended
        function stellarity:item/armor/main
