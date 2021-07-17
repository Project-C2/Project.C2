#判定
scoreboard players set @s counter_1 15
scoreboard players set @s subcounter 3

execute if entity @s[scores={stockcounter=1..}] run scoreboard players set @s CT1 1190
scoreboard players remove @s stockcounter 1

scoreboard players set @s usedSkill 1

particle minecraft:end_rod ^ ^1 ^ 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^1 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^2 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^3 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^4 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^5 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^6 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^7 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^8 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^9 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^10 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^0.5 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^1.5 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^2.5 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^3.5 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^4.5 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^5.5 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^6.5 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^7.5 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^8.5 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^9.5 0 0 0 0 3 force @a
particle minecraft:end_rod ^ ^1 ^10.5 0 0 0 0 3 force @a

particle minecraft:sweep_attack ^ ^1 ^5 3 3 3 1 100
particle minecraft:block pink_wool ^ ^1 ^5 1 1 1 1 200
particle minecraft:block pink_wool ^ ^1 ^5 1 1 1 0 200
particle minecraft:firework ^ ^1 ^10 1 1 1 0.5 40 force @a

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 1 1

#execute if entity @s[team=Red] positioned ^ ^ ^5 run effect give @e[team=Blue,distance=..3] instant_damage 1 0 true
#execute if entity @s[team=Blue] positioned ^ ^ ^5 run effect give @e[team=Red,distance=..3] instant_damage 1 0 true
execute if entity @s[team=Red] positioned ^ ^ ^5 run tag @e[team=Blue,distance=..3] add Damage2
execute if entity @s[team=Blue] positioned ^ ^ ^5 run tag @e[team=Red,distance=..3] add Damage2

particle minecraft:firework ^ ^1 ^ 0 0 0 1 40 force @a

effect give @s slow_falling 1 0 true
effect give @s slowness 1 3 true

execute positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^4 {Tags:["062dummy"],Marker:1b,Invisible:1b,Marker:1b}
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["062fire","062fireF"],Invisible:1b}
data modify entity @e[tag=062fireF,limit=1] Motion set from entity @e[tag=062dummy,limit=1] Pos
execute store result score @e[tag=062fireF,limit=1] counter_1 run data get entity @s Rotation[0] 100
execute store result score @e[tag=062fireF,limit=1] counter_2 run data get entity @s Rotation[1] 100
kill @e[tag=062dummy]
tag @e[tag=062fireF] remove 062fireF

data merge block -109 2 31 {auto:1b}

#リセット
tag @s remove SkillReady1