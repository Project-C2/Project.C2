execute rotated ~ 0 run summon sheep ^ ^ ^-1.2 {Tags:["123gamingSheep","first","Battle"],NoAI:1b,Color:0b,Silent:1b,Health:1f,ActiveEffects:[{Id:12b,Amplifier:0b,Duration:20000,ShowParticles:0b}]}
execute as @e[tag=first] positioned as @s run tp @s ~ ~ ~ ~ 0

execute as @e[tag=first] store result score @s counter_1 run data get entity @s UUID[1] 1
execute as @e[tag=first] run scoreboard players operation @s counter_1 %= #100 counter
execute as @e[tag=first] if score @s counter_1 matches ..11 run data merge entity @s {Color:14b}
execute as @e[tag=first] if score @s counter_1 matches 12..22 run data merge entity @s {Color:1b}
execute as @e[tag=first] if score @s counter_1 matches 23..33 run data merge entity @s {Color:4b}
execute as @e[tag=first] if score @s counter_1 matches 34..44 run data merge entity @s {Color:5b}
execute as @e[tag=first] if score @s counter_1 matches 45..55 run data merge entity @s {Color:13b}
execute as @e[tag=first] if score @s counter_1 matches 56..66 run data merge entity @s {Color:9b}
execute as @e[tag=first] if score @s counter_1 matches 67..77 run data merge entity @s {Color:11b}
execute as @e[tag=first] if score @s counter_1 matches 78..88 run data merge entity @s {Color:10b}
execute as @e[tag=first] if score @s counter_1 matches 89.. run data merge entity @s {Color:2b}
execute as @e[tag=first] at @s run function project-c:jobaction/123/skill/2/2-pos_set

scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
execute if score @s teamNumber matches 1 run team join RedDummy @e[tag=first]
execute if score @s teamNumber matches 2 run team join BlueDummy @e[tag=first]
tag @e[tag=first] remove first

data merge block 106 61 -60 {auto:1b}
