particle explosion_emitter ~ ~-1 ~ 0 0 0 0 1 force @a[distance=..64]
particle end_rod ~ ~1 ~ 0 0 0 0.45 150 normal

playsound minecraft:item.trident.thunder hostile @a[distance=0..] ~ ~1 ~ 1 0.8
playsound minecraft:entity.allay.ambient_without_item hostile @a[distance=0..] ~ ~1 ~ 1.5 0.8
playsound entity.player.levelup hostile @a[distance=0..] ~ ~ ~ .33 .55
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=0..] ~ ~1 ~ 0.5 1

# Vindicator for hitbox and HP
  summon minecraft:vindicator ~ ~-1.5 ~ {NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],Tags:["stellarity.empress_of_light","kohara.boss","stellarity.empress_of_light.phase_1","smithed.entity"],Invulnerable:1b,attributes:[{id:"armor",base:12d},{id:"armor_toughness",base:4d},{id:"max_health",base:500d}],equipment:{mainhand:{id:"minecraft:totem_of_undying",count:1},offhand:{id:"minecraft:totem_of_undying",count:1b}},drop_chances:{mainhand:0.0,offhand:0.0}, Health:500f,DeathLootTable:""}
  execute if entity @s[tag=stellarity.empress_of_light.radiant] run tag @n[type=vindicator,tag=stellarity.empress_of_light] add stellarity.empress_of_light.radiant
  execute if entity @s[tag=stellarity.empress_of_light.daytime] run tag @n[type=vindicator,tag=stellarity.empress_of_light] add stellarity.empress_of_light.daytime
  execute if entity @s[tag=stellarity.empress_of_light.nighttime] run tag @n[type=vindicator,tag=stellarity.empress_of_light] add stellarity.empress_of_light.nighttime

# Summon Animated Java model
  execute if entity @s[tag=stellarity.empress_of_light.nighttime] run function stellarity:util/animated_java/eol/summon {args: {animation: 'eol_flying', variant: 'default', start_animation: true}}
  execute if entity @s[tag=stellarity.empress_of_light.daytime] run function stellarity:util/animated_java/eol/summon {args: {animation: 'eol_flying', variant: 'daylight', start_animation: true}}
  execute if entity @s[tag=stellarity.empress_of_light.radiant] run function stellarity:util/animated_java/eol/summon {args: {animation: 'eol_flying', variant: 'radiant', start_animation: true}}

execute positioned ~ ~-1.5 ~ as @n[type=vindicator,tag=stellarity.empress_of_light] at @s run function stellarity:entity/empress_of_light/animations/spawn/summon_marker with entity @s

# Rotate the armor stand to face the nearest player
  execute as @n[type=vindicator,tag=stellarity.empress_of_light] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
  execute as @n[type=item_display,tag=stellarity.empress_of_light.model] at @s facing entity @p eyes run rotate @s ~ 0
  scoreboard players set @n[type=vindicator,tag=stellarity.empress_of_light] stellarity.empress_of_light.attack_cooldown 0

execute if predicate stellarity:entity/empress_of_light/is_daytime unless entity @s[tag=stellarity.empress_of_light.radiant] run tag @n[type=vindicator,tag=stellarity.empress_of_light] add stellarity.empress_of_light.full_daytime

execute store result entity @n[type=vindicator,tag=stellarity.empress_of_light,tag=!stellarity.empress_of_light.full_daytime,tag=!stellarity.empress_of_light.radiant] attributes[{id:"minecraft:max_health"}].base float 1 run scoreboard players get #stellarity.config stellarity.config.nighttime_empress_of_light_health
execute store result entity @n[type=vindicator,tag=stellarity.empress_of_light,tag=!stellarity.empress_of_light.full_daytime,tag=!stellarity.empress_of_light.radiant] Health float 1 run scoreboard players get #stellarity.config stellarity.config.nighttime_empress_of_light_health
execute if entity @n[type=vindicator,tag=stellarity.empress_of_light,tag=!stellarity.empress_of_light.full_daytime,tag=!stellarity.empress_of_light.radiant] store result bossbar stellarity:empress_of_light max run scoreboard players get #stellarity.config stellarity.config.nighttime_empress_of_light_health

execute store result entity @n[type=vindicator,tag=stellarity.empress_of_light.full_daytime] attributes[{id:"minecraft:max_health"}].base float 1 run scoreboard players get #stellarity.config stellarity.config.daytime_empress_of_light_health
execute store result entity @n[type=vindicator,tag=stellarity.empress_of_light.full_daytime] Health float 1 run scoreboard players get #stellarity.config stellarity.config.daytime_empress_of_light_health
execute if entity @n[type=vindicator,tag=stellarity.empress_of_light.full_daytime] store result bossbar stellarity:empress_of_light max run scoreboard players get #stellarity.config stellarity.config.daytime_empress_of_light_health

execute store result entity @n[type=vindicator,tag=stellarity.empress_of_light.radiant,tag=!stellarity.empress_of_light.full_daytime] attributes[{id:"minecraft:max_health"}].base float 1 run scoreboard players get #stellarity.config stellarity.config.radiant_empress_of_light_health
execute store result entity @n[type=vindicator,tag=stellarity.empress_of_light.radiant,tag=!stellarity.empress_of_light.full_daytime] Health float 1 run scoreboard players get #stellarity.config stellarity.config.radiant_empress_of_light_health
execute if entity @n[type=vindicator,tag=stellarity.empress_of_light.radiant,tag=!stellarity.empress_of_light.full_daytime] store result bossbar stellarity:empress_of_light max run scoreboard players get #stellarity.config stellarity.config.radiant_empress_of_light_health

# Announce Empress of Light message in chat
  execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 if entity @s[tag=stellarity.empress_of_light.nighttime] run tellraw @a ["\n",{"translate":"entity.stellarity.empress_of_light.spawn","with":[{"translate":"entity.stellarity.empress_of_light"}],"color":"#AF4BFF"},"\n"]
  execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 if entity @s[tag=stellarity.empress_of_light.daytime] run tellraw @a ["\n",{"translate":"entity.stellarity.empress_of_light.spawn","with":[{"translate":"entity.stellarity.empress_of_light"}],"color":"#ffea2f"},"\n"]
  execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 if entity @s[tag=stellarity.empress_of_light.radiant] run tellraw @a ["\n",{"translate":"entity.stellarity.empress_of_light.spawn","with":[{"translate":"entity.stellarity.empress_of_light"}],"color":"#ff4b4b"},"\n"]

scoreboard players set #empress_of_light.is_alive stellarity.misc 1

execute as @a run function stellarity:entity/dragon/music/reset
