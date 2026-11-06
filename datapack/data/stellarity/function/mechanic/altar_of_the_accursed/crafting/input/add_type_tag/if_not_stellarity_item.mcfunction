data merge storage stringlib:input {split:{String:"",Separator:":"}}
data modify storage stringlib:input split.String set from storage stellarity:temp altar_of_the_accursed.item.id

function stellarity:util/stringlib/split

data merge storage stellarity:temp {altar_of_the_accursed:{macro:{namespace:"","id":""}}}
data modify storage stellarity:temp altar_of_the_accursed.macro.namespace set from storage stringlib:output split[0]
data modify storage stellarity:temp altar_of_the_accursed.macro.id set from storage stringlib:output split[1]
