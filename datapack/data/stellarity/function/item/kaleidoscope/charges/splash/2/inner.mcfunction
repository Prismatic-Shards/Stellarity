execute store result score #temp stellarity.misc run data get entity @s Fire

## Fire
  scoreboard players set #2 stellarity.misc 2
  scoreboard players operation #fire stellarity.misc = #charge stellarity.misc
  scoreboard players operation #fire stellarity.misc *= #2 stellarity.misc
  execute store result entity @s[nbt={Fire:0s}] Fire short 1 run scoreboard players get #fire stellarity.misc
  # 80% of fire duration
    function kohara:reduce_by_percent {percent:20,holder:"#fire",score:"stellarity.misc"}

  execute if score #temp stellarity.misc matches ..200 store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

## Damage
  scoreboard players set #damage kohara.misc 80
  scoreboard players operation #damage kohara.misc += #charge stellarity.misc
  # 70% of discharge damage
    function kohara:reduce_by_percent {percent:30,holder:"#damage",score:"stellarity.misc"}

  tag @p[predicate=stellarity:item/holding/kaleidoscope] add kohara.attacker

function kohara:damage/calculate {armor_penetration:25,damage_boost_efficiency:50,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:kaleidoscope",tag:"stellarity.damage.kaleidoscope"}
