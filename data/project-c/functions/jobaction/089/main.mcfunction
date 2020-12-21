#実行者     -> jobNumber = 089
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 
#counter_2    -> 
#counter_3    -> 
#counter_4    -> 叛逆の雷は焼き尽くしたの使用可能用処理
#counter_5    -> 
#subcounter   -> 
#stockcounter -> 

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/089/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/089/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/089/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"業","color":"yellow","italic":false},{"text":"\\"カルマ\\"","underlined":true},{"text":"より這い出る者"}]'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/089/skill/1/first
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"転生せし地獄の天雷","color":"yellow","italic":false}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/089/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"叛逆の雷は焼き尽くした","color":"yellow","bold":true,"italic":false}'}}}},scores={CT3=1200..,sneak=1..},tag=Battle,tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/089/skill/3/0
execute if entity @s[tag=089denkou_addable,scores={sneak=1..},gamemode=!spectator] unless score @s usedSkill matches 1.. run function project-c:jobaction/089/skill/1/second
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak

execute unless score @s[tag=Battle] counter_4 matches 601.. run scoreboard players add @s counter_4 1
execute if entity @s[scores={counter_4=600}] run function project-c:jobaction/089/skill/3/useable
