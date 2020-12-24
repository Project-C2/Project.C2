execute if score @s counter matches ..109 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2
execute if score @s counter matches 100 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.20 0.20 0.20 1 100 force @a
execute if score @s counter matches 101 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.40 0.40 0.40 1 110 force @a
execute if score @s counter matches 102 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.60 0.60 0.60 1 120 force @a
execute if score @s counter matches 103 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.80 0.80 0.80 1 130 force @a
execute if score @s counter matches 104 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 1.00 1.00 1.00 1 140 force @a
execute if score @s counter matches 105 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 1.20 1.20 1.20 1 150 force @a
execute if score @s counter matches 106 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 1.40 1.40 1.40 1 160 force @a
execute if score @s counter matches 107 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 1.60 1.60 1.60 1 170 force @a
execute if score @s counter matches 108 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 1.80 1.80 1.80 1 180 force @a
execute if score @s counter matches 109 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 2.00 2.00 2.00 1 190 force @a
execute if score @s counter matches 111 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2 2
execute if score @s counter matches 111 run particle minecraft:explosion ~ ~ ~ 1 1 1 1 30 force @a
execute if score @s counter matches 111 run tag @s add this
execute if score @s counter matches 111 if entity @s[tag=110shidenR] as @e[distance=..4.5,team=!Red,tag=Battle] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this,distance=..3] run tag @s add shiden-hit
execute if score @s counter matches 111 if entity @s[tag=110shidenR] as @e[distance=..4.5,team=!Red,tag=Battle] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this,distance=..3] run tag @s add shiden-hit
execute if score @s counter matches 111 if entity @s[tag=110shidenB] as @e[distance=..4.5,team=!Blue,tag=Battle] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this,distance=..3] run tag @s add shiden-hit
execute if score @s counter matches 111 if entity @s[tag=110shidenB] as @e[distance=..4.5,team=!Blue,tag=Battle] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this,distance=..3] run tag @s add shiden-hit
execute if score @s counter matches 111 if entity @e[tag=shiden-hit,limit=1] at @e[tag=shiden-hit] run function project-c:jobaction/110/skills/04/hit
execute if score @s counter matches 111 run tag @s remove this
