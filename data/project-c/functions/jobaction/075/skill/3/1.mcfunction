scoreboard players add @s counter_1 1
execute if score @s counter_1 matches 115 run effect give @s minecraft:blindness 2 0 true
execute if score @s counter_1 matches 136 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.5
execute if score @s counter_1 matches 136 run particle minecraft:poof ~ ~ ~ 1 1 1 1 400 normal @a
execute if score @s counter_1 matches 136 run particle minecraft:poof ~ ~ ~ 0 0 0 0.8 100 force @a
execute if score @s counter_1 matches 140.. at @s run function project-c:jobaction/075/skill/3/2
