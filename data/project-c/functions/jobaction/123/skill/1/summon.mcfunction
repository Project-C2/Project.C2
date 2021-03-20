playsound minecraft:entity.sheep.death master @a ^ ^ ^1 2.5 1
playsound minecraft:entity.sheep.death master @a ^ ^ ^1 1.5 1
playsound minecraft:entity.wither.shoot master @a ^ ^ ^1 2 1
particle minecraft:cloud ^ ^ ^1 0.3 0.3 0.3 0.6 150

summon sheep ^ ^ ^1 {Tags:["123sheep","first","Battle"],NoAI:1b,Color:0b,Silent:1b,Health:1f,ActiveEffects:[{Id:12b,Amplifier:0b,Duration:20000,ShowParticles:0b}]}
summon sheep ^0.2 ^ ^1 {Tags:["123sheep","first","Battle"],NoAI:1b,Color:0b,Silent:1b,Health:1f,ActiveEffects:[{Id:12b,Amplifier:0b,Duration:20000,ShowParticles:0b}]}
summon sheep ^-0.2 ^ ^1 {Tags:["123sheep","first","Battle"],NoAI:1b,Color:0b,Silent:1b,Health:1f,ActiveEffects:[{Id:12b,Amplifier:0b,Duration:20000,ShowParticles:0b}]}

scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
execute if entity @s[team=Red] run team join Red @e[tag=first]
execute if entity @s[team=Blue] run team join Blue @e[tag=first]
execute as @e[tag=first] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=first] remove first

data merge block 104 61 -62 {auto:1b}
