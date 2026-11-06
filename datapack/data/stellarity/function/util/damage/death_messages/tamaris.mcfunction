execute store result score #msg kohara.misc run random value 1..3

#> EASTER EGG????
  execute at @s if entity @a[sort=nearest,limit=1,distance=0.1..,name="kohara_"] run function stellarity:item/tamaris/execute/animation/rave

# And actual death message lol
  execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"death.attack.stellarity.tamaris_execute.1","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/tamaris]"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"death.attack.stellarity.tamaris_execute.2","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/tamaris]"}]}

execute if score #msg kohara.misc matches 3 run tellraw @a {"translate":"death.attack.stellarity.tamaris_execute.3","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/tamaris]"}]}
