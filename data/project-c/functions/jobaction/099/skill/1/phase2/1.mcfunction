scoreboard players add @s counter_1 1
execute if score @s counter_1 matches 1..10 anchored eyes rotated ~ 0 run particle minecraft:dust 0 0.067 1 1 ^-0.35 ^-0.8 ^0.2 .1 .1 .1 0 2 force
execute if score @s counter_1 matches 11..20 anchored eyes rotated ~ 0 run particle minecraft:dust 0 0.282 1 1 ^-0.35 ^-0.8 ^0.2 .1 .1 .1 0 2 force
execute if score @s counter_1 matches 21..30 anchored eyes rotated ~ 0 run particle minecraft:dust 0 0.482 1 1 ^-0.35 ^-0.8 ^0.2 .1 .1 .1 0 2 force
execute if score @s counter_1 matches 31..40 anchored eyes rotated ~ 0 run particle minecraft:dust 0 0.933 1 1 ^-0.35 ^-0.8 ^0.2 .1 .1 .1 0 2 force
execute if score @s counter_1 matches 40.. run function project-c:jobaction/099/skill/1/phase2/2