execute if entity @s[tag=stellarity.boss_drop] run function stellarity:sfx/boss_drop/effects

execute if biome ~ ~ ~ #stellarity:hallow if block ~ ~ ~ #stellarity:allows_consecrating run function stellarity:mechanic/consecration/main
execute if entity @s[tag=stellarity.consecration.in_animation] unless block ~ ~ ~ #stellarity:allows_consecrating run function stellarity:mechanic/consecration/animation/stop

execute \
if entity @s[tag=stellarity.dragons_breath] \
if block ~ ~ ~ water_cauldron \
align xyz positioned ~.5 ~.5 ~.5 \
unless entity @e[type=marker,tag=stellarity.cauldron_crafting,distance=..0.1] \
unless entity @e[type=marker,tag=stellarity.cauldron_consecration,distance=..0.1] run \
function stellarity:mechanic/cauldron_crafting/dragons_breath/summon_marker

execute \
if entity @s[tag=stellarity.starlight_soot] \
if block ~ ~ ~ water_cauldron \
align xyz positioned ~.5 ~.5 ~.5 \
unless entity @e[type=marker,tag=stellarity.cauldron_crafting,distance=..0.1] \
unless entity @e[type=marker,tag=stellarity.cauldron_consecration,distance=..0.1] run \
function stellarity:mechanic/consecration/cauldron/summon_marker

execute \
if entity @s[tag=stellarity.starlight_soot] \
if entity @p[distance=..6,predicate=stellarity:item/holding/kaleidoscope] \
run tag @s add stellarity.starlight_soot.radiant