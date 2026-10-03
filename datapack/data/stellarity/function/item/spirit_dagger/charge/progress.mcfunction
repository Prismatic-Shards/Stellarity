execute unless score @s stellarity.item.spirit_dagger.consume_time matches 10.. run scoreboard players add @s stellarity.item.spirit_dagger.consume_time 1
scoreboard players set @s stellarity.item.spirit_dagger.until_consume_reset 50

title @s actionbar [{"text":"•","color":"#EEEEEE"},{"text":" 🗡 ","color":"#F5DC68"},{"score":{"name": "@s","objective": "stellarity.item.spirit_dagger.consume_time"},"color":"#F5DC68"},{"text":"/","color":"#EEEEEE"},{"text":"10","color":"#C781E6"},{"text":" 🗡 ","color":"#C781E6"},{"text":"•","color":"#EEEEEE"}]

execute if score @s[name="kohara_"] stellarity.item.spirit_dagger.consume_time matches 1 run playsound stellarity:item.spirit_dagger.charge_kohara player @a[distance=0..] ~ ~ ~ 1 1
execute if score @s[name=!"kohara_"] stellarity.item.spirit_dagger.consume_time matches 1 run playsound stellarity:item.spirit_dagger.charge player @a[distance=0..] ~ ~ ~ 1 1

execute if score @s stellarity.item.spirit_dagger.consume_time matches 10 anchored eyes positioned ^ ^ ^ anchored feet run function stellarity:item/spirit_dagger/raycast/start_ray
