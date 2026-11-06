# Roll next random interval between 300 and 1800 seconds (5 to 30 minutes)
execute store result score #stellarity.void_focus stellarity.void_focus.cooldown run random value 300..1800

# Set active duration: 300 ticks (15 seconds, slightly longer than sound duration)
scoreboard players set #stellarity.void_focus stellarity.void_focus.active 300

# Play The Void Gains Focus sound to all players in The End
execute as @a[predicate=stellarity:location/in_the_end] at @s run playsound stellarity:ambient.the_void.focus ambient @s ~ ~ ~ 1.0 1.0

# Apply Darkness post-effect for 15 seconds (hideParticles=true)
effect give @a[predicate=stellarity:location/in_the_end] minecraft:darkness 15 0 true
