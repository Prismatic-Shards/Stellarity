# Loop through each index of the separators to split off the part before it
  $data modify storage stringlib:output split append string storage stringlib:input split.String $(Min) $(Max)
  execute if score #StringLib.KeepEmpty StringLib matches 0 store result score #StringLib.FindLength StringLib run data get storage stringlib:output split[-1]
  execute if score #StringLib.KeepEmpty StringLib matches 0 if score #StringLib.FindLength StringLib matches 0 run data remove storage stringlib:output split[-1]

execute if score #StringLib.SplitsLeft StringLib matches 1 run return 0

# Setup next loop
  scoreboard players remove #StringLib.SplitsLeft StringLib 1
  data remove storage stringlib:output find[0]

execute store result storage stringlib:temp data.Min int 1 run scoreboard players operation #StringLib.Max StringLib += #StringLib.SeparatorLength StringLib
execute store result storage stringlib:temp data.Max int 1 store result score #StringLib.Max StringLib run data get storage stringlib:output find[0]

function stellarity:util/stringlib/zprivate/split/main with storage stringlib:temp data
