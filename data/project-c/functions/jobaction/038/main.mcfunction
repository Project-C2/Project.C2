#実行者     -> jobNumber = 038
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={counter_1=1..}] run function project-c:jobaction/038/skill/1/1
execute if entity @s[scores={counter_2=1..}] run function project-c:jobaction/038/skill/2/1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/038/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/038/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/038/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"風王結界"}'}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/038/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"約束された勝利の剣"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/038/skill/2/0

execute if score @s sneak matches 1.. run scoreboard players reset @s sneak
scoreboard players remove @s subcounter 1
execute if entity @s[scores={subcounter=..0}] run effect give @s minecraft:regeneration 10 1 true
execute if entity @s[scores={subcounter=..0}] run scoreboard players set @s subcounter 200
execute if entity @s[scores={counter_2=0}] run scoreboard players reset @s counter_3