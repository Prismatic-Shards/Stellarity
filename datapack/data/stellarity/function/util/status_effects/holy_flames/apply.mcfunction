execute unless entity @s[type=!player,tag=stellarity.holy_flames.burning] store result score @s stellarity.dot.holy_flames.had_visual_fire run data get entity @s HasVisualFire

data merge entity @s[type=!player] {HasVisualFire:1b}
tag @s add stellarity.holy_flames.burning

scoreboard players set #19 stellarity.misc 19
scoreboard players operation #effect.duration stellarity.misc += #19 stellarity.misc

scoreboard players operation @s stellarity.dot.holy_flames.time = #effect.duration stellarity.misc

tag @s add kohara.status_effect.tick
