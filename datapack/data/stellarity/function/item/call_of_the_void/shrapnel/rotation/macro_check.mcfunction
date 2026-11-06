execute if score @s stellarity.misc4 matches 20.. run kill @s
execute if score @s stellarity.misc4 matches 20.. run return fail

scoreboard players set #continue stellarity.misc 0
$execute rotated $(x) $(y) unless block ^ ^ ^0.6 #kohara:non_solid run scoreboard players set #continue stellarity.misc 1

execute if score #continue stellarity.misc matches 1 run function stellarity:item/call_of_the_void/shrapnel/rotation/rotate
execute if score #continue stellarity.misc matches 0 run function stellarity:item/call_of_the_void/shrapnel/rotation/pass
