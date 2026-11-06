data modify storage stellarity:temp book_of_return.dimension set value "minecraft:overworld"
data modify storage stellarity:temp book_of_return.x set from storage stellarity:temp book_of_return.player_data.respawn.pos[0]
data modify storage stellarity:temp book_of_return.y set from storage stellarity:temp book_of_return.player_data.respawn.pos[1]
data modify storage stellarity:temp book_of_return.z set from storage stellarity:temp book_of_return.player_data.respawn.pos[2]
data modify storage stellarity:temp book_of_return.dimension set from storage stellarity:temp book_of_return.player_data.respawn.dimension
function stellarity:item/spellbooks/return/teleport/summon_marker with storage stellarity:temp book_of_return
