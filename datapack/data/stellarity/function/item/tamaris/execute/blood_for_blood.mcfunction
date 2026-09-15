# Prevents people from killing through totems / 2 player comboing
  scoreboard players set @s stellarity.item.tamaris.safe_cooldown 3

# Yes, that's 999 damage...
  scoreboard players set #damage kohara.misc 9990

tag @p[predicate=stellarity:item/holding/tamaris] add kohara.attacker

# ...with 100% armor penetration
  function kohara:damage/calculate {armor_penetration:0,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"kohara:armor_piercing",tag:"stellarity.damage.tamaris"}