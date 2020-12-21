execute if entity @s[tag=102skeleton_throw_pot] run function project-c:jobaction/102/skill/1/5
execute unless score @s counter matches 201.. run scoreboard players add @s counter 1
execute unless score @s counter_1 matches 161.. run scoreboard players add @s counter_1 1
execute unless score @s counter_2 matches 101.. run scoreboard players add @s counter_2 1
execute if entity @s[scores={counter_1=160..},team=Red] if entity @e[distance=7..15,limit=1,tag=Battle,team=!Red,team=!RedDummy] run tag @e[distance=7..15,limit=1,tag=Battle,team=!Red,team=!RedDummy,sort=nearest] add 102target2
execute if entity @s[scores={counter_1=160..},team=Blue] if entity @e[distance=7..15,limit=1,tag=Battle,team=!Blue,team=!BlueDummy] run tag @e[distance=7..15,limit=1,tag=Battle,team=!Blue,team=!BlueDummy,sort=nearest] add 102target2
execute if entity @s[scores={counter=..199,counter_2=100..},team=Red] if entity @e[distance=..4,limit=1,tag=Battle,team=!Red,team=!RedDummy] run tag @e[distance=..4,limit=1,tag=Battle,team=!Red,team=!RedDummy,sort=nearest] add 102target3
execute if entity @s[scores={counter=..199,counter_2=100..},team=Blue] if entity @e[distance=..4,limit=1,tag=Battle,team=!Blue,team=!BlueDummy] run tag @e[distance=..4,limit=1,tag=Battle,team=!Blue,team=!BlueDummy,sort=nearest] add 102target3
execute if entity @s[scores={counter=200..},team=Red] if entity @e[distance=..6,limit=1,tag=Battle,team=!Red,team=!RedDummy] run tag @e[distance=..6,limit=1,tag=Battle,team=!Red,team=!RedDummy,sort=nearest] add 102target
execute if entity @s[scores={counter=200..},team=Blue] if entity @e[distance=..6,limit=1,tag=Battle,team=!Blue,team=!BlueDummy] run tag @e[distance=..6,limit=1,tag=Battle,team=!Blue,team=!BlueDummy,sort=nearest] add 102target
execute if entity @e[tag=102target3,limit=1] run function project-c:jobaction/102/skill/1/8
execute if entity @e[tag=102target2,limit=1] run function project-c:jobaction/102/skill/1/7
execute if entity @e[tag=102target,limit=1] run function project-c:jobaction/102/skill/1/4

execute if score @s counter matches 200 run function project-c:jobaction/102/skill/1/6

