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

execute if entity @s[nbt={OnGround:1b},scores={counter=2..}] run scoreboard players add @s counter 100
execute if entity @s[scores={counter=99}] run scoreboard players add @s counter 100
execute if entity @s[scores={counter=100..}] run function project-c:jobaction/110/weapons/7/set-dagger
particle minecraft:dust 0.4 0.4 0.4 1 ~ ~0.5 ~ 0.2 0.2 0.2 1 4 normal @a
particle minecraft:dust 0.4 0.4 0.4 1 ~ ~0.5 ~ 0.1 0.1 0.1 1 1 force @a

tag @s add now
execute if entity @s[tag=110daggerR] as @e[distance=..4,tag=Battle,team=!Red] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..1.2] run tag @s add dagger-hit
execute if entity @s[tag=110daggerR] as @e[distance=..4,tag=Battle,team=!Red] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..1.2] run tag @s add dagger-hit
execute if entity @s[tag=110daggerB] as @e[distance=..4,tag=Battle,team=!Blue] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..1.2] run tag @s add dagger-hit
execute if entity @s[tag=110daggerB] as @e[distance=..4,tag=Battle,team=!Blue] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..1.2] run tag @s add dagger-hit
execute if entity @e[tag=dagger-hit,limit=1] run function project-c:jobaction/110/weapons/7/hit-entity
tag @s remove now

