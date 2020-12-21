#実行者     -> jobNumber = 011
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/011/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/011/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/011/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"石\"}"}}}},scores={CT1=1200..,sneak=1..,jump=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/011/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"彫刻\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/011/skill/2/0
execute if entity @s[scores={CT3=1200..,useTotem=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/011/skill/3/0

scoreboard players add @s[scores={sneak=1..}] counter 1
execute if entity @s[scores={counter=40..}] run function project-c:jobaction/011/sculpturelvlup

scoreboard players reset @s[scores={sneak=0}] counter

scoreboard players set @s sneak 0
scoreboard players reset @s jump