scoreboard players remove @s stellarity.item.spirit_dagger.effects_duration 5
execute if score @s stellarity.item.spirit_dagger.effects_duration matches ..0 run function stellarity:item/spirit_dagger/effects/reset/reset
