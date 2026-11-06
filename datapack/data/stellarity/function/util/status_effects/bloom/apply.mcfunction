execute unless entity @s[scores={stellarity.status_effects.bloom.time=1..}] anchored eyes rotated ~ 0 positioned ^ ^0.35 ^ run function stellarity:util/status_effects/bloom/flower/spawn

$execute unless score @s stellarity.status_effects.bloom.cooldown matches 1.. anchored eyes rotated ~ 0 run function stellarity:util/status_effects/bloom/increase_duration {damage_stack:$(damage_stack),damage_base:$(damage_base),duration_stack:$(duration_stack),duration_base:$(duration_base)}

tag @s add kohara.status_effect.tick
