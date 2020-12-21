#実行地点   -> 実行者

scoreboard players add @s counter 1

teleport @s[scores={counter=1..21}] ^ ^ ^0.75
teleport @s[scores={counter=21..36}] ^ ^ ^0.5
teleport @s[scores={counter=36..41}] ^ ^ ^0.25
teleport @s[scores={counter=41..51}] ^ ^ ^

execute if entity @s[scores={counter=1..50},tag=078-pic] unless block ^ ^ ^ #project-c:wancomatter/like_air run scoreboard players set @s counter 51

teleport @s[scores={counter=51..56},tag=078-diceR] ^ ^ ^0.3 facing entity @a[scores={jobNumber=78},limit=1,sort=nearest,team=Red]
teleport @s[scores={counter=56..71},tag=078-diceR] ^ ^ ^0.6 facing entity @a[scores={jobNumber=78},limit=1,sort=nearest,team=Red]
teleport @s[scores={counter=71..},tag=078-diceR] ^ ^ ^0.8 facing entity @a[scores={jobNumber=78},limit=1,sort=nearest,team=Red]

teleport @s[scores={counter=51..56},tag=078-diceB] ^ ^ ^0.3 facing entity @a[scores={jobNumber=78},limit=1,sort=nearest,team=Blue]
teleport @s[scores={counter=56..71},tag=078-diceB] ^ ^ ^0.6 facing entity @a[scores={jobNumber=78},limit=1,sort=nearest,team=Blue]
teleport @s[scores={counter=71..},tag=078-diceB] ^ ^ ^0.8 facing entity @a[scores={jobNumber=78},limit=1,sort=nearest,team=Blue]

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.5 0.5
particle minecraft:sweep_attack ~ ~0.75 ~ 0 0 0 0 1 force @a

execute if entity @s[tag=078-diceB] run tag @e[tag=Battle,team=Red,distance=..1] add Damage2
execute if entity @s[tag=078-diceR] run tag @e[tag=Battle,team=Blue,distance=..1] add Damage2

execute if entity @a[distance=..1,scores={jobNumber=78}] run kill @s[scores={counter=51..}]
kill @s[scores={counter=181..}]