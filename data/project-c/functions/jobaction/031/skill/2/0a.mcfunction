scoreboard players add @s counter 1
tp @s ~ ~ ~ ~6 ~
execute anchored feet positioned ~ ~0.1 ~ run particle minecraft:dust 1 0 0 2 ^2.5 ^ ^ 0 0 0 1 2 force @a
execute anchored feet positioned ~ ~0.4 ~ run particle minecraft:dust 0.7 0 0 1.5 ^2.5 ^ ^ 0 0 0 1 2 normal @a
execute unless entity @s[scores={counter=60..}] as @s at @s run function project-c:jobaction/031/skill/2/0a
execute if entity @s[scores={counter=60..}] run scoreboard players reset @s counter

