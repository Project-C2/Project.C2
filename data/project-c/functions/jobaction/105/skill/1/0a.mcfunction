execute store result score #105- subcounter run data get entity @s Rotation[0] 100
scoreboard players set #105- counter_2 -2800
scoreboard players set #105- counter 0
function project-c:jobaction/105/skill/1/0a_r
execute if entity @s[team=Red] run tag @e[tag=105__] add 105_1R
execute if entity @s[team=Blue] run tag @e[tag=105__] add 105_1B
tag @e[tag=105__] remove 105__
scoreboard players reset #105-

#myチームに他プレイヤーがいる時にセリフ吐くやつ
tag @s add 105_3
execute if entity @s[team=Red] if entity @a[team=Red,tag=!105_3,scores={jobNumber=105},limit=1] run say お神輿～ お神輿～
execute if entity @s[team=Blue] if entity @a[team=Blue,tag=!105_3,scores={jobNumber=105},limit=1] run say お神輿～ お神輿～
tag @s remove 105_3

scoreboard players set @s counter_1 1
data merge block -112 61 -62 {auto:1b}
