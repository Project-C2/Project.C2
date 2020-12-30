execute if score @s counter matches 1..3 run particle minecraft:flash ~ ~ ~ 0.2 0.2 0.2 1 4 normal @a
execute if score @s counter matches 1..3 run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a
execute if score @s counter matches 2..6 run function project-c:jobaction/104/skill/1/clover
execute if score @s counter matches 2..4 positioned ^ ^ ^0.4 run function project-c:jobaction/104/skill/1/circle1
execute if score @s counter matches 7..9 positioned ^ ^ ^1.2 run function project-c:jobaction/104/skill/1/circle2
execute if score @s counter matches 9 run playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 2