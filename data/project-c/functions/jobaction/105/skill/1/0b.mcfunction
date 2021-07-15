execute store result score #105- subcounter run data get entity @s Rotation[0] 100
scoreboard players set #105- counter_2 -6000
scoreboard players set #105- counter 0
function project-c:jobaction/105/skill/1/0b_r
scoreboard players reset #105-
scoreboard players operation @e[tag=105__] playerNumber = @s playerNumber
scoreboard players operation @e[tag=105__] teamNumber = @s teamNumber
tag @e[tag=105__] remove 105__

scoreboard players set @s CT1 960
execute unless score @s counter_5 matches 1 run scoreboard players operation @s counter_1 *= #3 counter
execute unless score @s counter_5 matches 1 run scoreboard players operation @s counter_1 /= #2 counter
scoreboard players operation @s CT1 += @s counter_1

#myチームに他プレイヤーがいる時にセリフ吐くやつ
tag @s add 105_3
execute if entity @s[team=Red] if entity @a[team=Red,tag=!105_3,scores={jobNumber=105},limit=1] run say お神輿～ お神輿～
execute if entity @s[team=Blue] if entity @a[team=Blue,tag=!105_3,scores={jobNumber=105},limit=1] run say お神輿～ お神輿～
tag @s remove 105_3

scoreboard players set @s counter_1 40
data merge block -112 61 -62 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
