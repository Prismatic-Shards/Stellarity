scoreboard players set @s stellarity.item.spirit_dagger.attract_cooldown 500
tag @s add stellarity.item.spirit_dagger.cooldown
tag @s add stellarity.cooldown_tickdown

summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:1,Tags:["stellarity.spirit_dagger.area_effect_cloud","smithed.entity","smithed.strict"],custom_particle:{type:"block","block_state":"air"}}
execute as @n[type=area_effect_cloud,tag=stellarity.spirit_dagger.area_effect_cloud] at @s run function stellarity:item/spirit_dagger/spirit/as_area_effect_cloud

execute as @p[predicate=stellarity:item/holding/spirit_dagger/any,distance=12..] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 10 0
