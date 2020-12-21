scoreboard players add @s counter 1
kill @s[scores={counter=4..}]

particle dust 1 1 1 2 ~ ~ ~ 0.5 0.5 0.5 1 5 force @a
particle cloud ~ ~ ~ 0.5 0.5 0.5 0.5 10 force @a

teleport @s ^ ^ ^1 ~ ~


execute if entity @s[tag=099-W-P1-slowness-Red] if entity @e[distance=..3,team=Blue,tag=Battle] as @e[distance=..3,team=Blue,tag=Battle] run effect give @s slowness 3 4
execute if entity @s[tag=099-W-P1-slowness-Blue] if entity @e[distance=..3,team=Red,tag=Battle] as @e[distance=..3,team=Red,tag=Battle] run effect give @s slowness 3 4
execute if entity @s[tag=099-W-P1-slowness-Red] if entity @e[distance=..3,tag=Battle,team=Blue] run kill @s
execute if entity @s[tag=099-W-P1-slowness-Blue] if entity @e[distance=..3,tag=Battle,team=Red] run kill @s

execute unless block ^ ^ ^1 air run particle end_rod ~ ~ ~ 0 0 0 1 30 force @a
execute unless block ^ ^ ^1 air run kill @s

execute as @e[tag=099-W-P1-slowness] at @s run function project-c:jobaction/099/skill/0/phase1/1