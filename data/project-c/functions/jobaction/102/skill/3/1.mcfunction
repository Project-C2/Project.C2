scoreboard players add @s counter_4 1
execute if score @s counter_4 matches 1040 run function project-c:jobaction/102/skill/3/2
execute if score @s counter_4 matches 1060 run function project-c:jobaction/102/skill/3/3
execute if score @s counter_4 matches 1080 run function project-c:jobaction/102/skill/3/4
execute if score @s counter_4 matches 1081.. run function project-c:jobaction/102/skill/3/5
execute if entity @s[nbt={Health:0f}] run scoreboard players reset @s counter_4

tag @s add 102
execute unless entity @e[tag=!102,limit=1] run scoreboard players reset @s counter_4
tag @s remove 102