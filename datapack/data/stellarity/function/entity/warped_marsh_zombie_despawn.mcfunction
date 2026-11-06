scoreboard players set #slime stellarity.misc 0
execute if predicate kohara:chance/10percent run scoreboard players set #slime stellarity.misc 1

# execute if score #slime stellarity.misc matches 0 run function stellarity:entity/warped_drowned/spawn
  execute if score #slime stellarity.misc matches 1 run summon slime ~ ~ ~

execute on vehicle run tp @s ~ -1000 ~
tp @s ~ -1000 ~

