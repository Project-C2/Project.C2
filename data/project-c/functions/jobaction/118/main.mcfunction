#実行者     -> jobNumber = 118
#実行地点   -> 実行者
#counter    -> 選択プレイヤー保持用
#subcounter -> スキル1のスパン
#counter_1    -> スキル1の使用時間
#counter_2    -> スキル2の使用時間
#counter_3    -> スキル1の選択プレイヤー保持
#counter_4    -> スキル2の選択プレイヤー保持
#counter_9    -> スキル2のスパン

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/118/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/118/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/118/replaceitem/3


execute if entity @s[scores={useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/118/skill/use

execute if entity @s[scores={counter=1..},gamemode=!spectator] run function project-c:jobaction/118/skill/0/1

execute if entity @s[scores={counter_1=1..},gamemode=!spectator] run function project-c:jobaction/118/skill/1/1
execute if entity @s[scores={counter_2=1..},gamemode=!spectator] run function project-c:jobaction/118/skill/2/1



tag @s[tag=!job118] add job118
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick