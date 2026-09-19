scoreboard players set #damage kohara.misc 10

scoreboard players set #is_in_daylight stellarity.misc 0
execute if predicate [{condition:"minecraft:inverted",term:{condition:"minecraft:time_check",clock:"minecraft:overworld",value:{min:12786,max:23460},period:24000}},{"condition":"minecraft:weather_check","raining":false,"thundering":false},{"condition":"minecraft:location_check","predicate":{"dimension":"minecraft:overworld","can_see_sky":true}}] run scoreboard players set #is_in_daylight stellarity.misc 1

# Double damage to undead mobs
  scoreboard players set #mul stellarity.misc 2
  execute if entity @s[type=#minecraft:undead] run scoreboard players operation #damage kohara.misc *= #mul stellarity.misc
  # Extra 2x damage if exposed to sunlight
    execute if score #is_in_daylight stellarity.misc matches 1 run scoreboard players operation #damage kohara.misc *= #mul stellarity.misc

  scoreboard players reset @s stellarity.dot.prismatic_inferno.progress

execute if score #is_in_daylight stellarity.misc matches 0 run function stellarity:util/status_effects/prismatic_inferno/damage_particle/normal
execute if score #is_in_daylight stellarity.misc matches 1 run function stellarity:util/status_effects/prismatic_inferno/damage_particle/exposed_to_daylight

#particle minecraft:flame ~ ~1 ~ .3 .55 .3 0.01 10 force @a[distance=..32]

playsound minecraft:block.amethyst_cluster.break neutral @a[distance=0..] ~ ~ ~ 1 0.9
playsound minecraft:block.amethyst_cluster.break neutral @a[distance=0..] ~ ~ ~ 1 1.2

tag @p[distance=0.01..] add kohara.attacker

data modify entity @s Fire set value 1s

function kohara:damage/calculate {armor_penetration:0,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:dot/prismatic_inferno",tag:"stellarity.damage.dot.prismatic_inferno"}
