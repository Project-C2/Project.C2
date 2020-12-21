summon lightning_bolt ~ ~ ~
effect give @e[tag=Battle,team=Red,distance=..8] resistance 1 4 true
effect give @e[tag=Battle,team=Red,distance=..8] speed 3 3
effect give @e[tag=Battle,team=Red,distance=..8] haste 3 7
effect give @e[tag=Battle,team=Red,distance=..8] strength 3 0
particle minecraft:falling_dust red_wool ~ ~1 ~ 3 3 3 1 120 force @a
particle minecraft:falling_dust red_wool ~ ~1 ~ 3 3 3 1 480 normal @a
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.5 2
tag @s remove 034-cometR