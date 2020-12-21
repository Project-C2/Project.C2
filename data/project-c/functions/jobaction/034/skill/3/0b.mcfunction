scoreboard players set @s counter 101
execute if entity @s[team=RedDummy] run effect give @e[team=!Red,tag=Battle,distance=2.8..3.8] minecraft:resistance 1 0 true
execute if entity @s[team=RedDummy] run effect give @e[team=!Red,tag=Battle,distance=3.8..4.8] minecraft:instant_damage 1 0
execute if entity @s[team=RedDummy] run effect give @e[team=!Red,tag=Battle,distance=..3.8] minecraft:instant_damage 1 1
execute if entity @s[team=BlueDummy] run effect give @e[team=!Blue,tag=Battle,distance=2.8..3.8] minecraft:resistance 1 0 true
execute if entity @s[team=BlueDummy] run effect give @e[team=!Blue,tag=Battle,distance=3.8..4.8] minecraft:instant_damage 1 0
execute if entity @s[team=BlueDummy] run effect give @e[team=!Blue,tag=Battle,distance=..3.8] minecraft:instant_damage 1 1
particle minecraft:crit ~ ~ ~ 4 4 4 1 600 normal @a
particle minecraft:crit ~ ~ ~ 4 4 4 1 150 force @a
particle minecraft:falling_dust black_concrete ~ ~ ~ 4 4 4 1 400 normal @a
particle minecraft:falling_dust black_concrete ~ ~ ~ 4 4 4 1 100 force @a
playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 1.6 0.94
playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 1.6 0.95
playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 1.6 0.96

execute if entity @s[team=RedDummy] if entity @e[type=wolf,distance=..16,team=Red] as @e[type=wolf,distance=..16,team=Red] at @s run function project-c:jobaction/034/skill/3/1
execute if entity @s[team=BlueDummy] if entity @e[type=wolf,distance=..16,team=Blue] as @e[type=wolf,distance=..16,team=Blue] at @s run function project-c:jobaction/034/skill/3/1