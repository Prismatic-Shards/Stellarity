# Cooldowns
  execute if entity @s[scores={stellarity.item.spellbook.conveyance.cooldown=0..}] run function stellarity:item/spellbooks/conveyance/cooldown_countdown
  execute if entity @s[scores={stellarity.item.spellbook.updraft.cooldown=0..}] run function stellarity:item/spellbooks/updraft/cooldown_countdown
  execute if entity @s[scores={stellarity.item.spellbook.light.cooldown=0..}] run function stellarity:item/spellbooks/light/cooldown_countdown
  execute if entity @s[scores={stellarity.item.spellbook.jinx.cooldown=0..}] run function stellarity:item/spellbooks/jinx/cooldown_countdown
  execute if entity @s[scores={stellarity.item.spellbook.return.cooldown=0..}] run function stellarity:item/spellbooks/return/cooldown_countdown
  execute if entity @s[scores={stellarity.item.spellbook.obstruct.cooldown=0..}] run function stellarity:item/spellbooks/obstruct/cooldown_countdown

  execute if entity @s[scores={stellarity.item.void_pendant.glow.cooldown=0..}] run function stellarity:item/void_pendant/amethyst/cooldown_countdown

  execute if entity @s[scores={stellarity.item.tamaris.safe_cooldown=0..}] run scoreboard players remove @s stellarity.item.tamaris.safe_cooldown 1



execute if entity @s[scores={stellarity.item.satchel_of_voids.cooldown=0..}] run scoreboard players remove @s stellarity.item.satchel_of_voids.cooldown 1

execute if entity @s[scores={stellarity.item.harvester.cryonics.cooldown=0..}] run scoreboard players remove @s stellarity.item.harvester.cryonics.cooldown 1

execute if entity @s[tag=stellarity.flesh_piglin.aggro_target] run function stellarity:entity/flesh_piglin/set_follow_range_1s_loop

scoreboard players reset @s stellarity.misc.loop.1s

#scoreboard players add @s stellarity.misc.loop.10s 1
#execute if entity @s[scores={stellarity.misc.loop.10s=10..}] run function stellarity:loop/player/main_10s

# Entities with an known live time

# Obstruct Book Walls
  execute as @e[type=item_display,tag=stellarity.obstruct.walls] unless score @s stellarity.live_time matches -1.. run scoreboard players set @s stellarity.live_time 10
  execute as @e[type=item_display,tag=stellarity.obstruct.walls,scores={stellarity.live_time=0..}] run scoreboard players remove @s stellarity.live_time 1
  execute as @e[type=item_display,tag=stellarity.obstruct.walls,scores={stellarity.live_time=0..}] run function stellarity:item/spellbooks/obstruct/wall_effects
  execute as @e[type=item_display,tag=stellarity.obstruct.walls,scores={stellarity.live_time=-1}] at @s run function stellarity:item/spellbooks/obstruct/despawn
  
  effect give @a[predicate=stellarity:item/holding/void_pendant/amethyst] night_vision 15 0 true
  effect give @a[predicate=stellarity:item/holding/trinket/duskberry] night_vision 15 0 true