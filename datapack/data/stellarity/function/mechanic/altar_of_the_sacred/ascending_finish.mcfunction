particle flash{color:-214448} ~ ~ ~ 0 0 0 0 0 force @a[distance=..128]
particle explosion ~ ~ ~ 0 0 0 1 0 force @a[distance=..128]
particle end_rod ~ ~ ~ 0 0 0 0.15 35 normal

playsound stellarity:mechanic.altar_of_the_sacred.summon_empress1 block @a[distance=0..] ~ ~ ~ 1.2 1.0
playsound stellarity:mechanic.altar_of_the_sacred.summon_empress2 block @a[distance=0..] ~ ~ ~ 1.2 1.0

scoreboard players set #empress_of_light.is_alive stellarity.misc 1
scoreboard players set #empress_of_light.is_radiant stellarity.misc 0

execute if score #stellarity.config stellarity.config.enable_radiant_empress_of_light matches 1 \
if entity @p[distance=..24,predicate=stellarity:item/holding/kaleidoscope] \
run scoreboard players set #empress_of_light.is_radiant stellarity.misc 1

execute if score #stellarity.config stellarity.config.enable_radiant_empress_of_light matches 1 \
if entity @p[distance=..24,predicate=stellarity:item/holding/radiant_kaleidoscope] \
run scoreboard players set #empress_of_light.is_radiant stellarity.misc 1

execute if score #stellarity.config stellarity.config.enable_radiant_empress_of_light matches 1 \
if entity @s[tag=stellarity.starlight_soot.radiant] \
run scoreboard players set #empress_of_light.is_radiant stellarity.misc 1

kill @s

function stellarity:entity/empress_of_light/summon
