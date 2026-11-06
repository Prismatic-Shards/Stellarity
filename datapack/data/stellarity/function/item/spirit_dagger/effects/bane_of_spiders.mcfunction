scoreboard players set #base stellarity.misc 30
scoreboard players set #10 stellarity.misc 10
scoreboard players operation #add stellarity.misc = #bane stellarity.misc
scoreboard players operation #add stellarity.misc *= #10 stellarity.misc
scoreboard players operation #base stellarity.misc += #add stellarity.misc
execute store result storage stellarity:temp spirit_dagger.bane int 1 run scoreboard players get #base stellarity.misc

# Randomizes time with a macro
  function stellarity:item/spirit_dagger/effects/bane_of_spiders_random with storage stellarity:temp spirit_dagger

effect give @s minecraft:slowness 1 3 false
execute store result entity @s active_effects[{id:"minecraft:slowness",amplifier:3b}].duration int 1 run scoreboard players get #duration stellarity.misc
