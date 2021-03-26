#実行者     -> jobNumber = 129
#実行地点   -> 実行者
#counter    -> 選択プレイヤー保持用
#counter_1    -> スキル1の使用時間
#counter_2    -> スキル2の使用時間
#counter_3    -> スキル1の選択プレイヤー保持
#subcounter   -> スキル1のスパン
#counter_4    -> スキル2の選択プレイヤー保持
#counter_9    -> スキル2のスパン


#counter_5    -> スキル1のチェック用
#counter_6    -> スキル2のチェック用

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/129/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/129/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/129/replaceitem/3


execute if entity @s[scores={useFungusStick=1..},gamemode=!spectator] run function project-c:jobaction/129/skill/use

execute if entity @s[nbt={SelectedItem:{tag:{129--:2b}}},scores={CT2=1200..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/129/skill/2/highlight


execute if entity @s[scores={sneak=1..,CT3=1200..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/129/skill/3/0


execute if entity @s[scores={counter=1..},gamemode=!spectator] run function project-c:jobaction/129/skill/0/1

execute if entity @s[scores={counter_1=1..},gamemode=!spectator] run function project-c:jobaction/129/skill/1/1
execute if entity @s[scores={counter_2=1..},gamemode=!spectator] run function project-c:jobaction/129/skill/2/1


execute if entity @s[tag=job118-advancement2.trigger] run tag @s remove job118-advancement2.trigger


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


scoreboard players reset @s[scores={useFungusStick=1..}] useFungusStick
scoreboard players reset @s[scores={sneak=1..}] sneak