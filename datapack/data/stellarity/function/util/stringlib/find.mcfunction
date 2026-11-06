##########################################################################################################
  ##                                              HOW TO USE                                              ##
  ##########################################################################################################
    ## 1. Set the following data in the 'stringlib:input find' data storage:                                ##
      ##    - String: Original string                                                                         ##
        ##    - Find: String you want to search for                                                             ##
          ##    - n: How many instances you are looking for                                                       ##
            ##        - Unset or 0: All                                                                             ##
              ##        - Positive: First n                                                                           ##
                ##        - Negative: Last -n                                                                           ##
                  ## 2. Run this function                                                                                 ##
                    ##                                                                                                      ##
                      ## Output: List of all start indices for every instances  of the string ([-1] if nothing is found)      ##
                        ##         Example:                                                                                     ##
                          ##                 - String: "Hello World!"                                                             ##
                            ##                 - Find: "l"                                                                          ##
                              ##                 - n: 1                                                                               ##
                                ##                 => Output: [2]                                                                       ##
                                  ##                                                                                                      ##
                                    ##                 - String: "Hello World!"                                                             ##
                                      ##                 - Find: "l"                                                                          ##
                                        ##                 - n: Unset                                                                           ##
                                          ##                 => Output: [2,3,9]                                                                   ##
                                            ##                                                                                                      ##
                                              ##                 - String: "Hello World!"                                                             ##
                                                ##                 - Find: "l"                                                                          ##
                                                  ##                 - n: -2                                                                              ##
                                                    ##                 => Output: [9,3]                                                                     ##
                                                      ##                                                                                                      ##
                                                        ## Return value: Number of instances found, or fail                                                     ##
                                                          ##                                                                                                      ##
                                                            ## The output is found in the 'stringlib:output find' data storage                                      ##
                                                            ##########################################################################################################

                                                            # Search for 'Find' inside 'String' (FindAmount is altered in the functions, so the order is very important)
                                                              data modify storage stringlib:temp data.String set from storage stringlib:input find.String
                                                              execute store result score #StringLib.FindLength StringLib run data get storage stringlib:input find.Find
                                                              execute store result score #StringLib.CharsTotal StringLib run data get storage stringlib:temp data.String
                                                              scoreboard players operation #StringLib.CharsTotal StringLib -= #StringLib.FindLength StringLib
                                                              execute store result score #StringLib.FindAmount StringLib run data get storage stringlib:input find.n

                                                            execute unless score #StringLib.FindAmount StringLib matches ..-1 run scoreboard players set #StringLib.Index StringLib 1
                                                            execute if score #StringLib.FindAmount StringLib matches ..-1 run scoreboard players operation #StringLib.Index StringLib = #StringLib.CharsTotal StringLib

                                                          data modify storage stringlib:output find set value []

                                                        execute if score #StringLib.FindAmount StringLib matches -1 run data modify storage stringlib:output find append value -1
                                                        execute if score #StringLib.FindAmount StringLib matches -1 run function stellarity:util/stringlib/zprivate/find/reversed/check_word_start_loop
                                                        execute if score #StringLib.FindAmount StringLib matches ..-2 run function stellarity:util/stringlib/zprivate/find/reversed/main

                                                      execute if score #StringLib.FindAmount StringLib matches 1 run data modify storage stringlib:output find append value -1
                                                      execute if score #StringLib.FindAmount StringLib matches 1 run function stellarity:util/stringlib/zprivate/find/check_word_start_loop
                                                      execute if score #StringLib.FindAmount StringLib matches 0.. unless score #StringLib.FindAmount StringLib matches 1 run function stellarity:util/stringlib/zprivate/find/main

                                                    scoreboard players set #StringLib.FoundNothing StringLib 0

                                                  # Reset
                                                    data remove storage stringlib:temp data

                                                  # Return Values
                                                    execute if data storage stringlib:output {find:[-1]} run return fail
                                                    return run execute if data storage stringlib:output find[]
