summon lightning_bolt ~ ~ ~ {Tags:["first"]}
tp @e[type=lightning_bolt,tag=first,limit=1] ~ -20 ~
tag @e[type=lightning_bolt,tag=first] remove first
effect give @e[tag=Battle,team=Red,distance=..8] resistance 1 4 true
effect give @e[tag=Battle,team=Red,distance=..8] speed 5 1
effect give @e[tag=Battle,team=Red,distance=..8] haste 5 7
effect give @e[tag=Battle,team=Red,distance=..8] strength 5 2
particle minecraft:falling_dust red_wool ~ ~1 ~ 3 3 3 1 120 force @a
particle minecraft:falling_dust red_wool ~ ~1 ~ 3 3 3 1 480 normal @a
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.5 2
tag @s remove 034-cometR
playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 1.6 0.87
playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 1.6 0.89
