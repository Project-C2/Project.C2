#実行者     -> jobNumber = 66
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/066/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/066/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/066/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"幻世「ザ・ワールド」","color":"light_blue","italic":"false","underlined":"false"}'}}}},scores={CT3=1200..,useSnowball=1..},tag=SkillReady3,gamemode=!spectator,tag=Battle] run function project-c:jobaction/066/skill/3/0

execute if entity @s[scores={useSnowball=1..,stockcounter=0},gamemode=!spectator] run function project-c:jobaction/066/skill/0/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"バニシングエブリシング","color":"gray","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,sneak=1..,Mana=0},gamemode=!spectator] run function project-c:jobaction/066/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"時符「プライベート・スクウェア」","color":"light_blue","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/066/skill/2/0

replaceitem entity @s[scores={stockcounter=1},gamemode=!spectator] weapon.offhand minecraft:snowball
scoreboard players remove @s[scores={stockcounter=1..},gamemode=!spectator] stockcounter 1

execute if entity @s[scores={CT1=1200..,sneak=1..,Mana=1..},gamemode=!spectator] run scoreboard players add @s Mana 1
execute if entity @s[scores={CT1=1200..,sneak=0,Mana=1..},gamemode=!spectator] run function project-c:jobaction/066/skill/1/2

execute as @e[tag=066-dagger,tag=!066-daggerWorld,tag=!066-daggerW] at @s unless entity @a[scores={jobNumber=66,counter_2=1..}] run teleport @s[scores={counter=5..}] ^ ^ ^1.3 ~ ~
execute as @e[tag=066-dagger,tag=!066-daggerWorld,tag=!066-daggerW] at @s unless entity @a[scores={jobNumber=66,counter_2=0}] run teleport @s[scores={counter=5..}] ^ ^ ^0.05 ~ ~
execute as @e[tag=066-dagger,tag=!066-daggerWorld,tag=!066-daggerW] at @s unless entity @a[scores={jobNumber=66,counter_2=0}] run scoreboard players remove @s[scores={counter=6..}] counter 1

execute as @e[tag=066-dagger,tag=!066-daggerWorld,tag=066-daggerW] at @s unless entity @a[scores={jobNumber=66,counter_2=1..}] run teleport @s[scores={counter=5..}] ^ ^ ^0.3 ~ ~
execute as @e[tag=066-dagger,tag=!066-daggerWorld,tag=066-daggerW] at @s unless entity @a[scores={jobNumber=66,counter_2=0}] run teleport @s[scores={counter=5..}] ^ ^ ^0.15 ~ ~

execute as @e[tag=066-dagger,tag=066-daggerWorld,tag=066-daggerW] at @s run scoreboard players set @s[scores={counter=6..}] counter 5

scoreboard players remove @s[scores={counter_2=1..}] counter_2 1

execute if entity @s[team=Red,scores={counter_2=1..}] run effect give @e[team=Blue,distance=..12] minecraft:slowness 1 0 false
execute if entity @s[team=Red,scores={counter_2=1..}] run effect give @e[team=Blue,distance=..12] minecraft:slow_falling 1 0 false
execute if entity @s[team=Red,scores={counter_2=1..}] run effect give @e[team=Blue,distance=..12] minecraft:mining_fatigue 1 2 false
execute if entity @s[team=Blue,scores={counter_2=1..}] run effect give @e[team=Red,distance=..12] minecraft:slowness 1 0 false
execute if entity @s[team=Blue,scores={counter_2=1..}] run effect give @e[team=Red,distance=..12] minecraft:slow_falling 1 0 false
execute if entity @s[team=Blue,scores={counter_2=1..}] run effect give @e[team=Red,distance=..12] minecraft:mining_fatigue 1 2 false

execute if entity @s[scores={counter_2=1..}] run particle minecraft:falling_nectar ^ ^1 ^ 10 10 10 0.1 20 force @a
execute if entity @s[scores={counter_2=1..,stockcounter=3..}] run scoreboard players set @s stockcounter 3

scoreboard players set @s sneak 0
scoreboard players reset @s crossbow
scoreboard players reset @s useSnowball