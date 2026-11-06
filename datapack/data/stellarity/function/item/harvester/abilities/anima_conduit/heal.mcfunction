tag @s remove stellarity.anima_conduit

# Healing
  execute if score #damage_extra stellarity.misc matches 3 run \
  scoreboard players set #duration stellarity.misc 1

execute if score #damage_extra stellarity.misc matches 6 run \
scoreboard players set #duration stellarity.misc 2

execute if score #damage_extra stellarity.misc matches 11 run \
scoreboard players set #duration stellarity.misc 2

execute if score #damage_extra stellarity.misc matches 14 run \
scoreboard players set #duration stellarity.misc 2

execute if score #damage_extra stellarity.misc matches 78 run \
scoreboard players set #duration stellarity.misc 7

# Saturation
  execute if score #damage_extra stellarity.misc matches 3 run \
  effect give @s[predicate=kohara:chance/15percent] saturation 1 0 true

execute if score #damage_extra stellarity.misc matches 6 run \
effect give @s[predicate=kohara:chance/20percent] saturation 1 0 true

execute if score #damage_extra stellarity.misc matches 11 run \
effect give @s[predicate=kohara:chance/25percent] saturation 2 0 true

execute if score #damage_extra stellarity.misc matches 14 run \
effect give @s[predicate=kohara:chance/30percent] saturation 2 0 true

execute if score #damage_extra stellarity.misc matches 78 run \
effect give @s saturation 6 0 true

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.anima_conduit","smithed.entity","smithed.strict"],potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:5b,duration:1,show_particles:0b,show_icon:0b}]},Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1,custom_particle:{type:"block","block_state":"air"}}
execute store result entity @n[type=area_effect_cloud,tag=stellarity.anima_conduit] potion_contents.custom_effects[{id:"minecraft:regeneration"}].duration int 1 run scoreboard players get #duration stellarity.misc

function stellarity:item/harvester/effects/anima_conduit/heal
