scoreboard players remove @s counter_2 1
execute at @s[scores={counter_2=1}] run particle dust 1 0.2 0.2 2 ^ ^1 ^3 0.25 0.25 0.25 0 5
execute at @s[scores={counter_2=1}] run particle dust 1 0.2 0.2 2 ^1 ^1 ^2.5 0.25 0.25 0.25 0 5
execute at @s[scores={counter_2=1}] run particle dust 1 0.2 0.2 2 ^-1 ^1 ^2.5 0.25 0.25 0.25 0 5
execute at @s[scores={counter_2=1}] run particle dust 1 0.2 0.2 2 ^-2 ^1 ^2.25 0.25 0.25 0.25 0 5
execute at @s[scores={counter_2=1}] run particle dust 1 0.2 0.2 2 ^2 ^1 ^2.25 0.25 0.25 0.25 0 5
execute at @s[scores={counter_2=1}] run particle dust 1 0.2 0.2 2 ^-3 ^1 ^2.1 0.25 0.25 0.25 0 5
execute at @s[scores={counter_2=1}] run particle dust 1 0.2 0.2 2 ^3 ^1 ^2.1 0.25 0.25 0.25 0 5
execute at @s[scores={counter_2=1}] run particle minecraft:sweep_attack ^ ^1 ^3 0 0 0 5 5
execute at @s[scores={counter_2=1}] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 0.75
execute at @s[scores={counter_2=1}] run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 2 0.75

execute at @s[scores={counter_2=2..15}] run particle minecraft:dust 1 0 0.3 1 ^ ^1 ^1 0.1 0.1 0.1 0 2
execute at @s[scores={counter_2=2..15}] run particle minecraft:dust 1 0 0.3 1.5 ^ ^1 ^1 0.1 0.1 0.1 0 1


effect clear @s[scores={counter_2=13}] levitation
effect give @s[scores={counter_2=2}] levitation 1 10
effect give @s[scores={counter_2=2}] jump_boost 5 5 true
tag @s[scores={counter_2=2}] add 065jump
effect clear @s[scores={counter_2=1}] levitation

execute at @s[team=Red,scores={counter_2=1}] positioned ^ ^ ^2 run effect give @e[team=Blue,distance=..3] instant_damage 1 0
execute at @s[team=Blue,scores={counter_2=1}] positioned ^ ^ ^2 run effect give @e[team=Red,distance=..3] instant_damage 1 0
execute at @s[team=Red,scores={counter_2=1}] positioned ^ ^ ^2 run effect give @e[team=Blue,distance=..3] levitation 1 1 true
execute at @s[team=Blue,scores={counter_2=1}] positioned ^ ^ ^2 run effect give @e[team=Red,distance=..3] levitation 1 1 true