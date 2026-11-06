summon shulker ~ ~ ~ {NoAI:1b,Invulnerable:1b,Color:10,Tags:["stellarity.dragon_shulker","smithed.entity","smithed.strict"],DeathLootTable:"",attributes:[{id:"max_health",base:20d},{id:"armor_toughness",base:4d},{id:"follow_range",base:40d}]}

particle flash{color:-1} ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:dragon_breath ~ ~1.25 ~ 0.5 0.5 0.5 0.03 10
particle minecraft:end_rod ~ ~1.25 ~ 0.5 0.5 0.5 0.03 17

playsound block.trial_spawner.spawn_mob hostile @a[distance=0..] ~ ~ ~

team join stellarity.dragon.pacify_others @n[type=shulker]
