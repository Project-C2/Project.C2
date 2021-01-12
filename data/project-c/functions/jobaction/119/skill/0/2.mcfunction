particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:explosion ~ ~ ~ 0.4 0.4 0.4 0 4 normal @a
particle minecraft:item minecraft:pink_wool ~ ~ ~ 0.5 0.5 0.5 0.5 160 normal @a
particle minecraft:item minecraft:pink_wool ~ ~ ~ 0.5 0.5 0.5 0.5 40 force @a
playsound entity.generic.explode master @a ~ ~ ~ 0.8 2
playsound entity.generic.explode master @s ~ ~ ~ 0 2 0.2

execute if entity @s[team=Red] run tag @e[tag=Battle,team=!Red,tag=hit1,tag=!hit2,distance=..2] add hit2
execute if entity @s[team=Blue] run tag @e[tag=Battle,team=!Blue,tag=hit1,tag=!hit2,distance=..2] add hit2
execute if entity @s[team=Red] run tag @e[tag=Battle,team=!Red,tag=!hit1,tag=!hit2,distance=..2] add hit1
execute if entity @s[team=Blue] run tag @e[tag=Battle,team=!Blue,tag=!hit1,tag=!hit2,distance=..2] add hit1
#execute as @e[tag=Battle,tag=hit1,tag=!hit2,distance=..2] unless score @s teamNumber = #119- teamNumber run tag @s add hit2
#execute as @e[tag=Battle,tag=!hit1,tag=!hit2,distance=..2] unless score @s teamNumber = #119- teamNumber run tag @s add hit1

