#実行者     -> jobNumber = 039
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/039/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/039/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/039/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ショートアサルト\"}"}}}},scores={CT1=1200..,jump=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/039/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"サイコショット\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/039/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"トランス\"}"}}}},scores={CT3=1200..},advancements={project-c:wanco_job/039/trans=true},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/039/skill/3/0


scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt
scoreboard players reset @s[scores={jump=1..}] jump

execute if entity @s[advancements={project-c:wanco_job/039/trans=true}] run advancement revoke @s only project-c:wanco_job/039/trans