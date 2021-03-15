teleport @s[tag=055-0] ^ ^ ^3
scoreboard players add @s counter 1

execute if entity @s[tag=055-0] run particle minecraft:dust 1 0 1 2 ^ ^-0.08 ^ 0 0 0 0 2 force @a
execute if entity @s[tag=055-0] run particle end_rod ^ ^ ^ 0 0 0 0.01 2 force @a

execute if entity @s[tag=055-0] run particle minecraft:dust 1 0 1 2 ^ ^-0.08 ^1 0 0 0 0 2 force @a

execute if entity @s[tag=055-0] run execute as @s unless block ^ ^ ^2 minecraft:air at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 5 force @a
execute if entity @s[tag=055-0] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 5 force @a
execute if entity @s[tag=055-0] run execute as @s unless block ^ ^ ^ minecraft:air at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 5 force @a

execute if entity @s[tag=055-0] run execute as @s unless block ^ ^ ^ minecraft:air at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0
execute if entity @s[tag=055-0] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0
execute if entity @s[tag=055-0] run execute as @s unless block ^ ^ ^2 minecraft:air at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0

execute if entity @s[tag=055-0] run execute as @s unless block ^ ^ ^ minecraft:air at @s run kill @s
execute if entity @s[tag=055-0] run execute as @s unless block ^ ^ ^1 minecraft:air at @s run kill @s
execute if entity @s[tag=055-0] run execute as @s unless block ^ ^ ^2 minecraft:air at @s run kill @s

kill @s[scores={counter=10},tag=055-0]

execute if entity @s[tag=055-0R] run execute as @e[distance=..2,team=!Red] at @s run summon arrow ~ ~3 ~ {CustomName:'{"text":"ビームライフル","color":"light_purple"}',Motion:[0.0,-2.0,0.0],life:1200,color:-1b}
execute if entity @s[tag=055-0R] run execute if entity @e[distance=..2,team=Blue] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3 force @a
execute if entity @s[tag=055-0R] run execute if entity @e[distance=..2,team=Blue] run kill @s

execute if entity @s[tag=055-0B] run execute as @e[distance=..2,team=!Blue] at @s run summon arrow ~ ~3 ~ {CustomName:'{"text":"ビームライフル","color":"light_purple"}',Motion:[0.0,-2.0,0.0],life:1200,color:-1b}

execute if entity @s[tag=055-0B] run execute if entity @e[distance=..2,team=Red] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3 force @a

execute if entity @s[tag=055-0B] run execute if entity @e[distance=..2,team=Red] run kill @s