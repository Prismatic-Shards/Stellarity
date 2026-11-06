scoreboard players operation #damage kohara.misc = @s stellarity.status_effects.bloom.damage

tag @p[distance=0.01..] add kohara.attacker

function kohara:damage/calculate {armor_penetration:20,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:bloom",tag:"stellarity.damage.bloom"}

function stellarity:util/status_effects/bloom/remove
