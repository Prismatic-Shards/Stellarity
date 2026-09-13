summon vex ~ ~ ~ {Health:5,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],attributes:[{id:"follow_range",base:-1d},{id:"max_health",base:5d},{id:"knockback_resistance",base:0.9d}],DeathLootTable:"stellarity:entity/pixie",CustomName:{"translate":"entity.stellarity.pixie","color":"#FFD655"},Tags:["stellarity.pixie","smithed.entity"],equipment:{}}

execute positioned ~ ~ ~ as @n[type=vex,tag=stellarity.pixie] store result score @s stellarity.misc3 run random value 1..4

function stellarity:entity/pixie/sounds/ambient
