#実行者     -> jobNumber = 123
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 
#counter_2    -> 
#counter_3    -> 
#counter_4    -> 
#counter_5    -> 
#subcounter   -> 


scoreboard players reset @s usedSkill

execute if entity @s[scores={CT2=1200..},tag=SkillReady2] run function project-c:jobaction/123/skill/2/item
execute if entity @s[scores={relic=2}] if entity @s[scores={CT3=1201..1320}] run scoreboard players add @s CT3 1
execute if entity @s[scores={CT3=1320..}] unless score @s stockcounter matches 2.. run function project-c:jobaction/123/charge
execute unless score @s stockcounter matches 1.. if entity @s[scores={CT3=1200..}] run function project-c:jobaction/123/charge

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/123/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/123/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/123/replaceitem/3
execute if score @s counter_1 matches 1.. run function project-c:jobaction/123/skill/1/p

execute if entity @s[nbt={SelectedItem:{tag:{123skillID:1b}}},scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/123/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{123skillID:2b}}},scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/123/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{123skillID:3b}}},scores={CT3=1200..,useSnowball=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/123/skill/3/0

execute if entity @s[scores={useSnowball=1..}] run function project-c:jobaction/123/replaceitem/snowball
scoreboard players reset @s[scores={useSnowball=1..}] useSnowball
