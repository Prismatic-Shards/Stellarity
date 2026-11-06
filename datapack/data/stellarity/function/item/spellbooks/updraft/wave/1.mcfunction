scoreboard players add #wave stellarity.misc 1
execute rotated ~10 0 run particle cloud ^ ^ ^ ^ ^ ^10000000000000 0.00000000000003 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 36.. rotated ~10 ~ run function stellarity:item/spellbooks/updraft/wave/1
execute if score #wave stellarity.misc matches 36.. run scoreboard players reset #wave stellarity.misc
