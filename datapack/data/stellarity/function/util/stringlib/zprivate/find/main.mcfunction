# Setup
  data modify storage stringlib:output find append value -1
  function stellarity:util/stringlib/zprivate/find/check_word_start_loop

# Loop (Search for next occurence of the "Find" string. Stop if it found enough occurences already or if it hit a dead end, or if the string ends. Needs that last check because it skips it in "check_word_start_loop" if the first letter matches. >= this time because it removed 1 from the index)
  execute if score #StringLib.FoundNothing StringLib matches 1 run return run execute if data storage stringlib:output find[1] run data remove storage stringlib:output find[-1]
  execute if score #StringLib.FindAmount StringLib matches 1 run return 0
  execute if score #StringLib.Index StringLib >= #StringLib.CharsTotal StringLib run return 0

scoreboard players remove #StringLib.FindAmount StringLib 1
scoreboard players add #StringLib.Index StringLib 1
scoreboard players operation #StringLib.Index StringLib += #StringLib.FindLength StringLib
execute if score #StringLib.FindLength StringLib matches 1 run data modify storage stringlib:temp data.String set string storage stringlib:temp data.String 1
execute if score #StringLib.FindLength StringLib matches 2.. run data modify storage stringlib:temp data.String set string storage stringlib:temp data.CheckString.String 1
function stellarity:util/stringlib/zprivate/find/main
