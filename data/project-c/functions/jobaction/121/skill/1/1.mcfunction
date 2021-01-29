scoreboard players add @s counter 1
tag @s add 121-S1-AEC-this
execute if score @s counter matches 1 run function project-c:jobaction/121/skill/1/particle/2
execute if score @s counter matches 3 run function project-c:jobaction/121/skill/1/particle/3
execute if score @s counter matches 5 run function project-c:jobaction/121/skill/1/particle/4
execute if score @s counter matches 7 run function project-c:jobaction/121/skill/1/particle/5
execute if score @s counter matches 9.. run function project-c:jobaction/121/skill/1/particle/5
tag @s remove 121-S1-AEC-this

execute if score @s counter_1 matches 240.. run kill @s