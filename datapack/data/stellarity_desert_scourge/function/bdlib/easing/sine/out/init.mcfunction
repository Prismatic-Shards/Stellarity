##        BDLIB
##    easing/sine/out/init
##
## INPUT - #IN (bdlib.easing)
##   1.0 = 100
## OUTPUT - #OUT (bdlib.easing)
##   1.0 = 1000

execute store result storage stellarity_desert_scourge:bdlib_temp easing.index int 1 run scoreboard players get #IN bdlib.easing
execute store result score #OUT bdlib.easing run function stellarity_desert_scourge:bdlib/easing/sine/out/_macros with storage stellarity_desert_scourge:bdlib_temp easing
return run scoreboard players get #OUT bdlib.easing