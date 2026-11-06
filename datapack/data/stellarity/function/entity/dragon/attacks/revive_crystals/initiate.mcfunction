tag @s add stellarity.dragon.respawned_crystals

playsound minecraft:entity.zombie_villager.cure block @a[distance=0..] ~ ~ ~ 6 0

summon minecraft:marker 63 101 0 {Tags:["stellarity.crystal","smithed.entity","smithed.strict"]}
summon minecraft:marker 50 122 36 {Tags:["stellarity.crystal","smithed.entity","smithed.strict"]}
summon minecraft:marker 18 95 59 {Tags:["stellarity.crystal","smithed.entity","smithed.strict"]}
summon minecraft:marker -19 107 59 {Tags:["stellarity.crystal","smithed.entity","smithed.strict"]}
summon minecraft:marker -51 106 36 {Tags:["stellarity.crystal","smithed.entity","smithed.strict"]}
summon minecraft:marker -63 94 0 {Tags:["stellarity.crystal","smithed.entity","smithed.strict"]}
summon minecraft:marker -51 101 -39 {Tags:["stellarity.crystal","smithed.entity","smithed.strict"]}
summon minecraft:marker -19 97 -60 {Tags:["stellarity.crystal","smithed.entity","smithed.strict"]}
summon minecraft:marker 18 88 -60 {Tags:["stellarity.crystal","smithed.entity","smithed.strict"]}
summon minecraft:marker 50 96 -39 {Tags:["stellarity.crystal","smithed.entity","smithed.strict"]}

scoreboard players set #total_times stellarity.misc 3
scoreboard players operation #total_times stellarity.misc += #difficulty stellarity.misc

function stellarity:entity/dragon/attacks/revive_crystals/repeat_5
scoreboard players reset #times stellarity.misc

kill @e[type=marker,tag=stellarity.crystal]
