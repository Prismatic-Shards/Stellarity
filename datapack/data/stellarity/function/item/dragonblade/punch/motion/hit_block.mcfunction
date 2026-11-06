scoreboard players set #hit stellarity.misc 1

function stellarity:item/dragonblade/punch/special_fx/hit_block

execute as @e[type=!#kohara:invalid_targets,distance=..2.75,predicate=!stellarity:item/holding/dragonblade,predicate=!kohara:player/is_sneaking,tag=!stellarity.item.dragonblade.in_punch] run function stellarity:item/dragonblade/punch/damage/splash

function stellarity:item/dragonblade/punch/motion/finish
