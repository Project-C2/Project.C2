teleport @s ^ ^ ^1.5 ~ ~
scoreboard players add @s subcounter 1
execute unless block ^ ^ ^1.5 minecraft:air at @s run function project-c:jobaction/040/skill/1/end
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.1 1 normal @a

execute if entity @s[scores={subcounter=41..}] run kill @s
