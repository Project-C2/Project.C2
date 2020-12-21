#実行者     -> jobNumber = 075
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 第三スキル用のあれこれ
#counter_2    -> 
#counter_3    -> 
#subcounter   -> 
#stockcounter -> 

execute if entity @s[tag=075-1-flag] run effect clear @s levitation
execute if entity @s[tag=075-1-flag] run tag @s remove 075-1-flag
scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/075/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/075/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/075/replaceitem/3

execute if entity @s[scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/075/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"斬海","color":"aqua","italic":false}'}}}},scores={CT2=1200..,fall=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/075/skill/2/0
execute if entity @s[scores={CT3=1200..,useEnderPearl=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/075/skill/3/0

execute if entity @s[scores={counter_1=100..}] run function project-c:jobaction/075/skill/3/1

scoreboard players add @s[scores={damageDealt=20..}] CT1 20
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt
scoreboard players reset @s[scores={useSnowball=1..}] useSnowball
scoreboard players reset @s[scores={fall=1..}] fall
scoreboard players reset @s[scores={useEnderPearl=1..}] useEnderPearl