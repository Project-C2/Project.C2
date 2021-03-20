execute if score @s counter_1 matches 1.. run function project-c:jobaction/123/skill/1/0b
execute unless score @s counter_1 matches 1.. run function project-c:jobaction/123/skill/1/0a

execute if score @s counter_1 matches 40.. run scoreboard players reset @s counter_1
