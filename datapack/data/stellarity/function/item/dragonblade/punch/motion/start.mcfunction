# Set punch cooldown
# 8 seconds
  scoreboard players set @s stellarity.item.dragonblade.cooldown 160
  tag @s add stellarity.item.dragonblade.cooldown
  tag @s add stellarity.cooldown_tickdown

# Reset stacks
  function stellarity:item/dragonblade/reset_stacks

# Get punch direction and distance
  execute store result score #enchant stellarity.misc run data get entity @p[predicate=stellarity:item/holding/dragonblade,predicate=kohara:player/is_sneaking] SelectedItem.components."minecraft:enchantments"."minecraft:knockback" 1

# Punch distance gets reduced by half of knockback resistance
# Scale = 50 so that I don't have to set it to 100 and then divide by 2
  execute store result score #knockback_res stellarity.misc run attribute @s knockback_resistance get 50
  # 10 units = 1 block of punch distance
  # Base distance = 7.8 blocks (+1.4 per every Knockback level)
  # No, this does not have a cap, same applies to damage
  # Go ham with illegal enchantments lol
    scoreboard players set #max_distance stellarity.misc 78
    scoreboard players set #1.1 stellarity.misc 14
    scoreboard players operation #extra stellarity.misc = #enchant stellarity.misc
    scoreboard players operation #extra stellarity.misc *= #1.1 stellarity.misc
    scoreboard players operation #max_distance stellarity.misc += #extra stellarity.misc
    execute store result storage stellarity:temp dragonblade.knockback_res int 1 run scoreboard players get #knockback_res stellarity.misc
    execute if score #knockback_res stellarity.misc matches 1.. run function stellarity:item/dragonblade/punch/motion/knockback_res with storage stellarity:temp dragonblade

  scoreboard players set #hit stellarity.misc 0
  scoreboard players set #distance stellarity.misc 0
  scoreboard players set #particles stellarity.misc 0

execute facing entity @p[predicate=stellarity:item/holding/dragonblade,predicate=kohara:player/is_sneaking] eyes rotated ~180 0 anchored feet positioned ^ ^.5 ^ run function stellarity:item/dragonblade/punch/motion/raycast

# Cool little visuals
  execute as @p[predicate=stellarity:item/holding/dragonblade,predicate=kohara:player/is_sneaking] at @s rotated as @s rotated ~ 0 positioned ^ ^1.2 ^1 run function stellarity:item/dragonblade/punch/special_fx/particle_area_effect_cloud_spawn
