function project-c:jobaction/105/skill/2/0b_r
scoreboard players reset #105-

scoreboard players set @s CT2 960
execute unless score @s counter_5 matches 1 run scoreboard players operation @s counter_1 *= #3 counter
execute unless score @s counter_5 matches 1 run scoreboard players operation @s counter_1 /= #2 counter
scoreboard players operation @s CT2 += @s counter_1
execute if score @s CT2 matches 960..979 run replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 12
execute if score @s CT2 matches 980..999 run replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 11
execute if score @s CT2 matches 1000..1019 run replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 10

#myチームに他プレイヤーがいる時にセリフ吐くやつ
tag @s add 105_3
execute if entity @s[team=Red] if entity @a[team=Red,tag=!105_3,scores={jobNumber=105},limit=1] run say ワッショイ！ ワッショイ！
execute if entity @s[team=Blue] if entity @a[team=Blue,tag=!105_3,scores={jobNumber=105},limit=1] run say ワッショイ！ ワッショイ！
tag @s remove 105_3

scoreboard players set @s counter_2 40
data merge block -110 61 -62 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
