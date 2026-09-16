execute if entity @s[tag=stellarity.pixie.radiant] run return run function stellarity:util/animated_java/pixie/summon {args: {variant: 'red_pixie', animation: 'flying_pixie', start_animation: true}}
execute if score @s stellarity.misc3 matches 1 run return run function stellarity:util/animated_java/pixie/summon {args: {variant: 'default', animation: 'flying_pixie', start_animation: true}}
execute if score @s stellarity.misc3 matches 2 run return run function stellarity:util/animated_java/pixie/summon {args: {variant: 'magenta_pixie', animation: 'flying_pixie', start_animation: true}}
execute if score @s stellarity.misc3 matches 3 run return run function stellarity:util/animated_java/pixie/summon {args: {variant: 'light_blue_pixie', animation: 'flying_pixie', start_animation: true}}
execute if score @s stellarity.misc3 matches 4 run return run function stellarity:util/animated_java/pixie/summon {args: {variant: 'lime_pixie', animation: 'flying_pixie', start_animation: true}}
