scoreboard players add @s counter 1

particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1 force @a

particle minecraft:dust 0 0.5 0 3 ~ ~1 ~ 0 0 0 1 5 force @a
particle minecraft:dust 0 0.5 0 2 ~ ~1 ~ 1 1 1 1 5 force @a

execute if entity @s[tag=100-fireRed,tag=100-Level3] run effect give @e[team=Blue,distance=..2.5] instant_damage 1 0
execute if entity @s[tag=100-fireBlue,tag=100-Level3] run effect give @e[team=Red,distance=..2.5] instant_damage 1 0
execute if entity @s[tag=100-fireRed,tag=100-Level3] run effect give @e[team=Blue,distance=..2.5] levitation 2 0
execute if entity @s[tag=100-fireBlue,tag=100-Level3] run effect give @e[team=Red,distance=..2.5] levitation 2 0


kill @s[scores={counter=9..}]