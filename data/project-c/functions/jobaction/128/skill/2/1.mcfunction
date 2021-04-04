scoreboard players add @s counter 1
scoreboard players add @s counter_2 1
scoreboard players set @s[scores={counter=1}] counter_1 0
scoreboard players remove @s[scores={counter_1=1..}] counter_1 1
playsound minecraft:block.grass.break master @a ~ ~ ~ 0.5 2
execute unless block ^ ^ ^1 #project-c:wancomatter/like_air run teleport @s[scores={counter=4..}] ^ ^ ^ ~ 0
execute if block ^ ^ ^1 #project-c:wancomatter/like_air run teleport @s[scores={counter=4..}] ^ ^ ^2 ~ ~
teleport @a[scores={jobNumber=128},limit=1,sort=nearest,distance=..4] ^ ^ ^ ~ ~
effect give @a[scores={jobNumber=128,CT2=..1199},limit=1,sort=nearest,distance=0..3] resistance 1 5 true
effect give @a[scores={jobNumber=128,CT2=..1199},limit=1,sort=nearest,distance=0..3] slow_falling 1 0 true

execute unless block ^ ^1 ^1 #project-c:wancomatter/like_air run scoreboard players add @s counter_3 1

execute if entity @s[scores={counter=4..}] run effect clear @a[scores={jobNumber=128,CT2=..1199},limit=1,sort=nearest,distance=0..3] slowness

execute if entity @s[tag=128-ChargeR,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ run effect give @e[tag=Battle,distance=..2.5,team=Blue] resistance 1 0 true
execute if entity @s[tag=128-ChargeB,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ run effect give @e[tag=Battle,distance=..2.5,team=Red] resistance 1 0 true

execute if entity @s[tag=128-ChargeR,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ run effect give @e[tag=Battle,distance=..2.5,team=Blue] instant_damage 1 0 true
execute if entity @s[tag=128-ChargeB,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ run effect give @e[tag=Battle,distance=..2.5,team=Red] instant_damage 1 0 true

execute if entity @s[tag=128-ChargeR,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ run execute as @e[tag=Battle,distance=..2.5,team=Blue] at @s run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 10
execute if entity @s[tag=128-ChargeB,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ run execute as @e[tag=Battle,distance=..2.5,team=Red] at @s run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 10

execute if entity @s[tag=128-ChargeR,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ run execute as @e[tag=Battle,distance=..2.5,team=Blue] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0
execute if entity @s[tag=128-ChargeB,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ run execute as @e[tag=Battle,distance=..2.5,team=Red] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0

execute if entity @s[tag=128-ChargeR,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ if entity @e[tag=Battle,distance=..2.5,team=Blue] run scoreboard players set @a[scores={jobNumber=128,CT2=..1199,counter_4=..2},limit=1,sort=nearest,distance=0..3] CT2 1201
execute if entity @s[tag=128-ChargeB,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ if entity @e[tag=Battle,distance=..2.5,team=Red] run scoreboard players set @a[scores={jobNumber=128,CT2=..1199,counter_4=..2},limit=1,sort=nearest,distance=0..3] CT2 1201

execute if entity @s[tag=128-ChargeR,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ if entity @e[tag=Battle,distance=..2.5,team=Blue] run scoreboard players set @s counter_1 2
execute if entity @s[tag=128-ChargeB,scores={counter=4..,counter_1=0}] positioned ~ ~-0.5 ~ if entity @e[tag=Battle,distance=..2.5,team=Red] run scoreboard players set @s counter_1 2

particle minecraft:dust 0 0 1 3 ~ ~1 ~ 0.3 0.3 0.3 0 1
particle minecraft:dust 0 0 1 1 ^ ^1 ^ 0.1 0.1 0.1 0 5
particle minecraft:dust 0 0 1 1 ^ ^1 ^1 0.1 0.1 0.1 0 5
particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 1

execute if entity @s[scores={counter=7..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:8b,Duration:5,ShowParticles:0b}]}
execute if entity @s[scores={counter=7..}] run effect clear @a[scores={jobNumber=128,CT2=..1199},limit=1,sort=nearest,distance=0..3] resistance
kill @s[scores={counter=11..}]
kill @s[scores={counter_2=22..}]