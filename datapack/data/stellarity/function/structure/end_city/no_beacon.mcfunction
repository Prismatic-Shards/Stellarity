setblock ~ ~ ~ glass
fill ~ ~1 ~ ~ ~1 ~ air replace magenta_stained_glass_pane

kill @n[type=item,nbt={Item:{id:"minecraft:beacon",count:1}}]
kill @s
