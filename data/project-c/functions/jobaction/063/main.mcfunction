#実行者     -> jobNumber = 63
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/063/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/063/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/063/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ポーションコントロール\",\"color\":\"red\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,sneak=1..},gamemode=!spectator] run function project-c:jobaction/063/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"神の施し\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator,tag=Battle] run function project-c:jobaction/063/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"オブジェクトバースト\",\"color\":\"gold\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/063/skill/3/0

execute if entity @s[scores={counter_1=1}] run particle minecraft:totem_of_undying ^ ^1 ^ 0.4 0.4 0.4 0 1

execute if entity @s[scores={counter_1=1,useSplash=1..}] as @e[distance=..7,type=minecraft:potion,limit=1,sort=nearest] at @s run tag @s add 063item
execute if entity @s[scores={counter_1=1,useLinger=1..}] as @e[distance=..7,type=minecraft:potion,limit=1,sort=nearest] at @s run tag @s add 063item
execute as @s[scores={counter_1=1}] at @s anchored eyes run teleport @e[tag=063item,limit=1,sort=nearest] ^ ^ ^1
execute as @e[tag=063item,limit=1,sort=nearest] at @s run data merge entity @s {NoGravity:1b}


execute as @e[tag=063item] store result score @s CT1 run data get entity @s Pos[0] 100
execute as @e[tag=063item] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=63,counter_1=1..},limit=1,sort=nearest,distance=..5] Pos[0] 100
execute as @e[tag=063item] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=063item] store result entity @s Motion[0] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=063item] store result score @s CT1 run data get entity @s Pos[1] 100
execute as @e[tag=063item] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=63,counter_1=1..},limit=1,sort=nearest,distance=..5] Pos[1] 100
scoreboard players add @e[tag=063item] counter_1 160
execute as @e[tag=063item] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=063item] store result entity @s Motion[1] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=063item] store result score @s CT1 run data get entity @s Pos[2] 100
execute as @e[tag=063item] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=63,counter_1=1..},limit=1,sort=nearest,distance=..5] Pos[2] 100
execute as @e[tag=063item] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=063item] store result entity @s Motion[2] double 0.05 run scoreboard players get @s CT1
tag @e[tag=063item] add 063itemR
tag @e[tag=063item] remove 063item

scoreboard players add @e[tag=063itemR] counter_2 1
kill @e[tag=063itemR,scores={counter_2=20..}]

scoreboard players set @s sneak 0
scoreboard players reset @s useSplash
scoreboard players reset @s useLinger