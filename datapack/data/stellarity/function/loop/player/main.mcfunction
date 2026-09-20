## Items
  function stellarity:item/main_player

# Totem of Undying gives Levitation when falling out of the world
  execute if score #stellarity.config stellarity.config.enable_totem_void_saving matches 1 run \
  execute if entity @s[predicate=kohara:holding_a_totem,predicate=stellarity:location/in_void] run function stellarity:mechanic/void_totem_protection/save

execute if entity @s[predicate=kohara:player/gliding,tag=!stellarity.elytra.flying] run function stellarity:mechanic/elytra/start_flying
execute if entity @s[tag=stellarity.elytra.flying] run function stellarity:mechanic/elytra/flying

# Timed loops
  scoreboard players add @s stellarity.misc.loop.2t 1
  execute if entity @s[scores={stellarity.misc.loop.2t=2..}] run function stellarity:loop/player/main_2t

scoreboard players add @s stellarity.misc.loop.3t 1
execute if entity @s[scores={stellarity.misc.loop.3t=3..}] run function stellarity:loop/player/main_3t

scoreboard players add @s stellarity.misc.loop.5t 1
execute if entity @s[scores={stellarity.misc.loop.5t=5..}] run function stellarity:loop/player/main_5t

scoreboard players add @s stellarity.misc.loop.1s 1
execute if entity @s[scores={stellarity.misc.loop.1s=20..}] run function stellarity:loop/player/main_1s

execute if entity @s[scores={stellarity.dialog.admin=-2147483648..}] run function stellarity:dialog/admin/check_trigger
scoreboard players enable @s stellarity.dialog.admin