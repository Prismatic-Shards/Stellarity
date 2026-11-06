scoreboard players set #damage kohara.misc 10
scoreboard players operation #damage kohara.misc *= @s stellarity.status_effects.brittle.level

execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,model:"stellarity:_particle/brittle",despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,id:brittle}
execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,model:"stellarity:_particle/brittle",despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,id:brittle}
execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,model:"stellarity:_particle/brittle",despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,id:brittle}
execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,model:"stellarity:_particle/brittle",despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,id:brittle}
execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,model:"stellarity:_particle/brittle",despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,id:brittle}
execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,model:"stellarity:_particle/brittle",despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,id:brittle}

function kohara:damage/calculate {armor_penetration:40,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing_no_knockback",damage_type:"kohara:no_knockback_ignores_iframes",tag:"stellarity.damage.embrittlement"}

playsound block.glass.break master @a[distance=0..] ~ ~ ~ 0.5 1.3
playsound minecraft:block.fungus.break neutral @a[distance=0..] ~ ~ ~ 1 1

particle minecraft:block{block_state: 'minecraft:ice'} ~ ~1.2 ~ 0.25 0.5 0.25 0 3
