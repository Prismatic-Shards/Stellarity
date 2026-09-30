# Damage and strong debuffs
damage @s 12 mob_attack by @e[type=shulker,tag=stellarity.shulking,limit=1,sort=nearest]
effect give @s levitation 6 2
effect give @s slowness 5 2
effect give @s wither 5 2

scoreboard players set #effect.duration stellarity.misc 200
scoreboard players set #effect.level stellarity.misc 1
function stellarity:util/status_effects/voided/apply

# Impact audio & explosion
playsound minecraft:entity.dragon_fireball.explode hostile @a ~ ~ ~ 2 0.7
playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1.5 0.5
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
particle dragon_breath ~ ~1 ~ 1 1 1 0.2 40

# Kill projectile
kill @e[type=item_display,tag=stellarity.shulking.mega_bullet,distance=..3,limit=1]
