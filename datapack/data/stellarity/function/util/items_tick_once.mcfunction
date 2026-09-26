execute if data storage kohara:temp {item_nbt:{Item:{id:"minecraft:dragon_egg"}}} run function stellarity:sfx/boss_drop/dragon_egg
execute if data storage kohara:temp {item_nbt:{Item:{id:"minecraft:dragon_breath",count:1}}} run function stellarity:mechanic/cauldron_crafting/dragons_breath/add_tags
execute if data storage kohara:temp {item_nbt:{Item:{components:{"minecraft:custom_data":{"stellarity:item":"starlight_soot"}}}}} run function stellarity:mechanic/consecration/cauldron/add_tags
execute if data storage kohara:temp {item_nbt:{Item:{components:{"minecraft:custom_data":{"stellarity.item":"starlight_soot"}}}}} run function stellarity:mechanic/consecration/cauldron/add_tags
execute if data storage kohara:temp {item_nbt:{Item:{components:{"minecraft:custom_data":{stellarity:{item:"starlight_soot"}}}}}} run function stellarity:mechanic/consecration/cauldron/add_tags
execute if data storage kohara:temp {item_nbt:{Item:{tag:{"stellarity.item":"starlight_soot"}}}} run function stellarity:mechanic/consecration/cauldron/add_tags
execute if data storage kohara:temp {item_nbt:{Item:{tag:{"stellarity:item":"starlight_soot"}}}} run function stellarity:mechanic/consecration/cauldron/add_tags
execute if data storage kohara:temp {item_nbt:{Item:{tag:{stellarity:{item:"starlight_soot"}}}}} run function stellarity:mechanic/consecration/cauldron/add_tags

execute if data storage kohara:temp {item_nbt:{Item:{id:"minecraft:netherite_sword",components:{"minecraft:custom_data":{"stellarity:item":"dragonblade"}}}}} run function stellarity:sfx/boss_drop/dragonblade


execute if biome ~ ~ ~ #stellarity:hallow run tag @s add stellarity.item

# Boss drop items don't despawn
  data modify entity @s[tag=stellarity.boss_drop] Age set value -32768s
