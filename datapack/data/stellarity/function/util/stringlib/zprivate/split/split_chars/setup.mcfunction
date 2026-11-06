# IDEA: Do the same thing as with concat, so hardcode it for multiples of 100 chars. NEEDS TO WORK WITH NEGATIVE n AS WELL. BENCHMARK WHEN IT STARTS TO BE FASTER

# Split each character off
  data modify storage stringlib:temp data.String set from storage stringlib:input split.String
  execute store result score #StringLib.CharsLeft StringLib run data get storage stringlib:input split.n
  execute if score #StringLib.CharsLeft StringLib matches 0 run scoreboard players operation #StringLib.CharsLeft StringLib = #StringLib.CharsTotal StringLib
  execute if score #StringLib.CharsLeft StringLib matches 0.. if score #StringLib.CharsLeft StringLib > #StringLib.CharsTotal StringLib run scoreboard players operation #StringLib.CharsLeft StringLib = #StringLib.CharsTotal StringLib
  execute if score #StringLib.CharsLeft StringLib matches ..-1 run scoreboard players operation #StringLib.CharsTotal StringLib *= #StringLib.c-1 StringLib
  execute if score #StringLib.CharsLeft StringLib matches ..-1 if score #StringLib.CharsLeft StringLib < #StringLib.CharsTotal StringLib run scoreboard players operation #StringLib.CharsLeft StringLib = #StringLib.CharsTotal StringLib

execute if score #StringLib.CharsLeft StringLib matches 0.. run function stellarity:util/stringlib/zprivate/split/split_chars/main
execute if score #StringLib.CharsLeft StringLib matches ..-1 run function stellarity:util/stringlib/zprivate/split/split_chars/reversed/main

# Append the part after it (if CharsLeft was less than CharsTotal at the start). NEEDS TO WORK WITH NEGATIVE n AS WELL
  execute store result score #StringLib.CharsTotal StringLib run data get storage stringlib:temp data.String
  execute if score #StringLib.CharsTotal StringLib matches 2.. if score #StringLib.CharsLeft StringLib matches 1 run data modify storage stringlib:output split append string storage stringlib:temp data.String 1
  execute if score #StringLib.CharsTotal StringLib matches 2.. if score #StringLib.CharsLeft StringLib matches -1 run data modify storage stringlib:output split prepend string storage stringlib:temp data.String 0 -1

# Reset
  data remove storage stringlib:temp data

# Return value
  return run execute if data storage stringlib:output split[]
