scoreboard players add @s counter 1
tag @s add 099-S2-AEC-this
execute if score @s counter matches 1 run function project-c:jobaction/099/skill/2/particle/2
execute if score @s counter matches 3 run function project-c:jobaction/099/skill/2/particle/3
execute if score @s counter matches 5 run function project-c:jobaction/099/skill/2/particle/4
execute if score @s counter matches 7 run function project-c:jobaction/099/skill/2/particle/5
execute if score @s counter matches 9.. run function project-c:jobaction/099/skill/2/particle/5
tag @s remove 099-S2-AEC-this

execute if score @s counter_1 matches 400.. run function project-c:jobaction/099/skill/2/end