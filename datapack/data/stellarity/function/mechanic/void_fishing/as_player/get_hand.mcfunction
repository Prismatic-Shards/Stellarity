# Get which hand a Fishing Rod is being held in
  scoreboard players set #mainhand stellarity.misc 0
  execute if predicate stellarity:void_fishing/holding_fishing_rod/mainhand run scoreboard players set #mainhand stellarity.misc 1

scoreboard players set #offhand stellarity.misc 0
execute if predicate stellarity:void_fishing/holding_fishing_rod/offhand run scoreboard players set #offhand stellarity.misc 1

# Mimic the behavior of '/item modify entity @s weapon'
# while altering only Fishing Rods, leaving other tools alone :D
  execute if score #mainhand stellarity.misc matches 1 run scoreboard players set #offhand stellarity.misc 0
  