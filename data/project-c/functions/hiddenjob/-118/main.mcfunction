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


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:hiddenjob/-118/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:hiddenjob/-118/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:hiddenjob/-118/replaceitem/3


execute if entity @s[scores={useCarrotStick=1..},gamemode=!spectator] run function project-c:hiddenjob/-118/skill/use

execute if entity @s[scores={counter=1..},gamemode=!spectator] run function project-c:hiddenjob/-118/skill/0/1

execute if entity @s[scores={counter_1=1..},gamemode=!spectator] run function project-c:hiddenjob/-118/skill/1/1
execute if entity @s[scores={counter_2=1..},gamemode=!spectator] run function project-c:hiddenjob/-118/skill/2/1



execute if entity @s[scores={relic=4}] run tag @s add job118-usage-prohibited
execute if entity @s[scores={relic=5}] run tag @s add job118-usage-prohibited
execute if entity @s[scores={relic=14}] run tag @s add job118-usage-prohibited
execute if entity @s[scores={relic=21}] run tag @s add job118-usage-prohibited
execute if entity @s[scores={relic=23}] run tag @s add job118-usage-prohibited

execute if entity @s[tag=job118-usage-prohibited] run tellraw @s {"text":"このレリックは使えない！","bold":true,"color":"red"}
execute if entity @s[tag=job118-usage-prohibited] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0
execute if entity @s[tag=job118-usage-prohibited] run replaceitem entity @s container.8 air
execute if entity @s[tag=job118-usage-prohibited] run scoreboard players set @s relic 0
execute if entity @s[tag=job118-usage-prohibited] run tag @s remove job118-usage-prohibited


tag @s[tag=!job118] add job118
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick