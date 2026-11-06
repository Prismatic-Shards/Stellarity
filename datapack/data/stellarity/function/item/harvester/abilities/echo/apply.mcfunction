scoreboard players set #effect.duration stellarity.misc 100
execute unless score @s stellarity.status_effects.echo.damage matches 1.. run \
	scoreboard players set #echo.damage stellarity.misc 15
execute if score @s stellarity.status_effects.echo.damage matches 15..34 run \
	scoreboard players set #echo.damage stellarity.misc 10
execute if score @s stellarity.status_effects.echo.damage matches 35.. run \
	scoreboard players set #echo.damage stellarity.misc 5

function stellarity:util/status_effects/echo/apply
