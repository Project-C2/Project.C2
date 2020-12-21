#実行者     -> jobNumber = 9
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/009/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/009/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/009/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ブレイドダンス\"}"}}}},scores={CT1=1200..,jump=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/009/skill/1/0
execute if entity @s[scores={CT2=1200..,damageDealt=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/009/skill/2/0

scoreboard players add @s[scores={counter=1..}] counter 1
scoreboard players set @s[scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] counter 1
execute if entity @s[scores={counter=2}] run function project-c:jobaction/009/skill/3/0
effect clear @s[scores={counter=4}] minecraft:speed
scoreboard players set @s[scores={counter=4}] CT3 1192
scoreboard players reset @s[scores={counter=4}] counter


scoreboard players reset @s jump
scoreboard players reset @s sneak
scoreboard players reset @s damageDealt