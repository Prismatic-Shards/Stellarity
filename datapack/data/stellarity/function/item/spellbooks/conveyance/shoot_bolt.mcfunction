scoreboard players set @s stellarity.item.spellbook.conveyance.cooldown 20

scoreboard players add #stellarity.book_of_conveyance stellarity.item.spellbook.conveyance.id 1

execute anchored eyes positioned ^ ^ ^ rotated as @s run function stellarity:item/spellbooks/conveyance/spawn_marker

function stellarity:item/spellbooks/effects_all

playsound stellarity:item.spellbook_cast player @a[distance=0..] ~ ~ ~
