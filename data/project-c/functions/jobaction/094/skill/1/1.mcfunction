particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.1 1 force
execute if entity @s[tag=094vectorARed] run effect give @e[distance=..3,tag=Battle,team=Blue] instant_damage 1 0
execute if entity @s[tag=094vectorABlue] run effect give @e[distance=..3,tag=Battle,team=Red] instant_damage 1 0