#実行者     -> jobNumber = 104
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 爆裂花火の獲得検知に使用
#counter_2    -> 雪玉のCT管理に使用
#counter_3    -> 第二スキルの投擲前予備動作に使用
#counter_4    -> 第三スキルの管理用
#counter_5    -> 
#stockcounter -> 第二スキルのストック管理に使用


scoreboard players reset @s usedSkill
effect give @s weakness 1 0 true
execute if entity @s[scores={relic=2}] if entity @s[scores={CT2=1201..1600}] run scoreboard players add @s CT2 1

execute if entity @s[scores={CT2=1600..,counter_6=0}] unless score @s stockcounter matches 2.. run function project-c:jobaction/104/charge
execute unless score @s stockcounter matches 1.. if entity @s[scores={CT2=1200..,counter_6=0}] run function project-c:jobaction/104/charge

execute if score @s[gamemode=!spectator] counter_1 matches 1.. anchored eyes run particle minecraft:dust 1 0.4 0 0.2 ^-0.5 ^0.2 ^0.5 0.06 0.06 0.06 1 10 force @a
execute if score @s[gamemode=!spectator] counter_1 matches 1.. anchored eyes run particle minecraft:dust 1 0.6 0 0.2 ^-0.5 ^0.2 ^0.5 0.04 0.04 0.04 1 30 force @a

execute if score @s counter_3 matches 1.. run function project-c:jobaction/104/skill/2/1
execute if score @s counter_4 matches 1.. run function project-c:jobaction/104/skill/3/1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/104/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/104/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/104/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{104skillID:0b}}},scores={useSnowball=1..,counter_2=0},gamemode=!spectator] run function project-c:jobaction/104/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{104skillID:1b}}},scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/104/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{104skillID:2b}}},scores={CT2=1200..,useSnowball=1..,stockcounter=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/104/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{104skillID:3b}}},scores={CT3=1200..,useSnowball=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/104/skill/3/0

execute if entity @s[scores={useSnowball=1..}] run function project-c:jobaction/104/snowball
execute if entity @s[scores={counter_2=1..}] run scoreboard players remove @s counter_2 1
execute if entity @s[scores={counter_2=1}] run function project-c:jobaction/104/replaceitem/snowball
scoreboard players reset @s[scores={sneak=1..}] sneak
