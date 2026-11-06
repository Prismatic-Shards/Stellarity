execute store result score #stellarity.void_focus stellarity.void_focus.cooldown run random value 300..1800

scoreboard players set #stellarity.void_focus stellarity.void_focus.active 300

execute as @a[predicate=stellarity:location/in_the_end] at @s run playsound stellarity:ambient.the_void.focus ambient @s ~ ~ ~ 1.0 1.0

effect give @a[predicate=stellarity:location/in_the_end] minecraft:darkness 15 0 true
