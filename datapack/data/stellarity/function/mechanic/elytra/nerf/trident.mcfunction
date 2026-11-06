# Get which hand the Trident is being held in
  scoreboard players set #mainhand stellarity.misc 0
  execute if data entity @s SelectedItem{id:"minecraft:trident"} run scoreboard players set #mainhand stellarity.misc 1
  scoreboard players set #offhand stellarity.misc 0
  execute if data entity @s equipment.offhand{id:"minecraft:trident"} run scoreboard players set #offhand stellarity.misc 1
  # Mimic vanilla behavior
    execute if score #mainhand stellarity.misc matches 1 run scoreboard players set #offhand stellarity.misc 0

  execute if score #mainhand stellarity.misc matches 1 store result score #enchantment stellarity.misc run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:riptide" 3
  execute if score #offhand stellarity.misc matches 1 store result score #enchantment stellarity.misc run data get entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:riptide" 3

scoreboard players set #temp stellarity.misc 8
scoreboard players operation #temp stellarity.misc += #enchantment stellarity.misc
