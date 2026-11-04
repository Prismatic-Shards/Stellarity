# Initialize list of 7 available colors
data modify storage stellarity:temp rk.pool set value [1, 2, 3, 4, 5, 6, 7]
scoreboard players set #slot kohara.misc 1

# Slot 1: pick 0..6
execute store result score #rnd kohara.misc run random value 0..6
execute store result storage stellarity:temp rk.rnd int 1 run scoreboard players get #rnd kohara.misc
function stellarity:item/radiant_kaleidoscope/mark/pick_color with storage stellarity:temp rk

# Slot 2: pick 0..5
execute store result score #rnd kohara.misc run random value 0..5
execute store result storage stellarity:temp rk.rnd int 1 run scoreboard players get #rnd kohara.misc
function stellarity:item/radiant_kaleidoscope/mark/pick_color with storage stellarity:temp rk

# Slot 3: pick 0..4
execute store result score #rnd kohara.misc run random value 0..4
execute store result storage stellarity:temp rk.rnd int 1 run scoreboard players get #rnd kohara.misc
function stellarity:item/radiant_kaleidoscope/mark/pick_color with storage stellarity:temp rk

# Slot 4: pick 0..3
execute store result score #rnd kohara.misc run random value 0..3
execute store result storage stellarity:temp rk.rnd int 1 run scoreboard players get #rnd kohara.misc
function stellarity:item/radiant_kaleidoscope/mark/pick_color with storage stellarity:temp rk

# Slot 5: pick 0..2
execute store result score #rnd kohara.misc run random value 0..2
execute store result storage stellarity:temp rk.rnd int 1 run scoreboard players get #rnd kohara.misc
function stellarity:item/radiant_kaleidoscope/mark/pick_color with storage stellarity:temp rk

# Slot 6: pick 0..1
execute store result score #rnd kohara.misc run random value 0..1
execute store result storage stellarity:temp rk.rnd int 1 run scoreboard players get #rnd kohara.misc
function stellarity:item/radiant_kaleidoscope/mark/pick_color with storage stellarity:temp rk

# Slot 7: last element (0)
scoreboard players set #rnd kohara.misc 0
data modify storage stellarity:temp rk.rnd set value 0
function stellarity:item/radiant_kaleidoscope/mark/pick_color with storage stellarity:temp rk
