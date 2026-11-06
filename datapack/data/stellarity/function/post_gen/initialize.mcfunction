execute if score #stellarity.post_gen.initialized stellarity.misc matches 1 run return 0

tag @s[type=marker] add stellarity.post_gen.initialized
scoreboard players set #stellarity.post_gen.initialized stellarity.misc 1

place template stellarity:altar_of_the_accursed 42 67 -48 none none 1 666

execute as @e[type=end_crystal,predicate=stellarity:location/dragons_den/in_biome] at @s run function stellarity:post_gen/remove_crystals

execute positioned 7 60 0 run setblock ~ ~ ~ minecraft:chest[facing=east,type=single,waterlogged=false]{LootTable:"stellarity:dragons_den"} replace
execute positioned 7 60 0 run summon marker ~ ~0.5 ~ {Tags:["stellarity.dragons_den_chest","stellarity.marker","smithed.entity","smithed.strict"]}

scoreboard players set #stellarity.exit_gateway_count stellarity.misc 0

