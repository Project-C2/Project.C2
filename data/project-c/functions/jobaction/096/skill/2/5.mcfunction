scoreboard players add @s counter 1

execute if score @s counter matches 1 run playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.5 0.5
execute if score @s counter matches 3 run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1.0 0.5
execute if score @s counter matches 5 run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1.5 0.5
execute if score @s counter matches 7 run playsound minecraft:entity.wither.death master @a ~ ~ ~ 2.0 0.5
execute if score @s counter matches 9 run playsound minecraft:entity.wither.death master @a ~ ~ ~ 2.5 0.5
execute if score @s counter matches 1 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 0.30 0.30 0.30 1 25 force @a
execute if score @s counter matches 2 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 0.60 0.60 0.60 1 30 force @a
execute if score @s counter matches 3 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 0.90 0.90 0.90 1 35 force @a
execute if score @s counter matches 4 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 1.20 1.20 1.20 1 40 force @a
execute if score @s counter matches 5 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 1.50 1.50 1.50 1 45 force @a
execute if score @s counter matches 6 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 1.80 1.80 1.80 1 50 force @a
execute if score @s counter matches 7 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 2.10 2.10 2.10 1 55 force @a
execute if score @s counter matches 8 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 2.40 2.40 2.40 1 60 force @a
execute if score @s counter matches 9 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 2.70 2.70 2.70 1 65 force @a
execute if score @s counter matches 10 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 3.00 3.00 3.00 1 70 force @a
execute if score @s counter matches 1 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 0.30 0.30 0.30 1 100 normal @a
execute if score @s counter matches 2 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 0.60 0.60 0.60 1 120 normal @a
execute if score @s counter matches 3 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 0.90 0.90 0.90 1 140 normal @a
execute if score @s counter matches 4 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 1.20 1.20 1.20 1 160 normal @a
execute if score @s counter matches 5 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 1.50 1.50 1.50 1 180 normal @a
execute if score @s counter matches 6 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 1.80 1.80 1.80 1 200 normal @a
execute if score @s counter matches 7 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 2.10 2.10 2.10 1 220 normal @a
execute if score @s counter matches 8 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 2.40 2.40 2.40 1 240 normal @a
execute if score @s counter matches 9 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 2.70 2.70 2.70 1 260 normal @a
execute if score @s counter matches 10 run particle minecraft:dust 0.2 0.0 0.1 1 ~ ~ ~ 3.00 3.00 3.00 1 280 normal @a
execute if score @s counter matches 12 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.5
execute if score @s counter matches 12 run particle minecraft:explosion ~ ~0.5 ~ 1.5 1.5 1.5 1 30 force @a
execute if score @s counter matches 12 run tag @s add this
execute if score @s counter matches 12 if entity @s[team=RedDummy] as @e[distance=..5.5,tag=Battle,team=!Red] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this,distance=..4.0] run tag @s add hit
execute if score @s counter matches 12 if entity @s[team=BlueDummy] as @e[distance=..5.5,tag=Battle,team=!Blue] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this,distance=..4.0] run tag @s add hit
execute if score @s counter matches 12 if entity @e[tag=hit,limit=1] run function project-c:jobaction/096/skill/2/hit
execute if score @s counter matches 12 run tag @s remove this

execute if score @s counter matches 12.. run kill @s
