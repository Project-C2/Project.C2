execute as @e[tag=095-3wing] store result score @s counter_2 run data get entity @s Fire
execute as @e[tag=095-3wing,scores={counter_2=1..}] run data modify entity @s Fire set value -20s
execute if entity @e[tag=095-3,scores={counter_3=1..},limit=1] run scoreboard players remove @e[tag=095-3,scores={counter_3=1..}] counter_3 1
execute if entity @e[tag=095-3,scores={counter_3=1},limit=1] as @e[tag=095-3,scores={counter_3=1}] at @s run function project-c:jobaction/095/skill/3/inv_clear

scoreboard players add @e[tag=095-3] counter 1
execute if entity @e[tag=095Hippoglyphe,limit=1] as @e[tag=095Hippoglyphe] at @s run function project-c:jobaction/095/skill/3/2
execute if entity @e[tag=095-3,scores={counter=104..},limit=1] as @e[tag=095-3,scores={counter=104..}] run data merge entity @s {Health:0f,DeathTime:19s}
