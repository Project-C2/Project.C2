scoreboard players add @s counter 1
execute if entity @s[scores={counter=40..}] at @s run function project-c:jobaction/023/skill/2/3-3pa-
execute if entity @s[scores={counter=30..}] at @s run function project-c:jobaction/023/skill/2/3-3pa-

scoreboard players set @s[scores={subcounter=3..}] subcounter 0
kill @s[scores={counter=100..}]