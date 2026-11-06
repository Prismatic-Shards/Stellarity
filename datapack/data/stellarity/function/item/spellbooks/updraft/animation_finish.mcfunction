scoreboard players set @s stellarity.item.spellbook.updraft.cooldown 16

tag @s remove stellarity.book_of_updraft.animation

# effect clear @s slow_falling

attribute @s gravity modifier remove stellarity:spellbook.updraft
attribute @s fall_damage_multiplier modifier remove stellarity:spellbook.updraft
