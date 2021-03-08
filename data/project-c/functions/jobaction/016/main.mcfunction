#実行者     -> jobNumber = 16
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

tag @s[tag=016MPlow] remove 016MPlow

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/016/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/016/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/016/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"メラ","color":"red","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_1=0},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/016/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"メラ","color":"red","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_1=1,counter_2=1..19,Mana=6..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/016/skill/1/1

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"メラ","color":"red","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_1=1,counter_2=20..59,Mana=16..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/016/skill/1/2

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"メラ","color":"red","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_1=1,counter_2=60,Mana=36..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/016/skill/1/3


execute if entity @s[scores={CT1=1200..,counter_1=1,counter_2=1..19,Mana=..5},tag=SkillReady1,gamemode=!spectator] run tag @s add 016MPlow

execute if entity @s[scores={CT1=1200..,counter_1=1,counter_2=20..59,Mana=..15},tag=SkillReady1,gamemode=!spectator] run tag @s add 016MPlow

execute if entity @s[scores={CT1=1200..,counter_1=1,counter_2=60,Mana=..35},tag=SkillReady1,gamemode=!spectator] run tag @s add 016MPlow

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"メラ","color":"red","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_1=1},tag=SkillReady1,tag=016MPlow,gamemode=!spectator] run function project-c:jobaction/016/skill/1/4

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"デイン","color":"yellow","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,useCarrotStick=1..,counter_1=0},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/016/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"デイン","color":"yellow","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,useCarrotStick=1..,counter_1=1,counter_3=1..29,Mana=6..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/016/skill/2/1

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"デイン","color":"yellow","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,useCarrotStick=1..,counter_1=1,counter_3=30..79,Mana=16..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/016/skill/2/2

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"デイン","color":"yellow","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,useCarrotStick=1..,counter_1=1,counter_3=80,Mana=36..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/016/skill/2/3


execute if entity @s[scores={CT2=1200..,counter_1=1,counter_3=1..29,Mana=..7},tag=SkillReady2,gamemode=!spectator] run tag @s add 016MPlow

execute if entity @s[scores={CT2=1200..,counter_1=1,counter_3=20..79,Mana=..17},tag=SkillReady2,gamemode=!spectator] run tag @s add 016MPlow

execute if entity @s[scores={CT2=1200..,counter_1=1,counter_3=80,Mana=..47},tag=SkillReady2,gamemode=!spectator] run tag @s add 016MPlow

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"デイン","color":"yellow","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,useCarrotStick=1..,counter_1=1},tag=SkillReady2,tag=016MPlow,gamemode=!spectator] run function project-c:jobaction/016/skill/2/4

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"マダンテ","color":"dark_purple","italic":"false","underlined":"false"}'}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/016/skill/3/0

execute if entity @s[scores={useSnowball=1..}] run replaceitem entity @s weapon.offhand minecraft:snowball
execute if entity @s[scores={useSnowball=1..}] run kill @e[type=snowball,limit=1,sort=nearest]


title @s[tag=!016MPlow] actionbar ["",{"text":"<<MP : ","bold":true,"color":"blue"},{"score":{"name":"@s","objective":"Mana"},"bold":true,"underlined":false,"color":"white"},{"text":">>","bold":true,"color":"blue"}]
title @s[tag=016MPlow] actionbar ["",{"text":"<<MP : ","bold":true,"color":"blue"},{"score":{"name":"@s","objective":"Mana"},"bold":true,"underlined":false,"color":"dark_red"},{"text":">>","bold":true,"color":"blue"}]

execute if entity @s[scores={subcounter=0}] run scoreboard players set @s Mana 100
execute if entity @s[scores={subcounter=0}] run scoreboard players set @s subcounter 1

scoreboard players add @s[scores={counter_2=1..59}] counter_2 1
execute if entity @s[scores={counter_2=1..19}] run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 2
execute if entity @s[scores={counter_2=20..59}] run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 5
execute if entity @s[scores={counter_2=60}] run particle minecraft:dust 1 0 0 1.2 ~ ~1 ~ 0.5 0.5 0.5 1 2
execute if entity @s[scores={counter_2=60}] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.1 1
execute if entity @s[scores={counter_2=20}] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.5 60
execute if entity @s[scores={counter_2=59}] run particle minecraft:flame ~ ~1 ~ 0 0 0 1 30

execute if entity @s[scores={counter_2=20}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2 0
execute if entity @s[scores={counter_2=59}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2 1

scoreboard players add @s[scores={counter_3=1..79}] counter_3 1
execute if entity @s[scores={counter_3=1..29}] run particle minecraft:dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 2
execute if entity @s[scores={counter_3=30..79}] run particle minecraft:dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 5
execute if entity @s[scores={counter_3=80}] run particle minecraft:dust 1 1 0 1.2 ~ ~1 ~ 0.5 0.5 0.5 1 2
execute if entity @s[scores={counter_3=80}] run particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 1
execute if entity @s[scores={counter_3=30}] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 60
execute if entity @s[scores={counter_3=79}] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 30

execute if entity @s[scores={counter_3=30}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2 0
execute if entity @s[scores={counter_3=79}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2 1

scoreboard players add @s counter_5 1
execute if entity @s[scores={counter_5=20..}] run scoreboard players add @s Mana 1
execute if entity @s[scores={counter_5=20..}] run scoreboard players set @s counter_5 0
execute if entity @s[scores={Mana=..0}] run scoreboard players set @s Mana 0
execute if entity @s[scores={Mana=101..}] run scoreboard players set @s Mana 100

scoreboard players set @s sneak 0
scoreboard players reset @s useCarrotStick
scoreboard players reset @s useSnowball