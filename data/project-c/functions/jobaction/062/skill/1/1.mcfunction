#CT
scoreboard players remove @s counter_3 100
scoreboard players remove @s[scores={counter_3=..100}] counter_3 40
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
#スキル効果
#共通

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 1 1
particle minecraft:sweep_attack ^ ^1 ^5 3 3 3 1 100
particle minecraft:block pink_wool ^ ^1 ^5 1 1 1 1 200
particle minecraft:block pink_wool ^ ^1 ^5 1 1 1 0 200
particle minecraft:firework ^ ^1 ^10 1 1 1 0.5 40 force @a

execute if entity @s[team=Red] positioned ^ ^ ^5 run effect give @e[team=Blue,distance=..3] instant_damage 1 0 true
execute if entity @s[team=Blue] positioned ^ ^ ^5 run effect give @e[team=Red,distance=..3] instant_damage 1 0 true

teleport @s ^ ^1 ^10 ~ ~
execute unless block ^ ^ ^ minecraft:air run effect give @s levitation 1 0 true
execute unless block ^ ^-1 ^ minecraft:air run effect give @s levitation 1 0 true
effect give @s slow_falling 1 0 true
effect give @s slowness 1 3 true
particle minecraft:firework ^ ^1 ^ 0 0 0 1 40 force @a

