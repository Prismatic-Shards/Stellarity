# T = 20 / attackSpeed
# Returns the amount of ticks it takes to fully 'charge' an attack

execute store result score #attack_speed kohara.misc run attribute @s attack_speed get 100000
scoreboard players set #attack_cooldown kohara.misc 2000000

scoreboard players operation #attack_cooldown kohara.misc /= #attack_speed kohara.misc
