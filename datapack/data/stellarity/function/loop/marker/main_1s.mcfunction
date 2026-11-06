execute if entity @s[tag=stellarity.altar_of_the_sacred] run function stellarity:mechanic/altar_of_the_sacred/main
execute if entity @s[tag=stellarity.book_of_light.aura] as @a[distance=..7] run function stellarity:item/spellbooks/light/effects

scoreboard players reset @s stellarity.misc.loop.1s
