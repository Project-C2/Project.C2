#実行者     -> jobNumber = -118
#実行地点   -> 実行者
#counter    -> 選択プレイヤー保持用

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:hiddenjob/-118/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:hiddenjob/-118/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:hiddenjob/-118/replaceitem/3


execute if entity @s[scores={useCarrotStick=1..},gamemode=!spectator] run function project-c:hiddenjob/-118/skill/use

execute if entity @s[scores={counter=1..},gamemode=!spectator] run function project-c:hiddenjob/-118/skill/0/1


#execute if entity @s[scores={relic=4}] run tag @s add job-118-usage-prohibited
#execute if entity @s[scores={relic=5}] run tag @s add job-118-usage-prohibited
#execute if entity @s[scores={relic=14}] run tag @s add job-118-usage-prohibited
#execute if entity @s[scores={relic=21}] run tag @s add job-118-usage-prohibited
#execute if entity @s[scores={relic=23}] run tag @s add job-118-usage-prohibited
execute if entity @s[scores={relic=27}] run tag @s add job-118-usage-prohibited

execute if entity @s[tag=job-118-usage-prohibited] run tellraw @s {"text":"このレリックは使えない！","bold":true,"color":"red"}
execute if entity @s[tag=job-118-usage-prohibited] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0
execute if entity @s[tag=job-118-usage-prohibited] run item replace entity @s container.8 with air
execute if entity @s[tag=job-118-usage-prohibited] run scoreboard players set @s relic 0
execute if entity @s[tag=job-118-usage-prohibited] run tag @s remove job-118-usage-prohibited


scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick