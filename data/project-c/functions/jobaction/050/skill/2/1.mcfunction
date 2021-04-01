scoreboard players remove @s counter 1
playsound minecraft:block.grass.break master @a ~ ~ ~ 0.5 0

teleport @s[scores={counter=1..}] ^ ^ ^1 ~ ~
teleport @a[scores={jobNumber=50,CT2=..1199},limit=1,sort=nearest] ^ ^ ^ ~ ~
effect give @a[scores={jobNumber=50,CT2=..1199},limit=1,sort=nearest,distance=0..3] resistance 1 5 true
effect give @a[scores={jobNumber=50,CT2=..1199},limit=1,sort=nearest,distance=0..3] levitation 1 0 true

particle explosion ~ ~1 ~ 0 0 0 0 1
execute as @s[tag=050-ChargeR,scores={counter_1=1}] at @s run effect give @e[tag=Battle,team=Blue,distance=..2] resistance 1 2 true
execute as @s[tag=050-ChargeR,scores={counter_1=1}] at @s run effect give @e[tag=Battle,team=Blue,distance=..2] instant_damage 1 0 true
execute as @s[tag=050-ChargeR,scores={counter_1=2}] at @s run effect give @e[tag=Battle,team=Blue,distance=..3] resistance 1 1 true
execute as @s[tag=050-ChargeR,scores={counter_1=2}] at @s run effect give @e[tag=Battle,team=Blue,distance=..3] instant_damage 1 1 true
execute as @s[tag=050-ChargeR,scores={counter_1=3}] at @s run effect give @e[tag=Battle,team=Blue,distance=..3] instant_damage 1 1 true
execute as @s[tag=050-ChargeR,scores={counter_1=4}] at @s run effect give @e[tag=Battle,team=Blue,distance=..3] resistance 1 1 true
execute as @s[tag=050-ChargeR,scores={counter_1=4}] at @s run effect give @e[tag=Battle,team=Blue,distance=..3] instant_damage 1 2 true

execute as @s[tag=050-ChargeB,scores={counter_1=1}] at @s run effect give @e[tag=Battle,team=Red,distance=..2] resistance 1 2 true
execute as @s[tag=050-ChargeB,scores={counter_1=1}] at @s run effect give @e[tag=Battle,team=Red,distance=..2] instant_damage 1 0 true
execute as @s[tag=050-ChargeB,scores={counter_1=2}] at @s run effect give @e[tag=Battle,team=Red,distance=..3] resistance 1 1 true
execute as @s[tag=050-ChargeB,scores={counter_1=2}] at @s run effect give @e[tag=Battle,team=Red,distance=..3] instant_damage 1 1 true
execute as @s[tag=050-ChargeB,scores={counter_1=3}] at @s run effect give @e[tag=Battle,team=Red,distance=..3] instant_damage 1 1 true
execute as @s[tag=050-ChargeB,scores={counter_1=4}] at @s run effect give @e[tag=Battle,team=Red,distance=..3] resistance 1 1 true
execute as @s[tag=050-ChargeB,scores={counter_1=4}] at @s run effect give @e[tag=Battle,team=Red,distance=..3] instant_damage 1 2 true

execute unless block ^ ^ ^1 #project-c:wancomatter/like_air run kill @s
kill @s[scores={counter=..0}]
