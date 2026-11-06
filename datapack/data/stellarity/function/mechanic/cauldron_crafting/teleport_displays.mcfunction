# Dynamic orbital positioning for any number of cauldron items
tag @e[type=item_display,distance=..1.5,tag=stellarity.brewing.item_display] add stellarity.brewing.need_tp
function stellarity:mechanic/cauldron_crafting/teleport_displays_loop with storage stellarity:temp cauldron_crafting.angle

tag @e[type=interaction,distance=..1.5,tag=stellarity.brewing.interaction] add stellarity.brewing.need_tp
function stellarity:mechanic/cauldron_crafting/teleport_interactions_loop with storage stellarity:temp cauldron_crafting.angle
