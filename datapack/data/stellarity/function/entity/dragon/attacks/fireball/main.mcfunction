# Ticked directly from marker loop

# Yass gurl, cool acceleration thingy
  execute unless score @s stellarity.misc matches ..2147483647 run scoreboard players set @s stellarity.misc 20
  execute store result storage stellarity:temp dragon_fireball.distance float 0.01 run scoreboard players get @s stellarity.misc
  function stellarity:entity/dragon/attacks/fireball/move with storage stellarity:temp dragon_fireball
  scoreboard players add @s[scores={stellarity.misc=..80}] stellarity.misc 2

# Debug
#particle block_marker{block_state: 'minecraft:barrier'} ~ ~ ~ 0 0 0 0 1 force

particle minecraft:dust_color_transition{from_color: [0.671, 0.0, 0.757], scale: 3.0, to_color: [0.271, 0.0, 0.353]} ~ ~ ~ .1 .1 .1 1 1 force @a[distance=..128]
particle dragon_breath ~ ~ ~ .1 .1 .1 .03 1 force @a[distance=..128]

scoreboard players add @s stellarity.misc2 1
kill @s[scores={stellarity.misc2=200..}]
