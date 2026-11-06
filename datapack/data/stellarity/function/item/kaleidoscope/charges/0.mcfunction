# Used only if charge is under 33%
  execute store result score #temp stellarity.misc run data get entity @s Fire

scoreboard players set #fire stellarity.misc 40
execute if score #temp stellarity.misc matches ..40 store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

particle end_rod ^ ^ ^ 0 0 0 0.02 8
particle flame ^ ^ ^ 0 0 0 0.02 13
particle cloud ^ ^ ^ 0 0 0 0.02 3

scoreboard players reset @p[predicate=stellarity:item/holding/kaleidoscope] stellarity.item.kaleidoscope.charge_progress
scoreboard players reset @p[predicate=stellarity:item/holding/kaleidoscope] stellarity.item.kaleidoscope.charge
