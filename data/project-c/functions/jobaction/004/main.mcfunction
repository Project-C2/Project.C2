#実行者     -> jobNumber = 4
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/004/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/004/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/004/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"スプレッドアロー\"}"}}}},scores={CT1=1200..,bow=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/004/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"アローレイン\"}"}}}},scores={CT2=1200..,bow=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/004/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"パワーショット\"}"}}}},scores={CT3=1200..,bow=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/004/skill/3/0


scoreboard players reset @s bow