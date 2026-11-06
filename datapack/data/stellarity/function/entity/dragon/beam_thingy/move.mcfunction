particle dragon_breath ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]

tp @s ^ ^ ^0.2

scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 40.. if predicate kohara:chance/6percent run function stellarity:entity/dragon/beam_thingy/rotation/rotate
execute if entity @s[tag=stellarity.rotated] run function stellarity:entity/dragon/beam_thingy/rotation/loop

execute if predicate stellarity:entity/dragon/kill_beam_thingy_range if predicate kohara:chance/7percent run kill @s

execute unless entity @s[tag=stellarity.ticked] run function stellarity:entity/dragon/beam_thingy/spawn_wave
tag @s[tag=!stellarity.ticked] add stellarity.ticked
