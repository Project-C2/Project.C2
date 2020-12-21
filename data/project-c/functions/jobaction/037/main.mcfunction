#実行者     -> jobNumber = 37
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/037/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/037/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/037/replaceitem/3


execute if entity @s[scores={CT1=1200..,useLinger=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/037/skill/1/0

execute if entity @s[scores={CT2=1200..,useSplash=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/037/skill/2/0

execute if entity @s[scores={CT3=1200..,usePotion=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/037/skill/3/0

scoreboard players reset @s useSplash
scoreboard players reset @s useLinger
scoreboard players reset @s usePotion