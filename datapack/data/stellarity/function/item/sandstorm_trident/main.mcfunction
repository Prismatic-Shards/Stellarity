data modify storage stellarity:temp sandstorm_trident.data set from entity @s

scoreboard players set @s stellarity.misc4 0
execute if data storage stellarity:temp sandstorm_trident.data.inBlockState run scoreboard players set @s stellarity.misc4 1
execute if data storage stellarity:temp {sandstorm_trident:{data:{DealtDamage:1b}}} run scoreboard players set @s stellarity.misc4 1

scoreboard players add @s stellarity.misc 1 
execute if score @s stellarity.misc matches 40 run data modify entity @s DealtDamage set value 1b

execute if score @s stellarity.misc4 matches 0 run function stellarity:item/sandstorm_trident/wind_tunnel/trail
execute if score @s stellarity.misc4 matches 1.. run function stellarity:item/sandstorm_trident/wind_tunnel/activate
