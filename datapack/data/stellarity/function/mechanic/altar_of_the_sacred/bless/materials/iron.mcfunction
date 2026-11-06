execute unless entity @s run return 0
execute store result score #count stellarity.misc run data get entity @s Item.count 10
execute as @e[type=item,distance=0.01..2.5,tag=!stellarity.checked] if items entity @s contents minecraft:iron_ingot store result score #extra stellarity.misc run data get entity @s Item.count 10
execute if score #extra stellarity.misc matches 1.. run scoreboard players operation #count stellarity.misc += #extra stellarity.misc
execute as @e[type=item,distance=0.01..2.5,tag=!stellarity.checked] if items entity @s contents minecraft:iron_ingot run kill @s

scoreboard players set #mul stellarity.misc 60

function stellarity:mechanic/altar_of_the_sacred/bless/formula

execute at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.bless","smithed.entity","smithed.strict"],potion_contents:{custom_effects:[{id:"minecraft:resistance",duration:1,show_particles:1b,show_icon:1b,ambient:1b}]},Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}
execute at @p store result entity @n[type=area_effect_cloud,tag=stellarity.bless] potion_contents.custom_effects[{id:"minecraft:resistance"}].duration int 1 run scoreboard players get #time stellarity.misc

kill @s

function stellarity:mechanic/altar_of_the_sacred/bless/sfx
