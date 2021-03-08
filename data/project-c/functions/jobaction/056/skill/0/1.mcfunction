teleport @s[tag=056-0] ^ ^ ^2
scoreboard players add @s counter 1

execute if entity @s[tag=056-0] run particle end_rod ^ ^ ^ 0 0 0 0.1 10 force @a
execute if entity @s[tag=056-0] run particle minecraft:dust 1 0 1 10 ^ ^-0.08 ^ 0 0 0 0 2 force @a
execute if entity @s[tag=056-0] run particle minecraft:dust 1 0 1 10 ^ ^-0.08 ^1 0 0 0 0 2 force @a

execute if entity @s[tag=056-0] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 5 force @a
execute if entity @s[tag=056-0] run execute as @s unless block ^ ^ ^ minecraft:air at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 5 force @a

execute if entity @s[tag=056-0] run execute as @s unless block ^ ^ ^ minecraft:air at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0
execute if entity @s[tag=056-0] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0


execute if entity @s[tag=056-0] run execute as @s unless block ^ ^ ^ minecraft:air at @s run kill @s
execute if entity @s[tag=056-0] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run kill @s

kill @s[scores={counter=15},tag=056-0]

execute if entity @s[tag=056-0R] run execute as @e[distance=..2.5,team=!Red,tag=Battle] at @s run summon arrow ~ ~3 ~ {CustomName:'{"text":"ビームマグナム","color":"dark_purple"}',Motion:[0.0,-3.0,0.0],life:1200,color:-1b}

execute if entity @s[tag=056-0R] run execute if entity @e[distance=..2.5,team=Blue] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3 force @a
execute if entity @s[tag=056-0R] run execute if entity @e[distance=..2.5,team=Blue] run kill @s



execute if entity @s[tag=056-0B] run execute as @e[distance=..2.5,team=!Blue,tag=Battle] at @s run summon arrow ~ ~3 ~ {CustomName:'{"text":"ビームマグナム","color":"dark_purple"}',Motion:[0.0,-3.0,0.0],life:1200,color:-1b}

execute if entity @s[tag=056-0B] run execute if entity @e[distance=..2.5,team=Red] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3 force @a

execute if entity @s[tag=056-0B] run execute if entity @e[distance=..2.5,team=Red] run kill @s