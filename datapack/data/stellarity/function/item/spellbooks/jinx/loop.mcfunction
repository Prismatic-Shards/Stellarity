# Age
scoreboard players add @s stellarity.misc 1

execute if score @s stellarity.misc matches 1 run scoreboard players set @s stellarity.misc2 30
execute store result storage stellarity:temp book_of_jinx.distance float 0.005 run scoreboard players get @s stellarity.misc2
function stellarity:item/spellbooks/jinx/move with storage stellarity:temp book_of_jinx
scoreboard players add @s stellarity.misc2 3

execute if score @s stellarity.misc matches 1..3 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:1.0} ^ ^ ^ .25 .25 .25 0.00106 9 force @a[distance=..64]
execute if score @s stellarity.misc matches 4..6 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:1.15} ^ ^ ^ .35 .35 .35 0.00106 10 force @a[distance=..64]
execute if score @s stellarity.misc matches 7..9 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:1.3} ^ ^ ^ .45 .45 .45 0.00106 11 force @a[distance=..64]
execute if score @s stellarity.misc matches 10..12 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:1.45} ^ ^ ^ .55 .55 .55 0.00106 12 force @a[distance=..64]
execute if score @s stellarity.misc matches 13..15 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:1.6} ^ ^ ^ .65 .65 .65 0.00106 13 force @a[distance=..64]
execute if score @s stellarity.misc matches 16..18 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:1.75} ^ ^ ^ .75 .75 .75 0.00106 14 force @a[distance=..64]
execute if score @s stellarity.misc matches 19..21 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:1.9} ^ ^ ^ .85 .85 .85 0.00106 15 force @a[distance=..64]
execute if score @s stellarity.misc matches 21..24 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:2.05} ^ ^ ^ .95 .95 .95 0.00106 16 force @a[distance=..64]
execute if score @s stellarity.misc matches 25..27 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:2.2} ^ ^ ^ 1.05 1.05 1.05 0.00106 17 force @a[distance=..64]
execute if score @s stellarity.misc matches 28..30 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:2.35} ^ ^ ^ 1.15 1.15 1.15 0.00106 18 force @a[distance=..64]
execute if score @s stellarity.misc matches 31..33 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:2.5} ^ ^ ^ 1.25 1.25 1.25 0.00106 19 force @a[distance=..64]
execute if score @s stellarity.misc matches 34..36 run particle minecraft:dust_color_transition{from_color:[0.98, 0.349, 0.824],to_color:[0.306, 0.102, 0.4], scale:2.65} ^ ^ ^ 1.35 1.35 1.35 0.00106 20 force @a[distance=..64]

scoreboard players set #effect.duration stellarity.misc 240
scoreboard players set #effect.level stellarity.misc 1

execute if score @s stellarity.misc matches 1..3 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..0.75] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 4..6 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..0.85] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 7..9 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..0.95] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 10..12 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.05] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 13..15 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.15] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 16..18 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.25] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 19..21 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.35] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 21..24 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.45] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 25..27 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.55] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 28..30 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.65] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 31..33 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.75] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 34..36 as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.85] run \
	function stellarity:util/status_effects/jinx/apply

execute if score @s stellarity.misc matches 1..3 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..0.75] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 4..6 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..0.85] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 7..9 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..0.95] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 10..12 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.05] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 13..15 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.15] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 16..18 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.25] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 19..21 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.35] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 21..24 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.45] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 25..27 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.55] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 28..30 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.65] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 31..33 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.75] run \
	function stellarity:util/status_effects/jinx/apply
execute if score @s stellarity.misc matches 34..36 positioned ^ ^-0.9 ^ as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/spellbooks/jinx,distance=..1.85] run \
	function stellarity:util/status_effects/jinx/apply

execute if score @s stellarity.misc matches 60.. run kill @s
