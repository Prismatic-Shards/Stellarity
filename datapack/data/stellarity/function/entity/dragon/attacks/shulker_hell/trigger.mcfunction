kill @s[type=dragon_fireball]

scoreboard players reset @e[type=ender_dragon,limit=1] stellarity.dragon.shulker_hell

scoreboard players set #total_times stellarity.misc 5
scoreboard players operation #mul stellarity.misc = #difficulty stellarity.misc
scoreboard players set #2 stellarity.misc 2
scoreboard players operation #mul stellarity.misc *= #2 stellarity.misc
scoreboard players operation #total_times stellarity.misc += #mul stellarity.misc
function stellarity:entity/dragon/attacks/shulker_hell/summon_bullets

scoreboard players reset #times stellarity.misc
