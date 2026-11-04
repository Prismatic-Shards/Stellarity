##        BDLIB
##    math/sign/#INit
##
## #INPUT - #IN (bdlib.math.sign)
## OUTPUT - #OUT (bdlib.math.sign)

execute if score #IN bdlib.math.sign matches 1.. store result score #OUT bdlib.math.sign run return 1
execute if score #IN bdlib.math.sign matches ..-1 store result score #OUT bdlib.math.sign run return -1
execute store result score #OUT bdlib.math.sign run return 0