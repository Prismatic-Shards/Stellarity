execute store result score #temp stellarity.misc run data get entity @s Fire

scoreboard players set #fire stellarity.misc 260
function kohara:reduce_by_percent {percent:35,holder:"#fire",score:"stellarity.misc"}

execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

# Base discharge damage: 30
  scoreboard players set #damage kohara.misc 300
  function kohara:reduce_by_percent {percent:50,holder:"#damage",score:"stellarity.misc"}

tag @p[predicate=stellarity:item/holding/kaleidoscope] add kohara.attacker

function kohara:damage/calculate {armor_penetration:35,damage_boost_efficiency:50,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:kaleidoscope",tag:"stellarity.damage.kaleidoscope"}
