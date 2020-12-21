scoreboard players add @s counter 1
execute if score @s counter matches 1..11 run scoreboard players add @s counter_1 7
scoreboard players operation @s subcounter += @s counter_1
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

execute if entity @s[tag=026-SaxeR] positioned as @s run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0.2 0.2 0.2 1 3 force @a
execute if entity @s[tag=026-SaxeB] positioned as @s run particle minecraft:dust 0 0 1 2 ~ ~ ~ 0.2 0.2 0.2 1 3 force @a
execute if entity @s[tag=026-GaxeR] positioned as @s run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0.2 0.2 0.2 1 3 force @a
execute if entity @s[tag=026-GaxeB] positioned as @s run particle minecraft:dust 0 0 1 2 ~ ~ ~ 0.2 0.2 0.2 1 3 force @a
execute if entity @s[tag=026-Saxe] positioned as @s run particle minecraft:dust 0.5 0.5 0.5 3 ~ ~ ~ 0.1 0.1 0.1 1 2 force @a
execute if entity @s[tag=026-Gaxe] positioned as @s run particle minecraft:dust 1 0.6 0 3 ~ ~ ~ 0.1 0.1 0.1 1 2 force @a

execute if entity @s[tag=026-SaxeR] if entity @e[tag=Battle,distance=..2,team=!Red] run function project-c:jobaction/026/skill/2/2
execute if entity @s[tag=026-SaxeB] if entity @e[tag=Battle,distance=..2,team=!Blue] run function project-c:jobaction/026/skill/2/2
execute if entity @s[tag=026-GaxeR] if entity @e[tag=Battle,distance=..2.2,team=!Red] run function project-c:jobaction/026/skill/2/2
execute if entity @s[tag=026-GaxeB] if entity @e[tag=Battle,distance=..2.2,team=!Blue] run function project-c:jobaction/026/skill/2/2
