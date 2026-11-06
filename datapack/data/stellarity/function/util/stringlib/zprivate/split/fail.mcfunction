# Reset temporary storage & return fail if no separator was found
  data modify storage stringlib:input find set from storage stringlib:temp data2.PrevInput
  data modify storage stringlib:output find set from storage stringlib:temp data2.PrevOutput
  execute unless data storage stringlib:temp data2.PrevInput run data remove storage stringlib:input find
  execute unless data storage stringlib:temp data2.PrevOutput run data remove storage stringlib:output find
  data remove storage stringlib:temp data2
  data remove storage stringlib:temp data

data modify storage stringlib:output split append from storage stringlib:input split.String

return fail
