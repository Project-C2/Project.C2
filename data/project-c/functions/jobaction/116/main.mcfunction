#実行者     -> jobNumber = 116
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 
#counter_2    -> スキル2の時間管理に使用
#counter_3    -> 
#counter_4    -> スキル2(,3)のクリーパー召喚に使用
#counter_5    -> 
#counter_6    -> 
#counter_7    -> 
#counter_8    -> 
#counter_9    -> 
#stockcounter -> 

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/116/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/116/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/116/replaceitem/3

execute if entity @s[scores={counter_2=1..}] run function project-c:jobaction/116/skill/2/1

execute if entity @s[nbt={SelectedItem:{tag:{116skillID:1b}}},scores={CT1=1200..,useFishing=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/116/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{116skillID:0b}},OnGround:0b},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/116/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{116skillID:0b}}},scores={useFishing=1..},gamemode=!spectator] run function project-c:jobaction/116/skill/3/0
execute if entity @s[nbt={HurtTime:9s},tag=!116knockback_resist] run function project-c:jobaction/116/skill/3/dmg

scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={useFishing=1..}] useFishing