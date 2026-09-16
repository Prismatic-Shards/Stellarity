loot replace entity @s weapon.mainhand loot stellarity:item/weapon/harvester

item replace entity @s armor.head with diamond_helmet[trim={material:"amethyst",pattern:"minecraft:flow"},enchantments={protection:4},tooltip_display={hidden_components:["trim"]}]
item replace entity @s armor.chest with diamond_chestplate[trim={material:"amethyst",pattern:"minecraft:eye"},enchantments={protection:4},tooltip_display={hidden_components:["trim"]}]

execute store result entity @s attributes[{id:"minecraft:max_health"}].base float 1 run scoreboard players get #stellarity.config stellarity.config.harvester_mb_health
execute store result entity @s Health float 1 run scoreboard players get #stellarity.config stellarity.config.harvester_mb_health

attribute @s minecraft:attack_damage modifier add stellarity:harvester_miniboss 0.25 add_multiplied_total
attribute @s minecraft:armor modifier add stellarity:harvester_miniboss 2 add_value
attribute @s minecraft:armor_toughness modifier add stellarity:harvester_miniboss 1 add_value
attribute @s minecraft:movement_speed modifier add stellarity:harvester_miniboss -0.15 add_multiplied_base
attribute @s minecraft:movement_efficiency modifier add stellarity:harvester_miniboss 1 add_value
attribute @s minecraft:knockback_resistance modifier add stellarity:harvester_miniboss 0.2 add_value

effect give @s instant_damage 1 23 true

data modify entity @s drop_chances.mainhand set value 1.0

