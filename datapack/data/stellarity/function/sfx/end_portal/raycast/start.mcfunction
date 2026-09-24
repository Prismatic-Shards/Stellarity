tag @s add stellarity.end_portal_animation.raycast
scoreboard players set #hit stellarity.misc 0
scoreboard players set #distance stellarity.misc 0
function stellarity:sfx/end_portal/raycast/ray
tag @s remove stellarity.end_portal_animation.raycast

# Fallback: ensure no portal blocks linger if raycast failed to hit
execute if score #hit stellarity.misc matches 0 at @s run fill ~6 ~3 ~6 ~-6 ~-3 ~-6 air replace end_portal
