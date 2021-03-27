
scoreboard players add @s counter 1

#particle dust 0.7 0 0 1 ~ ~1 ~ 0.2 0.4 0.2 0 3 force
particle dust 0.7 0 0 0.3 ~ ~ ~ 0 0 0 0 1 force

execute if score @s counter matches 1..10 positioned ^ ^ ^0.115 run function project-c:jobaction/129/skill/2/totem/particle
execute if score @s counter matches 11 rotated ~180 ~ positioned ^ ^ ^0.115 run function project-c:jobaction/129/skill/2/totem/particle
execute if score @s counter matches 12..20 positioned ^ ^ ^0.115 run function project-c:jobaction/129/skill/2/totem/particle
execute if score @s counter matches 11.. run scoreboard players reset @s