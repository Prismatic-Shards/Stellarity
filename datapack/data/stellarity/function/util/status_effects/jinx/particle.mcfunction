scoreboard players reset @s stellarity.status_effects.jinx.particle

execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:30,billboard:center,model:"stellarity:_particle/jinx",despawn_value:30,state:spread,spread_initial:1.8,spread_radius:2.2,id:jinx}

execute if predicate kohara:chance/75percent run particle entity_effect{color:[0.8313725490196079,0.21176470588235294,0.7333333333333333,1.0]} ~ ~1.2 ~ .3 .5 .3 0 1 normal
