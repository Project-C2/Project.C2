scoreboard players add @s counter 1
execute if score @s counter matches 1..11 run scoreboard players add @s counter_9 7
scoreboard players operation @s subcounter += @s counter_9
execute if entity @s[scores={subcounter=181..}] run scoreboard players remove @s subcounter 360
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s subcounter

#ダガーのMotionの微調整
execute if entity @s[scores={counter=2..}] store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 106.61538461538461538461538461539
execute if entity @s[scores={counter=2..}] store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 106.61538461538461538461538461539

execute if entity @s[scores={counter=2..22}] store result score @s counter_2 run data get entity @s Motion[1] 100
execute if entity @s[scores={counter=2..10}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s counter_2 7
execute if entity @s[scores={counter=11..16}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s counter_2 5
execute if entity @s[scores={counter=17..22}] store result entity @s Motion[1] double 0.01 run scoreboard players add @s counter_2 3

kill @s[scores={counter=100..}]
kill @s[nbt={OnGround:1b},scores={counter=2..}]

execute if entity @s[tag=115axeR] positioned as @s run particle minecraft:dust 1 0 0 1.5 ~ ~0.5 ~ 0.2 0.2 0.2 1 1 force @a
execute if entity @s[tag=115axeR] positioned as @s run particle minecraft:dust 1 0 0 1.5 ~ ~0.5 ~ 0.2 0.2 0.2 1 4 normal @a
execute if entity @s[tag=115axeB] positioned as @s run particle minecraft:dust 0 0 1 1.5 ~ ~0.5 ~ 0.2 0.2 0.2 1 1 force @a
execute if entity @s[tag=115axeB] positioned as @s run particle minecraft:dust 0 0 1 1.5 ~ ~0.5 ~ 0.2 0.2 0.2 1 4 normal @a
particle minecraft:dust 0.4 0.4 0.4 1.5 ~ ~0.5 ~ 0.2 0.2 0.2 1 4 normal @a
particle minecraft:dust 0.4 0.4 0.4 1.5 ~ ~0.5 ~ 0.1 0.1 0.1 1 1 force @a

tag @s add now
execute if entity @s[tag=115axeR] as @e[distance=..4,tag=Battle,team=!Red] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..1.4] run tag @s add hit
execute if entity @s[tag=115axeR] as @e[distance=..4,tag=Battle,team=!Red] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..1.4] run tag @s add hit
execute if entity @s[tag=115axeB] as @e[distance=..4,tag=Battle,team=!Blue] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..1.4] run tag @s add hit
execute if entity @s[tag=115axeB] as @e[distance=..4,tag=Battle,team=!Blue] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..1.4] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/115/skill/1/hit
tag @s remove now
