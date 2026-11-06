scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 1 run scoreboard players operation @s stellarity.misc2 = @n[type=ender_dragon] stellarity.dragon.health_percent

execute if score @s stellarity.misc2 matches 66.. run function stellarity:entity/dragon/attacks/take_off/shulkers/main/1
execute if score @s stellarity.misc2 matches 34..65 run function stellarity:entity/dragon/attacks/take_off/shulkers/main/2
execute if score @s stellarity.misc2 matches ..33 run function stellarity:entity/dragon/attacks/take_off/shulkers/main/3

kill @s[scores={stellarity.misc=100..}]
