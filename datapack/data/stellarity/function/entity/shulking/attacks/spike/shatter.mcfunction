particle end_rod ~ ~ ~ 1 1 1 0.1 100

$execute positioned ~ ~ ~ as @e[type=!#kohara:invalid_targets,distance=..2,type=!shulker] unless entity @s[nbt={UUID:$(UUID)}] unless entity @s[nbt={Invulnerable:true}] run damage @s 15 stellarity:shulking_spike by @n[nbt={UUID:$(UUID)}]
$execute positioned ~ ~ ~ as @e[type=!#kohara:invalid_targets,distance=2..4,type=!shulker] unless entity @s[nbt={UUID:$(UUID)}] unless entity @s[nbt={Invulnerable:true}] run damage @s 10 stellarity:shulking_spike by @n[nbt={UUID:$(UUID)}]
$execute positioned ~ ~ ~ as @e[type=!#kohara:invalid_targets,distance=4..6,type=!shulker] unless entity @s[nbt={UUID:$(UUID)}] unless entity @s[nbt={Invulnerable:true}] run damage @s 5 stellarity:shulking_spike by @n[nbt={UUID:$(UUID)}]

kill @s
