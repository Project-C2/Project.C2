scoreboard players remove @s counter_3 1
execute at @s[scores={counter_3=1}] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 2 1.45
execute at @s[scores={counter_3=1}] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 2 1.75
execute at @s[scores={counter_3=1}] run particle dust 0.7 0.7 1 1 ^ ^1 ^1 0.05 0.05 0.05 0 10
execute at @s[scores={counter_3=1}] run particle dust 0.7 0.7 1 1 ^ ^1 ^1.5 0.05 0.05 0.05 0 10
execute at @s[scores={counter_3=1}] run particle dust 0.7 0.7 1 1 ^ ^1 ^2 0.05 0.05 0.05 0 10
execute at @s[scores={counter_3=1}] run particle dust 0.7 0.7 1 1 ^ ^1 ^2.5 0.05 0.05 0.05 0 10
execute at @s[scores={counter_3=1}] run particle dust 0.7 0.7 1 1 ^ ^1 ^3 0.05 0.05 0.05 0 10
execute at @s[scores={counter_3=1}] run particle dust 0.7 0.7 1 1 ^ ^1 ^3.5 0.05 0.05 0.05 0 10
execute at @s[scores={counter_3=1}] run particle dust 0.7 0.7 1 1 ^ ^1 ^4 0.05 0.05 0.05 0 10
execute at @s[scores={counter_3=1}] run particle dust 0.7 0.7 1 1 ^ ^1 ^4.5 0.05 0.05 0.05 0 10
execute at @s[scores={counter_3=1}] run particle dust 0.7 0.7 1 1 ^ ^1 ^5 0.05 0.05 0.05 0 10
execute at @s[scores={counter_3=1}] run particle dust 0.7 0.7 1 1 ^ ^1 ^5.5 0.05 0.05 0.05 0 10
execute at @s[scores={counter_3=1}] run particle dust 0.7 0.7 1 1 ^ ^1 ^6 0.05 0.05 0.05 0 10
#
execute at @s[scores={counter_3=1},team=Red] positioned ^ ^1 ^1 run effect give @e[team=Blue,distance=..2] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=1},team=Red] positioned ^ ^1 ^2 run effect give @e[team=Blue,distance=..2] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=1},team=Red] positioned ^ ^1 ^3 run effect give @e[team=Blue,distance=..2] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=1},team=Red] positioned ^ ^1 ^4 run effect give @e[team=Blue,distance=..2] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=1},team=Red] positioned ^ ^1 ^5 run effect give @e[team=Blue,distance=..2] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=1},team=Red] positioned ^ ^1 ^6 run effect give @e[team=Blue,distance=..2] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=1},team=Blue] positioned ^ ^1 ^1 run effect give @e[team=Red,distance=..2] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=1},team=Blue] positioned ^ ^1 ^2 run effect give @e[team=Red,distance=..2] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=1},team=Blue] positioned ^ ^1 ^3 run effect give @e[team=Red,distance=..2] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=1},team=Blue] positioned ^ ^1 ^4 run effect give @e[team=Red,distance=..2] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=1},team=Blue] positioned ^ ^1 ^5 run effect give @e[team=Red,distance=..2] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=1},team=Blue] positioned ^ ^1 ^6 run effect give @e[team=Red,distance=..2] minecraft:instant_damage 1 1

execute at @s run tp @s @s