function project-c:jobaction/105/skill/2/0a_r
scoreboard players reset #105-

#myチームに他プレイヤーがいる時にセリフ吐くやつ
tag @s add 105_3
execute if entity @s[team=Red] if entity @a[team=Red,tag=!105_3,scores={jobNumber=105},limit=1] run say ワッショイ！ ワッショイ！
execute if entity @s[team=Blue] if entity @a[team=Blue,tag=!105_3,scores={jobNumber=105},limit=1] run say ワッショイ！ ワッショイ！
tag @s remove 105_3

scoreboard players set @s counter_2 1
data merge block -110 61 -62 {auto:1b}
