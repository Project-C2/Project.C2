scoreboard players add @s counter_2 1

execute if entity @s[team=Red,gamemode=!spectator] run effect give @s minecraft:strength 1 0 true
execute if entity @s[team=Blue,gamemode=!spectator] run effect give @s minecraft:strength 1 0 true

scoreboard players reset @s[scores={counter_2=101..}] counter_2

execute if entity @s[gamemode=!spectator] run particle sweep_attack ~ ~1 ~ 0 0 0 1 1