# $title @a actionbar "Still alive! $(UUID)"

$execute if entity @n[type=vindicator,nbt={UUID:$(UUID)}] run tp @s @n[type=vindicator,nbt={UUID:$(UUID)}]

$execute unless entity @n[type=vindicator,nbt={UUID:$(UUID)}] run function stellarity:entity/empress_of_light/animations/spawn/death_spawn

