#実行者     -> jobNumber = 118
#実行地点   -> 実行者
#counter    -> 選択プレイヤー保持用
#subcounter -> 
#counter_1    -> 
#counter_2    -> 
#counter_3    -> 

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/118/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/118/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/118/replaceitem/3


execute if entity @s[scores={counter=1..},gamemode=!spectator] run function project-c:jobaction/118/skill/0/1

execute if entity @s[scores={useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/118/skill/use


scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick