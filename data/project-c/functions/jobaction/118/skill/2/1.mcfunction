scoreboard players remove @s counter_2 1
scoreboard players add @s counter_9 1

execute if score @s counter_9 matches 1 run function project-c:jobaction/118/skill/2/2

execute if score @s counter_9 matches 10.. run scoreboard players reset @s counter_9
