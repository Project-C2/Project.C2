#実行者     -> jobNumber = 012
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/012/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/012/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ヴェックスソード\"}"}}}},scores={damageDealt=1..},gamemode=!spectator] run function project-c:jobaction/012/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ファング\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/012/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ヴィンディケーター\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/012/skill/3/0


scoreboard players reset @s sneak
scoreboard players reset @s damageDealt