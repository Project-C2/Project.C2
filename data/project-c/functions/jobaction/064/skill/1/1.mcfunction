scoreboard players add @s counter 1
execute if entity @s[scores={counter=2}] run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 2 1

execute unless block ^ ^ ^1 #project-c:airs run kill @s
execute unless block ^ ^ ^2 #project-c:airs run kill @s
teleport @s[scores={counter=3..}] ^ ^ ^2 ~ 0
execute if entity @s[scores={counter=3..}] run tp @a[scores={jobNumber=64,counter_1=1..},limit=1,sort=nearest,distance=..5] ^ ^ ^
execute if entity @s[scores={counter=2}] run tp @s ^ ^ ^ facing entity @a[scores={jobNumber=64,counter_1=1..},limit=1,sort=nearest]
execute if entity @s[scores={counter=2}] run effect clear @a[scores={jobNumber=64,counter_1=1..},limit=1,sort=nearest] levitation
particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 10








kill @s[scores={counter=9..}]