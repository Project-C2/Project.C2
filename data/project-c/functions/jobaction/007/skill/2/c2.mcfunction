playsound minecraft:block.glass.break master @a ~ ~ ~ 1 2
particle poof ~ ~ ~ 0 0 0 0.1 1

execute if entity @s[tag=Red] run effect give @e[distance=..2,team=Blue,tag=Battle] minecraft:slowness 7 6
execute if entity @s[tag=Blue] run effect give @e[distance=..2,team=Red,tag=Battle] minecraft:slowness 7 6