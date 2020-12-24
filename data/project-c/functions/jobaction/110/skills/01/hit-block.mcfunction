execute if entity @s[tag=110fireballR] run tag @e[tag=Battle,team=!Red,distance=..2.4] add hit
execute if entity @s[tag=110fireballB] run tag @e[tag=Battle,team=!Blue,distance=..2.4] add hit
execute if entity @e[tag=hit,limit=1] run tag @s add 110
execute if entity @e[tag=hit,limit=1] at @e[tag=hit] run function project-c:jobaction/110/skills/01/hit-entity
execute if entity @e[tag=hit,limit=1] run tag @e[tag=hit] remove hit
execute if entity @s[tag=110] run tag @s remove 110

particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 1 8 normal @a
particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 1 2 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.25 80 normal @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.25 20 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
scoreboard players set @s counter 101