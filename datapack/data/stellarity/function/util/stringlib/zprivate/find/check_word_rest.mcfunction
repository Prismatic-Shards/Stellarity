# Check if 'Find' is located at that position (First character already matches) (IsFindLength is set to 0 because the 'store success' check here only stores the value if it's 1 because it has a command after it that might not run)
  execute store result score #StringLib.CheckString.CharsLeft StringLib run data get storage stringlib:temp data.String
  scoreboard players set #StringLib.CheckString.IsFindLength StringLib 0
  execute store success score #StringLib.CheckString.IsFindLength StringLib if score #StringLib.FindLength StringLib <= #StringLib.CheckString.CharsLeft StringLib run scoreboard players operation #StringLib.CheckString.CharsLeft StringLib = #StringLib.FindLength StringLib
  execute if score #StringLib.CheckString.IsFindLength StringLib matches 0 run return 0
  scoreboard players remove #StringLib.CheckString.CharsLeft StringLib 1

data modify storage stringlib:temp data.CheckString.String set string storage stringlib:temp data.String 1
data modify storage stringlib:temp data.CheckString.Find set string storage stringlib:input find.Find 1

function stellarity:util/stringlib/zprivate/find/check_word_rest_loop
execute if score #StringLib.SuccessCheck StringLib matches 1 run return 1
