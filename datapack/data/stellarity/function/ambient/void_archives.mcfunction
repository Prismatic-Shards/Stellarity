# Void Archives rare sound between Y: -64 and 20
execute if predicate stellarity:location/height_archive_range run scoreboard players add @s stellarity.ambient.archives_timer 1
execute unless predicate stellarity:location/height_archive_range run scoreboard players set @s stellarity.ambient.archives_timer 0

execute if score @s stellarity.ambient.archives_timer matches 60.. if predicate stellarity:location/height_archive_range run function stellarity:ambient/void_archives_roll
