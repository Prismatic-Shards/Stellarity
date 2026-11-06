# Compare characters
  data modify storage stringlib:temp data.LastChar set string storage stringlib:temp data.CheckString.String -1
  execute store success score #StringLib.SuccessCheck StringLib run data modify storage stringlib:temp data.LastChar set string storage stringlib:temp data.CheckString.Find -1
  execute if score #StringLib.SuccessCheck StringLib matches 1 run return run scoreboard players set #StringLib.SuccessCheck StringLib 0

# Next Loop (If the main string runs out, return 0. If the Find string runs out, return 1)
  execute if score #StringLib.CheckString.CharsLeft StringLib matches 1 store result score #StringLib.SuccessCheck StringLib run return run scoreboard players get #StringLib.CheckString.IsFindLength StringLib
  scoreboard players remove #StringLib.CheckString.CharsLeft StringLib 1
  data modify storage stringlib:temp data.CheckString.String set string storage stringlib:temp data.CheckString.String 0 -1
  data modify storage stringlib:temp data.CheckString.Find set string storage stringlib:temp data.CheckString.Find 0 -1
  function stellarity:util/stringlib/zprivate/find/reversed/check_word_rest_loop
