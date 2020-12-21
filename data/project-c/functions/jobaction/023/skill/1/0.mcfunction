scoreboard players set @s CT1 1140
execute if entity @s[tag=023-0] unless entity @s[scores={counter=..0}] run function project-c:jobaction/023/skill/1/0m
execute if entity @s[tag=023-1] unless entity @s[scores={subcounter=..0}] run function project-c:jobaction/023/skill/1/0m
execute if entity @s[tag=023-2] unless entity @s[scores={counter_1=..0}] run function project-c:jobaction/023/skill/1/0m
execute if entity @s[tag=023-3] unless entity @s[scores={counter_2=..0}] run function project-c:jobaction/023/skill/1/0m
execute if entity @s[tag=023-4] unless entity @s[scores={counter_3=..0}] run function project-c:jobaction/023/skill/1/0m


execute if entity @s[tag=023-0,scores={counter=..0}] run function project-c:jobaction/023/skill/1/0-0
execute if entity @s[tag=023-1,scores={subcounter=..0}] run function project-c:jobaction/023/skill/1/0-1
execute if entity @s[tag=023-2,scores={counter_1=..0}] run function project-c:jobaction/023/skill/1/0-2
execute if entity @s[tag=023-3,scores={counter_2=..0}] run function project-c:jobaction/023/skill/1/0-3
execute if entity @s[tag=023-4,scores={counter_3=..0}] run function project-c:jobaction/023/skill/1/0-4


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
tag @e[tag=023-1-Animation] remove 023-1-Animation