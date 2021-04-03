particle minecraft:poof ~ ~ ~ 1.5 1.5 1.5 1 100 normal @a
particle minecraft:poof ~ ~ ~ 1.5 1.5 1.5 1 25 force @a
particle minecraft:item minecraft:glass ~ ~ ~ 1.5 1.5 1.5 2 100 normal @a
particle minecraft:item minecraft:glass ~ ~ ~ 1.5 1.5 1.5 2 25 force @a
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.2 0.52
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.2 0.51
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.2 0.50
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.2 0.55

#ヒット判定
tag @s add it
execute as @e[tag=!hit,distance=..3.0,tag=Battle] run tag @s add hit
execute positioned ~ ~1 ~ as @e[tag=!hit,distance=..3.0,tag=Battle] run tag @s add hit
execute positioned ~ ~2 ~ as @e[tag=!hit,distance=..3.0,tag=Battle] run tag @s add hit
execute positioned ~ ~3 ~ as @e[tag=!hit,distance=..3.0,tag=Battle] run tag @s add hit
execute as @e[tag=hit] if score @s teamNumber = @e[tag=it,limit=1,sort=nearest] teamNumber run tag @s remove hit
execute as @e[tag=hit] at @s run function project-c:jobaction/124/skill/1/1-hit
tag @s remove it