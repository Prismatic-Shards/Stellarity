scoreboard players set @s stellarity.item.spellbook.light.cooldown 60

summon marker ~ ~.92 ~ {Tags:["stellarity.book_of_light.aura","stellarity.book_of_light","stellarity.marker","smithed.entity","smithed.strict"]}
summon marker ~ ~.92 ~ {Tags:["stellarity.book_of_light.aura_2","stellarity.book_of_light","stellarity.marker","smithed.entity","smithed.strict"]}

execute positioned ~ ~.92 ~ run function stellarity:item/spellbooks/light/pulse

playsound stellarity:item.spellbook_cast player @a[distance=0..] ~ ~ ~
