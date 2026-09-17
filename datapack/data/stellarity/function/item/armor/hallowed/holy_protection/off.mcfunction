tag @s remove stellarity.holy_protection
scoreboard players set @s stellarity.item.armors.holy_protection_cooldown 540
effect clear @s resistance

execute rotated ~ 0 positioned ^ ^1 ^ run function stellarity:item/armor/hallowed/holy_protection/dodge_visual

advancement grant @s only stellarity:altar_of_the_accursed/cancel_damage_hallowed_armor

# I-frames of some sort
# Such high amplifier values make sure that
# these roman numbers do not appear at all!
  effect give @s resistance 2 100 true

  effect give @s fire_resistance 6 0 false
  effect give @s water_breathing 6 0 false

attribute @s movement_speed modifier add stellarity:holy_protection 0.2 add_multiplied_base
attribute @s movement_efficiency modifier add stellarity:holy_protection 1 add_value

# Cannot remove KR straight away due to my i-frames mechanic
# It is handled in loop.mcfunction
