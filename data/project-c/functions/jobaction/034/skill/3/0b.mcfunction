scoreboard players set @s counter 101
particle minecraft:crit ~ ~ ~ 4 4 4 1 600 normal @a
particle minecraft:crit ~ ~ ~ 4 4 4 1 150 force @a

execute if entity @s[team=RedDummy] unless entity @e[type=wolf,distance=..16,team=Red] run function project-c:jobaction/034/skill/3/fail
execute if entity @s[team=BlueDummy] unless entity @e[type=wolf,distance=..16,team=Blue] run function project-c:jobaction/034/skill/3/fail
execute if entity @s[team=RedDummy] if entity @e[type=wolf,distance=..16,team=Red] as @e[type=wolf,distance=..16,team=Red] at @s run function project-c:jobaction/034/skill/3/1
execute if entity @s[team=BlueDummy] if entity @e[type=wolf,distance=..16,team=Blue] as @e[type=wolf,distance=..16,team=Blue] at @s run function project-c:jobaction/034/skill/3/1
