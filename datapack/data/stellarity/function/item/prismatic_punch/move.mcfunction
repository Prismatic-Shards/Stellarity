$teleport @s ^ ^ ^$(distance)
scoreboard players set #exploded stellarity.misc 0
execute unless block ^ ^ ^ #kohara:non_solid run function stellarity:item/prismatic_punch/detonate/start_absolute
execute unless block ^ ^ ^ #kohara:non_solid run function stellarity:item/prismatic_punch/detonate/start_absolute
$execute unless score #exploded stellarity.misc matches 1 unless block ^ ^ ^$(distance) #kohara:non_solid run function stellarity:item/prismatic_punch/detonate/start_absolute
$execute unless score #exploded stellarity.misc matches 1 unless block ^ ^ ^$(distance_quarter) #kohara:non_solid run function stellarity:item/prismatic_punch/detonate/start_absolute
$execute unless score #exploded stellarity.misc matches 1 unless block ^ ^ ^$(distance_half) #kohara:non_solid run function stellarity:item/prismatic_punch/detonate/start_absolute
$execute unless score #exploded stellarity.misc matches 1 unless block ^ ^ ^$(distance_3_quarters) #kohara:non_solid run function stellarity:item/prismatic_punch/detonate/start_absolute
