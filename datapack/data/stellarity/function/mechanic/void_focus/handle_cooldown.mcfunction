execute unless score #stellarity.void_focus stellarity.void_focus.cooldown matches 1.. store result score #stellarity.void_focus stellarity.void_focus.cooldown run random value 300..1800
scoreboard players remove #stellarity.void_focus stellarity.void_focus.cooldown 1
execute if score #stellarity.void_focus stellarity.void_focus.cooldown matches ..0 if entity @a[predicate=stellarity:location/in_the_end] run function stellarity:mechanic/void_focus/trigger
