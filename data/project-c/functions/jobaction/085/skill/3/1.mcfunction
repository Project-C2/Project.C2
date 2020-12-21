scoreboard players add @s counter 1
kill @s[scores={counter=100..}]

particle minecraft:dust 0 0 0.5 1 ~ ~3 ~ 3 3 3 0 20 force @a

execute if entity @s[tag=085-riftRed] run effect give @e[tag=Battle,team=Blue,distance=..6] wither 1 4
execute if entity @s[tag=085-riftBlue] run effect give @e[tag=Battle,team=Red,distance=..6] wither 1 4