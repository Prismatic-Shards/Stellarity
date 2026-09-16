execute if entity @s[tag=stellarity.empress_of_light.phase_1] if score @s stellarity.empress_of_light.health_percent matches ..50 run function stellarity:entity/empress_of_light/attacks/decide/phase_2_transition

tag @s add stellarity.empress_of_light.attack_ready
