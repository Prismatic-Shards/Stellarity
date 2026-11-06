particle sweep_attack ~ ~ ~

$execute positioned ~-0.75 ~ ~-0.75 as @e[dy=0.0,dx=0.5,dz=0.5,type=!item] run execute unless entity @s[nbt={UUID:$(UUID)}] unless entity @s[nbt={Invulnerable:true}] run damage @s 10 stellarity:fluffy_slice by @p[nbt={UUID:$(UUID)},limit=1]

execute if score @s stellarity.misc matches 5.. run playsound entity.player.attack.sweep player @a[distance=..32] ~ ~ ~
