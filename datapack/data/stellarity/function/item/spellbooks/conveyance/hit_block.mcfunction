execute as @a if score @s stellarity.item.spellbook.conveyance.id = @n[type=marker,tag=stellarity.book_of_conveyance] stellarity.item.spellbook.conveyance.id run function stellarity:item/spellbooks/conveyance/teleport_player

kill @s

execute at @p run playsound item.chorus_fruit.teleport player @a[distance=0..] ~ ~1 ~
execute at @p run particle minecraft:dust_color_transition{from_color: [0.898, 0.122, 1.0], scale: 1.0, to_color: [0.435, 0.0, 1.0]} ~ ~1 ~ .3 .55 .3 0 80 force
