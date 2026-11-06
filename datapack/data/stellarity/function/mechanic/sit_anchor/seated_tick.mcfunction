# Seated player tick (runs per sitting player)

# Check if player dismounted (Shift or damaged out)
execute unless data entity @s RootVehicle run function stellarity:mechanic/sit_anchor/leave

# Update health check: if player gets damaged while sitting, mark them as needing healing
execute store result score @s stellarity.health run data get entity @s Health 100
execute store result score @s stellarity.max_health run attribute @s minecraft:max_health get 100
execute if score @s stellarity.health < @s stellarity.max_health run tag @s add stellarity.sit_needs_heal

# Health regeneration timer
scoreboard players add @s stellarity.sit_timer 1

# Gradual health recovery every 20 ticks (1 second)
execute if score @s stellarity.sit_timer matches 20.. run function stellarity:mechanic/sit_anchor/heal_step
