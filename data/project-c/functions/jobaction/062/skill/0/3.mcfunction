scoreboard players add @s counter 1
scoreboard players add @s counter_2 1

teleport @s[scores={counter_2=4..}] ^ ^ ^3.5 ~ ~

execute if entity @s[scores={counter_2=4..}] run particle witch ^ ^ ^ 0.3 0.3 0.3 0.1 5 force @a
execute if entity @s[scores={counter_2=4..}] run particle sweep_attack ^ ^ ^ 0.2 0.2 0.2 0 3 force @a
execute if entity @s[scores={counter_2=4..}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.2 2

execute as @s[tag=062-CslashR,scores={counter_2=4..}] at @s run execute as @e[distance=..4,team=Blue] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-4.0,0.0],life:1200,color:-1b}
execute as @s[tag=062-CslashB,scores={counter_2=4..}] at @s run execute as @e[distance=..4,team=Red] at @s run summon arrow ~ ~2.5 ~ {Motion:[0.0,-4.0,0.0],life:1200,color:-1b}

scoreboard players set @s[scores={counter_2=4..}] counter_2 0
kill @s[scores={counter=16..}]