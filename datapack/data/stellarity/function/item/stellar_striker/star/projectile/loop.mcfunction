scoreboard players add @s stellarity.misc 1

execute store result storage stellarity:temp stellar_striker.velocity float 0.01 run scoreboard players get @s stellarity.misc3
function stellarity:item/stellar_striker/star/projectile/move_macro with storage stellarity:temp stellar_striker

function stellarity:item/stellar_striker/star/projectile/particles

execute if score @s stellarity.misc matches 3.. if entity @n[type=!#kohara:invalid_targets,dx=0] run function stellarity:item/stellar_striker/star/projectile/detonate

execute if score @s stellarity.misc matches 100.. run function stellarity:item/stellar_striker/star/projectile/detonate

# Uses a score to determine whether to remove the projectile or not
# because for some reason it detonated twice
# MC quirks I guess...
  execute unless score @s stellarity.misc2 matches 1 unless block ^ ^ ^ #kohara:non_solid run function stellarity:item/stellar_striker/star/projectile/detonate
  execute unless score @s stellarity.misc2 matches 1 unless block ^ ^ ^1 #kohara:non_solid run function stellarity:item/stellar_striker/star/projectile/detonate

execute if score @s stellarity.misc2 matches 1 run kill @s
