#実行者     -> jobNumber = 108
#実行地点   -> 実行者

scoreboard players set @s CT2 0

execute rotated ~ 0 run summon armor_stand ^ ^ ^3 {Marker:1b,Invisible:1b,Tags:["CHELGENOCIDE"]}

schedule function project-c:jobaction/108/skill/2/schedule_loop 1t replace

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2