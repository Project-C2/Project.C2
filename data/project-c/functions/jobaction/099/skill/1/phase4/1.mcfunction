scoreboard players add @s counter 1
tag @s[scores={counter=15..}] add 099-S1-P4-deploy
tag @s[scores={counter=15..}] remove 099-S1-P4-blackhole-tp

particle dust 0 0 0 2 ~ ~ ~ 0.5 0.5 0.5 1 5 force @a
particle dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.5 10 force @a

execute if entity @s[tag=099-S1-P4-blackhole-tp] run teleport @s ^ ^ ^1 ~ ~


execute if entity @s[tag=099-S1-P4-blackhole-Red] if entity @e[distance=..3,team=Blue,tag=Battle] run tag @s add 099-S1-P4-deploy
execute if entity @s[tag=099-S1-P4-blackhole-Blue] if entity @e[distance=..3,team=Red,tag=Battle] run tag @s add 099-S1-P4-deploy

execute unless block ^ ^ ^1 air run particle dragon_breath ~ ~ ~ 0 0 0 1 30 force @a
execute unless block ^ ^ ^1 air run tag @s add 099-S1-P4-deploy
execute unless block ^ ^ ^1 air run tag @s remove 099-S1-P4-blackhole-tp



execute if entity @s[tag=099-S1-P4-deploy] run function project-c:jobaction/099/skill/1/phase4/deploy

execute as @e[tag=099-S1-P4-blackhole-tp] at @s run function project-c:jobaction/099/skill/1/phase4/1