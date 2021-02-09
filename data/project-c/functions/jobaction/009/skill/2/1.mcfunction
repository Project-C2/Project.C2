scoreboard players add @s counter_2 1

scoreboard players reset @s[scores={counter_2=101..}] counter_2

execute if entity @s[gamemode=!spectator] run particle sweep_attack ~ ~1 ~ 0 0 0 1 1