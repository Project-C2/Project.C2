execute if score @s counter matches 1..3 run particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 1 8 normal @a
execute if score @s counter matches 1..3 run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a
execute if score @s counter matches 2..6 run function project-c:jobaction/104/skill/1/clover
execute if score @s counter matches 2..5 positioned ^ ^ ^0.5 run function project-c:jobaction/104/skill/1/circle1
execute if score @s counter matches 5..9 positioned ^ ^ ^1.3 run function project-c:jobaction/104/skill/1/circle2
execute if score @s counter matches 9 run playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 2