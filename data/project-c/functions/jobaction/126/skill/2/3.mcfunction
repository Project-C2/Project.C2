scoreboard players add @s counter 1

particle cloud ^ ^ ^2 0 1 0 0.3 0
particle cloud ^ ^ ^-2 0 1 0 0.3 0
particle cloud ^2 ^ ^ 0 1 0 0.3 0
particle cloud ^-2 ^ ^ 0 1 0 0.3 0

particle dust 1 1 1 1.5 ^ ^ ^2 0 0 0 0 0
particle dust 1 1 1 1.5 ^ ^ ^-2 0 0 0 0 0
particle dust 1 1 1 1.5 ^2 ^ ^ 0 0 0 0 0
particle dust 1 1 1 1.5 ^-2 ^ ^ 0 0 0 0 0

particle dust 1 1 1 1 ^ ^ ^1.2 0 0 0 0 0
particle dust 1 1 1 1 ^ ^ ^-1.2 0 0 0 0 0
particle dust 1 1 1 1 ^1.2 ^ ^ 0 0 0 0 0
particle dust 1 1 1 1 ^-1.2 ^ ^ 0 0 0 0 0

particle sweep_attack ^ ^2 ^ 1 2 1 0 3

execute if entity @s[tag=126-typhoonR] run effect give @e[team=Red,distance=..2,tag=Battle] jump_boost 1 4
execute if entity @s[tag=126-typhoonB] run effect give @e[team=Blue,distance=..2,tag=Battle] jump_boost 1 4

execute if entity @s[tag=126-typhoonR,scores={counter=30..}] run execute as @e[team=Blue,distance=..2,tag=Battle] at @s run summon area_effect_cloud ~ ~0.3 ~ {Tags:["first"],CustomName:'{"text":"つむじ風","color":"white","bold":true}',Particle:"dust 0 0 0 0",Radius:0.5f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
execute if entity @s[tag=126-typhoonB,scores={counter=30..}] run execute as @e[team=Red,distance=..2,tag=Battle] at @s run summon area_effect_cloud ~ ~0.3 ~ {Tags:["first"],CustomName:'{"text":"つむじ風","color":"white","bold":true}',Particle:"dust 0 0 0 0",Radius:0.5f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}


teleport @s ~ ~ ~ ~8 ~

kill @s[scores={counter=200..}]