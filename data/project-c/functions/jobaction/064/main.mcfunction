#実行者     -> jobNumber = 64
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/064/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/064/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/064/replaceitem/3


execute if entity @s[nbt={OnGround:0b,SelectedItem:{tag:{display:{Name:'{"text":"ストレイフ","color":"light_blue","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,stockcounter=60..},gamemode=!spectator] run function project-c:jobaction/064/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"リバーサー","color":"light_blue","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/064/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"死神の疾風","color":"light_blue","italic":"false","underlined":"false"}'}}}},scores={CT3=1200..,crossbow=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/064/skill/3/0


scoreboard players add @s[scores={stockcounter=..299},gamemode=!spectator] stockcounter 1

replaceitem entity @s[scores={jobNumber=64,stockcounter=..99,CT1=1200..}] hotbar.1 minecraft:compass
replaceitem entity @s[scores={jobNumber=64,stockcounter=100..199,CT1=1200..}] hotbar.1 minecraft:white_dye{display:{Name:'{"text":"ストレイフ","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:空中で右クリック"}','{"text":"§f効果:自身の移動している方向に駆け抜け弓を放つ。"}','{"text":"§aCT:5/ストック:3"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 1
replaceitem entity @s[scores={jobNumber=64,stockcounter=200..299,CT1=1200..}] hotbar.1 minecraft:white_dye{display:{Name:'{"text":"ストレイフ","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:空中で右クリック"}','{"text":"§f効果:自身の移動している方向に駆け抜け弓を放つ。"}','{"text":"§aCT:5/ストック:3"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 2
replaceitem entity @s[scores={jobNumber=64,stockcounter=300,CT1=1200..}] hotbar.1 minecraft:white_dye{display:{Name:'{"text":"ストレイフ","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:空中で右クリック"}','{"text":"§f効果:自身の移動している方向に駆け抜け弓を放つ。"}','{"text":"§aCT:5/ストック:3"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 3

replaceitem entity @s[scores={crossbow=1..},gamemode=!spectator] hotbar.4 minecraft:arrow

execute as @s[scores={counter_1=1..}] at @s run scoreboard players remove @s counter_1 1

execute as @s[scores={counter_1=7}] at @s anchored eyes run summon arrow ^ ^ ^1 {damage:0.5d,Tags:["064-Bullet","064-hassummoned"],CustomName:'{"text":"ストレイフ","color":"gold"}',Color:-1,NoGravity:1b,crit:1}
execute as @s[scores={counter_1=5}] at @s anchored eyes run summon arrow ^ ^ ^1 {damage:0.5d,Tags:["064-Bullet","064-hassummoned"],CustomName:'{"text":"ストレイフ","color":"gold"}',Color:-1,NoGravity:1b,crit:1}
execute as @s[scores={counter_1=3}] at @s anchored eyes run summon arrow ^ ^ ^1 {damage:0.5d,Tags:["064-Bullet","064-hassummoned"],CustomName:'{"text":"ストレイフ","color":"gold"}',Color:-1,NoGravity:1b,crit:1}
execute as @s[scores={counter_1=1}] at @s anchored eyes run summon arrow ^ ^ ^1 {damage:0.5d,Tags:["064-Bullet","064-hassummoned"],CustomName:'{"text":"ストレイフ","color":"gold"}',Color:-1,NoGravity:1b,crit:1}

execute as @s[scores={counter_1=7}] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2
execute as @s[scores={counter_1=5}] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2
execute as @s[scores={counter_1=3}] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2
execute as @s[scores={counter_1=1}] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2


execute as @e[tag=064-hassummoned] store result score @s CT1 run data get entity @s Pos[0] 100
execute as @e[tag=064-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=64,counter_1=1..},limit=1,sort=nearest,distance=..3] Pos[0] 100
execute as @e[tag=064-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=064-hassummoned] store result entity @s Motion[0] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=064-hassummoned] store result score @s CT1 run data get entity @s Pos[1] 100
execute as @e[tag=064-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=64,counter_1=1..},limit=1,sort=nearest,distance=..3] Pos[1] 100
scoreboard players add @e[tag=064-hassummoned] counter_1 160
execute as @e[tag=064-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=064-hassummoned] store result entity @s Motion[1] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=064-hassummoned] store result score @s CT1 run data get entity @s Pos[2] 100
execute as @e[tag=064-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=64,counter_1=1..},limit=1,sort=nearest,distance=..3] Pos[2] 100
execute as @e[tag=064-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=064-hassummoned] store result entity @s Motion[2] double 0.05 run scoreboard players get @s CT1
tag @e[tag=064-Bullet,tag=064-hassummoned] remove 064-hassummoned
scoreboard players add @e[tag=064-Bullet] counter_2 1
kill @e[tag=064-Bullet,scores={counter_2=9..}]

execute as @s[scores={counter_2=1..}] at @s run scoreboard players remove @s counter_2 1
execute as @s[scores={counter_2=1..}] at @s run particle minecraft:dust 0 1 0 1 ^ ^1.5 ^2 0.2 0.2 0.2 1 1
execute as @s[scores={counter_2=1..}] at @s run particle minecraft:dust 0 1 0 2 ^ ^1.5 ^3 0.5 0.5 0.5 1 1
execute as @s[scores={counter_2=1..}] at @s run particle minecraft:dust 0 1 0 2 ^ ^1.5 ^5 0.5 0.5 0.5 1 1
execute as @s[scores={counter_2=1..}] at @s run particle minecraft:dust 0 1 0 3 ^ ^1.5 ^5 0.3 0.3 0.3 1 1
execute as @s[scores={counter_2=21}] at @s run particle minecraft:happy_villager ^ ^1 ^3 1 1 1 0 30
execute as @s[scores={counter_2=41}] at @s run particle minecraft:happy_villager ^ ^1 ^3 1 1 1 0 30
execute as @s[scores={counter_2=61}] at @s run particle minecraft:happy_villager ^ ^1 ^3 1 1 1 0 30
execute as @s[scores={counter_2=81}] at @s run particle minecraft:happy_villager ^ ^1 ^3 1 1 1 0 30

execute as @s[scores={counter_2=21},team=Red] at @s positioned ^ ^ ^4 run effect give @a[team=Red,limit=1,distance=..2] instant_health 1 0 true
execute as @s[scores={counter_2=41},team=Red] at @s positioned ^ ^ ^4 run effect give @a[team=Red,limit=1,distance=..2] instant_health 1 0 true
execute as @s[scores={counter_2=61},team=Red] at @s positioned ^ ^ ^4 run effect give @a[team=Red,limit=1,distance=..2] instant_health 1 0 true
execute as @s[scores={counter_2=81},team=Red] at @s positioned ^ ^ ^4 run effect give @a[team=Red,limit=1,distance=..2] instant_health 1 0 true

execute as @s[scores={counter_2=21},team=Blue] at @s positioned ^ ^ ^4 run effect give @a[team=Blue,limit=1,distance=..2] instant_health 1 0 true
execute as @s[scores={counter_2=41},team=Blue] at @s positioned ^ ^ ^4 run effect give @a[team=Blue,limit=1,distance=..2] instant_health 1 0 true
execute as @s[scores={counter_2=61},team=Blue] at @s positioned ^ ^ ^4 run effect give @a[team=Blue,limit=1,distance=..2] instant_health 1 0 true
execute as @s[scores={counter_2=81},team=Blue] at @s positioned ^ ^ ^4 run effect give @a[team=Blue,limit=1,distance=..2] instant_health 1 0 true

execute as @s[scores={counter_3=1..}] at @s run scoreboard players remove @s counter_3 1

scoreboard players set @s sneak 0
scoreboard players reset @s crossbow
scoreboard players reset @s useCarrotStick