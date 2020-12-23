execute if score @s counter_2 matches 1.. run function project-c:jobaction/105/skill/2/0b
execute unless score @s counter_2 matches 1.. run function project-c:jobaction/105/skill/2/0a

execute if score @s counter_2 matches 40.. run scoreboard players reset @s counter_2
