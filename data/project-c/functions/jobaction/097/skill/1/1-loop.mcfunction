scoreboard players add @s counter_3 1
particle minecraft:dust 1 1 1 0.5 ~ ~ ~ 0.1 0.1 0.1 1 2 force @a
execute unless score @s counter_3 matches 150.. positioned ^ ^ ^1 if block ~ ~ ~ #project-c:wancomatter/like_air run function project-c:jobaction/097/skill/1/1-loop