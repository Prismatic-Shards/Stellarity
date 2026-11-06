##################################################################################
  ##                                  HOW TO USE                                  ##
  ##################################################################################
    ## 1. Set the following data in the 'stringlib:input split' data storage:       ##
      ##    - String: Original string                                                 ##
        ##    - Separator: String that splits the original into multiple                ##
          ##        - Default: " "                                                        ##
            ##        - "": Split each character                                            ##
              ##    - n: Up until which instance of the separator it should split             ##
                ##        - Unset or 0: All                                                     ##
                  ##        - Positive: First n                                                   ##
                    ##        - Negative: Last -n                                                   ##
                      ##    - KeepEmpty: Boolean for whether to keep empty Strings in the output list ##
                        ##        - Unset or 0b: Remove                                                 ##
                          ##        - 1b: Keep                                                            ##
                            ##                                                                              ##
                              ## 2. Run this function                                                         ##
                                ##                                                                              ##
                                  ## Output: List of Strings, separated by the Separator                          ##
                                    ##         Example:                                                             ##
                                      ##                 - String: "Hello World!"                                     ##
                                        ##                 - Separator: " "                                             ##
                                          ##                 - n: 1                                                       ##
                                            ##                 - KeepEmpty: Unset                                           ##
                                              ##                 => Output: ["Hello", "World!"]                               ##
                                                ##                                                                              ##
                                                  ##                 - String: "Test! HelloTestWorld!"                            ##
                                                    ##                 - Separator: "Test"                                          ##
                                                      ##                 - n: -1                                                      ##
                                                        ##                 - KeepEmpty: Unset                                           ##
                                                          ##                 => Output: ["Test! Hello", "World!"]                         ##
                                                            ##                                                                              ##
                                                              ##                 - String: " Hello    World! "                                ##
                                                                ##                 - Separator: " "                                             ##
                                                                  ##                 - n: Unset                                                   ##
                                                                    ##                 - KeepEmpty: 1b                                              ##
                                                                      ##                 => Output: ["", "Hello", "", "", "", "World!", ""]           ##
                                                                        ##                                                                              ##
                                                                          ##                                                                              ##
                                                                            ## Return value: Number of elements in the output list, or fail                 ##
                                                                              ##                                                                              ##
                                                                                ## The output is found in the 'stringlib:output split' data storage             ##
                                                                                ##################################################################################
                                                                                  # Potential optimization: Detect if the current instance of the seperator came DIRECTLY after the previous one. If yes, and if KeepEmpty is 0b, ignore it and don't run the macro
                                                                                    # => It's probably best to set up a recursive loop that continues the loop from main, but skips everything for as long as the separators are after each other. So it checks if the *next* one is directly after the current one
                                                                                      # ALSO OPTIMIZE THE "SPLIT EVERY CHARACTER". CAN BE HEAVILY OPTIMIZED TO PREVENT LOOPING

                                                                                      # Setup
                                                                                        data modify storage stringlib:output split set value []
                                                                                        execute unless data storage stringlib:input split.Separator run data modify storage stringlib:temp data.Separator set value " "
                                                                                        data modify storage stringlib:temp data.Separator set from storage stringlib:input split.Separator

                                                                                      # Reset temporary storage & return fail if input string is empty
                                                                                        execute store result score #StringLib.SeparatorLength StringLib run data get storage stringlib:temp data.Separator
                                                                                        execute store result score #StringLib.CharsTotal StringLib run data get storage stringlib:input split.String
                                                                                        execute if score #StringLib.CharsTotal StringLib matches 0 run data modify storage stringlib:output split set value [""]
                                                                                        execute if score #StringLib.CharsTotal StringLib matches 0 run data remove storage stringlib:temp data
                                                                                        execute if score #StringLib.CharsTotal StringLib matches 0 run return fail

                                                                                      # If separator is empty string, split each character
                                                                                        execute if score #StringLib.SeparatorLength StringLib matches 0 run return run function stellarity:util/stringlib/zprivate/split/split_chars/setup

                                                                                      # Find all instances of the separator
                                                                                        data modify storage stringlib:temp data2.PrevInput set from storage stringlib:input find
                                                                                        data modify storage stringlib:temp data2.PrevOutput set from storage stringlib:output find

                                                                                      data modify storage stringlib:input find.String set from storage stringlib:input split.String
                                                                                      data modify storage stringlib:input find.Find set from storage stringlib:temp data.Separator
                                                                                      data remove storage stringlib:input find.n
                                                                                      data modify storage stringlib:input find.n set from storage stringlib:input split.n
                                                                                      function stellarity:util/stringlib/find

                                                                                    # Setup
                                                                                      execute store result score #StringLib.KeepEmpty StringLib run data get storage stringlib:input split.KeepEmpty

                                                                                    # Reset temporary storage & return fail if no separator was found
                                                                                      execute if data storage stringlib:output {find:[-1]} run return run function stellarity:util/stringlib/zprivate/split/fail

                                                                                    # Split
                                                                                      execute store result score #StringLib.FindAmount StringLib run data get storage stringlib:input split.n

                                                                                    # Split the part in front of every instance of the separator (Do the first iteration here)
                                                                                      execute store result score #StringLib.SplitsLeft StringLib if data storage stringlib:output find[]

                                                                                    data modify storage stringlib:temp data.Min set value 0
                                                                                    execute if score #StringLib.FindLength StringLib matches 0.. store result storage stringlib:temp data.Max int 1 store result score #StringLib.Max StringLib run data get storage stringlib:output find[0]
                                                                                    execute if score #StringLib.FindLength StringLib matches 0.. run function stellarity:util/stringlib/zprivate/split/main with storage stringlib:temp data
                                                                                    execute if score #StringLib.FindLength StringLib matches ..-1 store result storage stringlib:temp data.Max int 1 store result score #StringLib.Max StringLib run data get storage stringlib:output find[-1]
                                                                                    execute if score #StringLib.FindLength StringLib matches ..-1 run function stellarity:util/stringlib/zprivate/split/reversed/main with storage stringlib:temp data

                                                                                  # Append a "" if KeepEmpty is 1b and there's a trailing separator
                                                                                    execute store result storage stringlib:temp data.Min int 1 run scoreboard players operation #StringLib.Max StringLib += #StringLib.SeparatorLength StringLib
                                                                                    execute if score #StringLib.KeepEmpty StringLib matches 1 if score #StringLib.Max StringLib = #StringLib.CharsTotal StringLib run data modify storage stringlib:output split append value ""

                                                                                  # Append the part after the last separator
                                                                                    execute unless score #StringLib.Max StringLib = #StringLib.CharsTotal StringLib run function stellarity:util/stringlib/zprivate/split/last_segment with storage stringlib:temp data

                                                                                  # function stellarity:util/stringlib/zprivate/split/setup with storage stringlib:temp data

                                                                                  # Reset
                                                                                    data modify storage stringlib:input find set from storage stringlib:temp data2.PrevInput
                                                                                    data modify storage stringlib:output find set from storage stringlib:temp data2.PrevOutput
                                                                                    execute unless data storage stringlib:temp data2.PrevInput run data remove storage stringlib:input find
                                                                                    execute unless data storage stringlib:temp data2.PrevOutput run data remove storage stringlib:output find
                                                                                    data remove storage stringlib:temp data2
                                                                                    data remove storage stringlib:temp data

                                                                                  # Return Values
                                                                                    return run execute if data storage stringlib:output split[]
