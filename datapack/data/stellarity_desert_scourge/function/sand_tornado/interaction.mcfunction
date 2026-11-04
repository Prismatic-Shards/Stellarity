tag @s add save.tornado

execute on target if items entity @s weapon.mainhand goat_horn[!custom_data={suspicious_horn:1}] run function stellarity_desert_scourge:sand_tornado/give_item/suspicious_horn

execute unless entity @s[tag=boss] on target if items entity @s weapon.mainhand gunpowder[!custom_data] run function stellarity_desert_scourge:sand_tornado/destroy

tag @s remove save.tornado
data remove entity @s interaction