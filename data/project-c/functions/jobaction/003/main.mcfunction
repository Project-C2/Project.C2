#実行者     -> jobNumber = 3
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/003/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/003/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/003/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"煙玉\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/003/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"瞬\"}"}}}},scores={CT3=1200..,jump=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/003/skill/3/0

execute store success score @s counter unless entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"隠\"}"}}}}] run effect clear @s minecraft:invisibility
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"隠\"}"}}}}] run effect give @s minecraft:invisibility 1 0 true

execute if entity @s[scores={counter=1}] if score #MenuTeamarmor counter matches 1..2 run function project-c:jobaction/003/setarmor

scoreboard players reset @s counter
scoreboard players reset @s sneak
scoreboard players reset @s jump