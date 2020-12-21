tp @s ~ ~ ~
particle minecraft:sweep_attack ^ ^ ^1.2 3 1.2 3 1 800 normal @a
particle minecraft:sweep_attack ^ ^ ^1.2 3 1.2 3 1 200 force @a
playsound minecraft:item.totem.use master @a ^ ^ ^1.2 3 2
playsound minecraft:item.trident.thunder master @a ^ ^ ^1.2 3 2

execute positioned ^ ^ ^1.2 if entity @s[team=Red] run tag @e[tag=Battle,distance=..4,team=!Red] add hit
execute positioned ^ ^ ^1.2 if entity @s[team=Blue] run tag @e[tag=Battle,distance=..4,team=!Blue] add hit
execute if entity @e[tag=hit,limit=1] positioned ^ ^ ^1.2 run function project-c:jobaction/075/skill/3/hit


