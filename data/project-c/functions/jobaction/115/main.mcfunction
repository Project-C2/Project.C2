#実行者     -> jobNumber = 115
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> sharpnessエンチャント
#counter_2    -> flameエンチャント
#counter_3    -> quickエンチャント
#counter_4    -> stanエンチャント
#counter_5    -> doubleエンチャント
#counter_6    -> 現在何重エンチャントになっているかの管理(null or 0,1～3)
#counter_7    -> 第一スキルのスロット中であるかどうか + スロットのパターン種類の検知
#counter_8    -> スロットの□の位置管理
#counter_9    -> 
#stockcounter -> 

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/115/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/115/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/115/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{115skillID:0b}}},scores={CT1=1200..,bow=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/115/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{115skillID:2b}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] unless score @s counter_6 matches 3.. unless score @s counter_7 matches 1.. run function project-c:jobaction/115/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{115skillID:3b}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/115/skill/3/0

execute if score @s counter_7 matches 1.. unless entity @s[gamemode=spectator] run function project-c:jobaction/115/skill/2/1

scoreboard players reset @s[scores={bow=1..}] bow
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
