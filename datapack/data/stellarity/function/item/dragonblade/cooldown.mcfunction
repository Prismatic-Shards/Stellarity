scoreboard players remove @s stellarity.item.dragonblade.cooldown 3

execute if score @s stellarity.item.dragonblade.cooldown matches ..0 run tag @s remove stellarity.item.dragonblade.cooldown

execute anchored eyes rotated ~ 0 run particle smoke ^ ^1 ^ 0 0 0 .03 2 force @a[predicate=stellarity:item/holding/dragonblade]
