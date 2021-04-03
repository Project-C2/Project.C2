#実行者     -> jobNumber = 124
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 第一スキルのエリトラ解除用
#counter_2    -> 
#counter_3    -> 
#counter_4    -> 
#counter_5    -> 
#subcounter   -> 


scoreboard players reset @s usedSkill
execute unless entity @s[scores={CT3=1200..}] run scoreboard players set @s CT3 1200
execute if entity @s[scores={counter_1=1..}] if data entity @s {OnGround:1b} run function project-c:jobaction/124/skill/1/clear_elytra

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/124/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/124/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/124/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{124skillID:1b}}},scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/124/skill/1/check
execute if entity @s[nbt={SelectedItem:{tag:{124skillID:2b}}},scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/124/skill/2/0
execute if entity @s[scores={bow=1..}] run function project-c:jobaction/124/skill/3/0
scoreboard players reset @s[scores={bow=1..}] bow

execute if entity @s[scores={useSnowball=1..}] run function project-c:jobaction/124/replaceitem/snowball
scoreboard players reset @s[scores={useSnowball=1..}] useSnowball
