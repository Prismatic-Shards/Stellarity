# Split off the first character and append it to the output
  data modify storage stringlib:output split prepend string storage stringlib:temp data.String -1

# Setup next loop
  execute if score #StringLib.CharsLeft StringLib matches -1 run return 0
  scoreboard players add #StringLib.CharsLeft StringLib 1
  data modify storage stringlib:temp data.String set string storage stringlib:temp data.String 0 -1

function stellarity:util/stringlib/zprivate/split/split_chars/reversed/main
