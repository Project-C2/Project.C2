scoreboard players add @s counter 1

teleport @s[scores={counter=21..}] ^ ^ ^1
execute unless block ^ ^ ^2 #project-c:wancomatter/like_air run scoreboard players set @s counter 51


particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1 force @a

particle minecraft:dust 0 0.5 0 3 ~ ~1 ~ 0 0 0 1 5 force @a
particle minecraft:dust 0 0.5 0 2 ~ ~1 ~ 1 1 1 1 5 force @a

effect give @a[scores={jobNumber=100,counter_7=1..},limit=1,sort=nearest,distance=..3] resistance 1 4 true
effect give @a[scores={jobNumber=100,counter_7=1..},limit=1,sort=nearest,distance=..3] levitation 1 0 true

teleport @a[scores={jobNumber=100,counter_7=1..},limit=1,sort=nearest,distance=..3] ~ ~ ~

execute if entity @s[tag=100-zesshouRed,scores={counter=21..}] run teleport @e[tag=Battle,team=Blue,distance=..3] ^ ^ ^1
execute if entity @s[tag=100-zesshouBlue,scores={counter=21..}] run teleport @e[tag=Battle,team=Red,distance=..3] ^ ^ ^1

execute if entity @s[tag=100-zesshouRed,scores={counter=51}] if entity @e[tag=Battle,team=Blue,distance=..3] run scoreboard players set @a[scores={jobNumber=100,counter_7=2},limit=1] CT1 1200
execute if entity @s[tag=100-zesshouBlue,scores={counter=51}] if entity @e[tag=Battle,team=Red,distance=..3] run scoreboard players set @a[scores={jobNumber=100,counter_7=2},limit=1] CT1 1200

execute if entity @s[tag=100-zesshouRed,scores={counter=51}] run effect give @e[tag=Battle,team=Blue,distance=..3] instant_damage 1 0
execute if entity @s[tag=100-zesshouBlue,scores={counter=51}] run effect give @e[tag=Battle,team=Red,distance=..3] instant_damage 1 0


execute if entity @s[scores={counter=51}] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 2
execute if entity @s[scores={counter=51}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0

kill @s[scores={counter=51..}]