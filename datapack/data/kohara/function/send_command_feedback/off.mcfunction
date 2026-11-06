execute unless score #cmd_feedback kohara.misc matches -2147483648..2147483647 store result score #cmd_feedback kohara.misc run gamerule send_command_feedback
gamerule send_command_feedback false

schedule function kohara:send_command_feedback/scheduled 2t replace
