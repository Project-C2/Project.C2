#実行者     -> jobNumber = 60
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute as @a[scores={jobNumber=60,subcounter=1..}] run title @s actionbar ["",{"text":"<<残弾:","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"subcounter"},"bold":true,"color":"yellow"},{"text":">>","bold":true,"color":"yellow"}]
scoreboard players add @a[scores={jobNumber=60,subcounter=..0}] Mana 1
effect give @a[scores={jobNumber=60,subcounter=..0,Mana=1}] minecraft:slowness 2 4 true
execute as @a[scores={jobNumber=60,subcounter=..0,Mana=1}] at @s run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 2 0
title @a[scores={jobNumber=60,subcounter=..0,Mana=1}] actionbar {"text":"\u300aReloading\u300b","bold":true,"color":"red"}
execute as @a[scores={jobNumber=60,subcounter=..0,Mana=30}] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 2
scoreboard players set @a[scores={jobNumber=60,subcounter=..0,Mana=30}] subcounter 3

scoreboard players set @a[scores={jobNumber=60,Mana=30..}] Mana 0
execute as @a[scores={jobNumber=60,useCarrotStick=1..,subcounter=1..,counter_2=0}] at @s anchored eyes run summon arrow ^ ^ ^1 {damage:0.5d,Tags:["060-Bullet","060-hassummoned"],CustomName:"{\"text\":\"オルフェンズ-Mk23\",\"color\":\"gold\"}",Color:-1,NoGravity:1b,crit:1}

execute as @e[tag=060-hassummoned] store result score @s CT1 run data get entity @s Pos[0] 100
execute as @e[tag=060-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=60,useCarrotStick=1..},limit=1,sort=nearest,distance=..3] Pos[0] 100
execute as @e[tag=060-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=060-hassummoned] store result entity @s Motion[0] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=060-hassummoned] store result score @s CT1 run data get entity @s Pos[1] 100
execute as @e[tag=060-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=60,useCarrotStick=1},limit=1,sort=nearest,distance=..3] Pos[1] 100
scoreboard players add @e[tag=060-hassummoned] counter_1 160
execute as @e[tag=060-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=060-hassummoned] store result entity @s Motion[1] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=060-hassummoned] store result score @s CT1 run data get entity @s Pos[2] 100
execute as @e[tag=060-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=60,useCarrotStick=1},limit=1,sort=nearest,distance=..3] Pos[2] 100
execute as @e[tag=060-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=060-hassummoned] store result entity @s Motion[2] double 0.05 run scoreboard players get @s CT1
tag @e[tag=060-Bullet,tag=060-hassummoned] remove 060-hassummoned
scoreboard players add @e[tag=060-Bullet] counter_2 1
kill @e[tag=060-Bullet,scores={counter_2=7..}]
execute as @a[scores={jobNumber=60,useCarrotStick=1..,subcounter=1..}] at @s run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 1 1.75
execute as @a[scores={jobNumber=60,useCarrotStick=1..,subcounter=1..}] at @s run particle minecraft:explosion ^ ^1 ^2 0 0 0 1 1 force @a[distance=1..]

execute as @a[scores={jobNumber=60,useCarrotStick=1..,subcounter=1..}] at @s run effect give @s slowness 1 2 true
scoreboard players remove @a[scores={jobNumber=60,useCarrotStick=1..,subcounter=1..,counter_2=0}] subcounter 1
execute at @e[tag=060-Bullet] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 5 force

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/060/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/060/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/060/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"G-バルバトス\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/060/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ボムチップ\",\"color\":\"red\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/060/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"フルパワーショット\",\"color\":\"yellow\",\"italic\":\"false\",\"underlined\":\"true\",\"bold\":\"true\"}"}}}},scores={CT3=1200..,bow=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/060/skill/3/0

scoreboard players reset @s bow
scoreboard players reset @s adDealt
scoreboard players reset @s damageDealt
scoreboard players reset @s sneak
scoreboard players reset @s useCarrotStick