scoreboard players add #wave stellarity.misc 1
execute rotated ~5 0 run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.000000000000055 0 normal
execute unless score #wave stellarity.misc matches 72.. rotated ~5 ~ run function stellarity:item/spellbooks/light/pulse
execute if score #wave stellarity.misc matches 72.. run scoreboard players reset #wave stellarity.misc
