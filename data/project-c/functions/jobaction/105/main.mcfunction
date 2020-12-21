#実行者     -> jobNumber = 105
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 第一の追加入力検知
#counter_2    -> 第二の追加入力検知
#counter_3    -> 味方がいる時のCT加速
#counter_4    -> 第三のCT加速
#counter_5    -> 第三のCT加速
#subcounter   -> 


scoreboard players reset @s usedSkill
execute if entity @s[scores={counter=1..}] run scoreboard players remove @s counter 1
scoreboard players add @s counter_4 1
execute if score @s counter_4 matches 2.. run function project-c:jobaction/105/skill/3/1
execute if entity @s[team=Red] if entity @a[team=Red,tag=!105_3,scores={jobNumber=105},distance=0.1..,limit=1,gamemode=!spectator] run scoreboard players add @s counter_3 1
execute if entity @s[team=Blue] if entity @a[team=Blue,tag=!105_3,scores={jobNumber=105},distance=0.1..,limit=1,gamemode=!spectator] run scoreboard players add @s counter_3 1
execute if score @s counter_3 matches 5.. run function project-c:jobaction/105/skill/0/0
execute if score @s counter_1 matches 1.. run function project-c:jobaction/105/skill/1/p
execute if score @s counter_2 matches 1.. run function project-c:jobaction/105/skill/2/p

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/105/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/105/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/105/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"お神輿-お神輿","color":"gold","bold":true,"italic":false}'}}}},scores={CT1=1200..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/105/skill/1/highlight
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"お神輿-お神輿","color":"gold","bold":true,"italic":false}'}}}},scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/105/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ワッショイ-ワッショイ","color":"gold","bold":true,"italic":false}'}}}},scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/105/skill/2/0
execute if entity @s[scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/105/skill/3/0

execute if entity @s[scores={useSnowball=1..}] run function project-c:jobaction/105/replaceitem/snowball
scoreboard players reset @s[scores={sneak=1..}] sneak
