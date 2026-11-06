scoreboard players remove @s stellarity.item.spirit_dagger.attract_cooldown 3

execute if score @s stellarity.item.spirit_dagger.attract_cooldown matches ..0 run tag @s remove stellarity.item.spirit_dagger.cooldown

execute anchored eyes rotated ~ 0 run particle entity_effect{color:[1.0,0.9059,0.0431,1.0]} ^ ^1 ^ 0 0 0 1 0 force @a[predicate=stellarity:item/holding/spirit_dagger/any,distance=..90]
execute anchored eyes rotated ~ 0 run particle entity_effect{color:[0.7569,0.3333,0.8118,1.0]} ^ ^1 ^ 0 0 0 1 0 force @a[predicate=stellarity:item/holding/spirit_dagger/any,distance=..90]
execute anchored eyes rotated ~ 0 run particle entity_effect{color:[0.5882,0.8784,0.8902,1.0]} ^ ^1 ^ 0 0 0 1 0 force @a[predicate=stellarity:item/holding/spirit_dagger/any,distance=..90]
