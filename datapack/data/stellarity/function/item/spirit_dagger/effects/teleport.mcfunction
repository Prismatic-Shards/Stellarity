scoreboard players reset @s stellarity.item.spirit_dagger.consume_time

# Advancement
  execute if entity @s[distance=58..] run advancement grant @s only stellarity:exploration/spirit_assasin
  execute if score #distance stellarity.misc matches 580.. run advancement grant @s only stellarity:exploration/spirit_assasin

# Prevent any fall damage
  effect give @s slow_falling 1 0 true

# Teleport
  tp @s ~ ~-0.65 ~
  tag @s add stellarity.spirit_dagger.teleport
  schedule function stellarity:item/spirit_dagger/effects/scheduled_remove_tag 1t append

# Attack buffs
  function stellarity:item/spirit_dagger/effects/buff

# Reset actionbar
  title @s actionbar ""

## Enchantments
  # Sweeping Edge
    # Value is 5x higher than the actual level
      execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:sweeping_edge" 5
      execute store result score #temp_2 stellarity.misc run data get entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:sweeping_edge" 5
      scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
      scoreboard players operation #sweeping stellarity.misc = #temp_1 stellarity.misc
      # Fire Aspect
        execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:fire_aspect" 1
        execute store result score #temp_2 stellarity.misc run data get entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:fire_aspect" 1
        scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
        scoreboard players operation #fire_aspect stellarity.misc = #temp_1 stellarity.misc
        # Knockback
          execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:knockback" 1
          execute store result score #temp_2 stellarity.misc run data get entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:knockback" 1
          scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
          scoreboard players operation #knockback stellarity.misc = #temp_1 stellarity.misc
          # Bane of Arthropods
            execute store result score #temp_1 stellarity.misc run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:bane_of_arthropods" 1
            execute store result score #temp_2 stellarity.misc run data get entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:bane_of_arthropods" 1
            scoreboard players operation #temp_1 stellarity.misc += #temp_2 stellarity.misc
            scoreboard players operation #bane stellarity.misc = #temp_1 stellarity.misc

          # Damage
            execute as @e[type=!#kohara:invalid_targets,distance=..4.2,predicate=!stellarity:item/holding/spirit_dagger/both,predicate=!kohara:player/is_sneaking] at @s run function stellarity:item/spirit_dagger/effects/damage

          # Teleport slash effect
            function stellarity:item/spirit_dagger/effects/teleport/slash

          # Kill Spirit
            kill @e[tag=stellarity.spirit_dagger.dying]
            kill @e[tag=stellarity.spirit_dagger.spirit,distance=..2]
