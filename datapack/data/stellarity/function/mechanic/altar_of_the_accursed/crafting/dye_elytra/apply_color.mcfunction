execute unless data entity @s Item.components."minecraft:custom_data"."stellarity:elytra_color" run data modify entity @s Item.components."minecraft:lore" insert 0 value {"translate":"item.dyed","italic":true}

$data modify entity @s Item.components."minecraft:custom_data"."stellarity:elytra_color" set value $(color)
$data modify entity @s Item.components."minecraft:lore"[0].color set value "$(text_color)"
