scoreboard players set #100 kohara.misc 100

$scoreboard players operation #temp1 kohara.misc = $(holder) $(score)
$scoreboard players set #temp2 kohara.misc $(percent)

scoreboard players operation #temp3 kohara.misc = #100 kohara.misc
scoreboard players operation #temp3 kohara.misc += #temp2 kohara.misc

scoreboard players operation #temp3 kohara.misc *= #temp1 kohara.misc

scoreboard players operation #temp3 kohara.misc /= #100 kohara.misc

$scoreboard players operation $(holder) $(score) = #temp3 kohara.misc
