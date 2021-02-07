scoreboard players remove @s counter_1 1
scoreboard players add @s counter_5 1
scoreboard players add @s subcounter 1

scoreboard players set @s OutCombat 0

execute if score @s subcounter matches 1 run function project-c:jobaction/118/skill/1/2

execute if score @s subcounter matches 10.. run scoreboard players reset @s subcounter