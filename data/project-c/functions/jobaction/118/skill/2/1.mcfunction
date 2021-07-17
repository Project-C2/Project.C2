scoreboard players remove @s counter_2 1
scoreboard players add @s counter_6 1
scoreboard players add @s counter_9 1

execute if score @s counter_9 matches 1 run function project-c:jobaction/118/skill/2/2

execute if score @s counter_9 matches 10.. run scoreboard players reset @s counter_9

execute unless score @s CT2 matches 1200.. run function project-c:jobaction/118/skill/2/ct-keep


execute if score @s counter_2 matches 0 run function project-c:jobaction/118/skill/2/end
