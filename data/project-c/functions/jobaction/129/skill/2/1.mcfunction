
scoreboard players remove @s counter 1

particle dust 0.7 0 0 1 ~ ~1 ~ 0.2 0.4 0.2 0 3 force

execute unless data entity @s Passengers run function project-c:jobaction/129/skill/2/totem/break

execute unless score @s counter matches 1.. run function project-c:jobaction/129/skill/2/totem/end-check
