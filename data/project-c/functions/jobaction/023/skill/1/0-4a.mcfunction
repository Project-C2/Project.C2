scoreboard players add @s counter 1
tp @s ~ ~ ~ ~6 ~
execute anchored feet positioned ~ ~0.1 ~ run particle minecraft:dust 0.33 1 0.33 2 ^1.5 ^ ^ 0 0 0 1 2 normal @a
execute unless entity @s[scores={counter=60..}] as @s at @s run function project-c:jobaction/023/skill/1/0-4a