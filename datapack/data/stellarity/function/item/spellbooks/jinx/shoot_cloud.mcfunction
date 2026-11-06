scoreboard players set @s stellarity.item.spellbook.jinx.cooldown 15

execute anchored eyes positioned ^ ^ ^ rotated as @s run function stellarity:item/spellbooks/jinx/spawn_marker

function stellarity:item/spellbooks/effects_all

playsound stellarity:item.spellbook_cast player @a[distance=0..] ~ ~ ~
