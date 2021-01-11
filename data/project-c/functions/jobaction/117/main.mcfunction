#実行者     -> jobNumber = 117
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 
#counter_2    -> 
#counter_3    -> 
#counter_4    -> 
#counter_5    -> 
#counter_6    -> 
#counter_7    -> 
#counter_8    -> 
#counter_9    -> 
#stockcounter -> 

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/117/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/117/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/117/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{117skillID:1b}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/117/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{117skillID:2b}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/117/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{117skillID:3b}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/117/skill/3/0

scoreboard players reset @s[scores={sneak=1..}] sneak
