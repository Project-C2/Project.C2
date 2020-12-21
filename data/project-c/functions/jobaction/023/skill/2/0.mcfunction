scoreboard players set @s CT2 1140
execute if entity @s[tag=023-0] unless entity @s[scores={counter=..0}] run function project-c:jobaction/023/skill/2/0m
execute if entity @s[tag=023-1] unless entity @s[scores={subcounter=..0}] run function project-c:jobaction/023/skill/2/0m
execute if entity @s[tag=023-2] unless entity @s[scores={counter_1=..0}] run function project-c:jobaction/023/skill/2/0m
execute if entity @s[tag=023-3] unless entity @s[scores={counter_2=..0}] run function project-c:jobaction/023/skill/2/0m
execute if entity @s[tag=023-4] unless entity @s[scores={counter_3=..0}] run function project-c:jobaction/023/skill/2/0m


execute if entity @s[tag=023-0,scores={counter=..0}] run function project-c:jobaction/023/skill/2/0-0
execute if entity @s[tag=023-1,scores={subcounter=..0}] run function project-c:jobaction/023/skill/2/0-1
execute if entity @s[tag=023-2,scores={counter_1=..0}] run function project-c:jobaction/023/skill/2/0-2
execute if entity @s[tag=023-3,scores={counter_2=..0}] run function project-c:jobaction/023/skill/2/0-3
execute if entity @s[tag=023-4,scores={counter_3=..0}] run function project-c:jobaction/023/skill/2/0-4

execute if entity @e[tag=023-2-Animation] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1.3
execute if entity @e[tag=023-2-Animation] run particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.03 50
execute if entity @e[tag=023-2-Animation] if entity @s[team=Red] run team join RedDummy @e[tag=023-2-Animation]
execute if entity @e[tag=023-2-Animation] if entity @s[team=Blue] run team join BlueDummy @e[tag=023-2-Animation]
execute if entity @e[tag=023-2-Animation] at @e[tag=023-2-Animation] run scoreboard players operation @e[tag=023-2-Animation,limit=1,sort=nearest,distance=..0.01] playerNumber = @s playerNumber

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
tag @e[tag=023-2-Animation] remove 023-2-Animation