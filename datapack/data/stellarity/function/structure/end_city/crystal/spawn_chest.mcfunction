advancement grant @a[distance=..10] only stellarity:end_city/crystal_crusher

execute if entity @s[tag=stellarity.end_city.crystal_small_tower] positioned ~ ~-1 ~ run function stellarity:structure/end_city/vault_macro {direction: "north"}

execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] \
rotated ~ ~ if block ^ ^ ^2 magenta_stained_glass \
if block ^ ^ ^-2 air positioned ~ ~-1 ~ run function stellarity:structure/end_city/vault_macro {direction: "north"}

execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] \
rotated ~ ~ if block ^ ^ ^-2 magenta_stained_glass \
if block ^ ^ ^2 air positioned ~ ~-1 ~ run function stellarity:structure/end_city/vault_macro {direction: "south"}

execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] \
rotated ~ ~ if block ^ ^ ^2 magenta_stained_glass \
if block ^ ^ ^-2 magenta_stained_glass \
if block ^-2 ^ ^ air positioned ~ ~-1 ~ run function stellarity:structure/end_city/vault_macro {direction: "west"}

execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] \
rotated ~ ~ if block ^ ^ ^2 magenta_stained_glass \
if block ^ ^ ^-2 magenta_stained_glass \
if block ^2 ^ ^ air positioned ~ ~-1 ~ run function stellarity:structure/end_city/vault_macro {direction: "east"}

execute if entity @s[tag=!stellarity.end_city.crystal_small_tower] \
rotated ~ ~ if block ^2 ^ ^ air \
if block ^-2 ^ ^ air \
if block ^ ^ ^-2 air \
if block ^ ^ ^2 air positioned ~ ~-1 ~ run function stellarity:structure/end_city/vault_macro {direction: "north"}

execute unless block ~ ~-1 ~ vault positioned ~ ~-1 ~ run function stellarity:structure/end_city/vault_macro {direction: "north"}

fill ~-1 ~5 ~-1 ~1 ~5 ~1 iron_block replace obsidian
fill ~ ~6 ~ ~ ~6 ~ beacon replace glass
execute if block ~ ~6 ~ beacon run setblock ~ ~7 ~ magenta_stained_glass_pane
execute if block ~ ~6 ~ beacon run summon marker ~ ~6 ~ {Tags:["stellarity.marker","stellarity.end_city.no_beacon"]}

particle flash{color:-1} ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
playsound entity.generic.explode block @a[distance=0..] ~ ~ ~ 1 0.75
playsound minecraft:block.respawn_anchor.deplete block @a[distance=0..] ~ ~ ~ 1 0

advancement grant @a[distance=..48] only stellarity:end_city/crystal_crusher

execute at @s run kill @e[type=interaction,tag=stellarity.end_city.crystal,distance=..4]
execute at @s run kill @e[type=marker,tag=stellarity.end_city.crystal,distance=..4]
execute at @s run kill @e[type=end_crystal,tag=stellarity.end_city.crystal,distance=..4]

execute at @s unless entity @e[type=end_crystal,distance=..200,tag=stellarity.end_city.crystal] run advancement grant @a[distance=..48] only stellarity:end_city/conqueror

kill @s
