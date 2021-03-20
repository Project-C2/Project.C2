particle crit ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players add @s counter_1 1
execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[tag=Battle,dx=0] unless score @s teamNumber = #123- teamNumber positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run tag @s add hit
execute unless score @s counter_1 matches 8.. positioned ^ ^ ^0.4 run function project-c:jobaction/123/skill/3/1-loop