particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:sweep_attack ~ ~0.2 ~ 0.2 0.2 0.2 1 10
execute if entity @s[team=RedDummy] positioned ~-0.5 ~ ~-0.5 run effect give @e[tag=Battle,dx=0,dy=0,dz=0,team=!Red] instant_damage 1 0 true
execute if entity @s[team=BlueDummy] positioned ~-0.5 ~ ~-0.5 run effect give @e[tag=Battle,dx=0,dy=0,dz=0,team=!Blue] instant_damage 1 0 true
execute if entity @s[tag=096chainFirst] run function project-c:jobaction/096/skill/3/4
tag @s remove hit
