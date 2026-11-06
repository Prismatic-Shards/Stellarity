kill @s[type=marker]

# Cloud
  execute align y run summon area_effect_cloud ~ ~ ~ {Radius:1f,RadiusPerTick:0.009f,Duration:300,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",duration:1,show_particles:0b}]},ReapplicationDelay:12,RadiusOnUse:0f,custom_particle:{"type":"minecraft:dragon_breath"},Tags:["stellarity.dragon_breath","stellarity.area_effect_cloud"]}
  data modify entity @n[type=area_effect_cloud,tag=stellarity.dragon_breath] Owner set from entity @n[type=ender_dragon] UUID

# Small explosion
  execute align y run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball", colors:[14876888,13697223,12779705,14156003],has_trail:0b,has_twinkle:0b}],flight_duration:1}}},Tags:["stellarity.dragon_breath"]}
  data modify entity @n[type=firework_rocket,tag=stellarity.dragon_breath] Owner set from entity @n[type=ender_dragon] UUID

playsound minecraft:entity.dragon_fireball.explode hostile @a[distance=0..] ~ ~ ~ 1 1

particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.2 30 normal
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 30 normal
particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.15 10

scoreboard players set #effect.duration stellarity.misc 120
scoreboard players set #effect.level stellarity.misc 1

execute if score #difficulty stellarity.misc matches 3 as @a[distance=..3] run function stellarity:util/status_effects/voided/apply
