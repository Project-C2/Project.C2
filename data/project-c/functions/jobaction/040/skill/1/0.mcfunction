scoreboard players set @s CT1 1000

playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.5 100 force @a
summon minecraft:marker ~ ~1 ~ {Tags:["040-ZaihouA","first","040-ZaihouA1"]}
summon minecraft:marker ~ ~1 ~ {Tags:["040-ZaihouA","first","040-ZaihouA2"]}
summon minecraft:marker ~ ~1 ~ {Tags:["040-ZaihouA","first","040-ZaihouA3"]}
summon minecraft:marker ~ ~1 ~ {Tags:["040-ZaihouA","first","040-ZaihouA4"]}
summon minecraft:marker ~ ~1 ~ {Tags:["040-ZaihouA","first","040-ZaihouA5"]}
teleport @e[limit=5,tag=first,tag=040-ZaihouA] ^ ^2 ^-4 ~ ~
execute as @e[tag=040-ZaihouA1,tag=first,limit=1] at @s run teleport @s ~ ~ ~ ~90 0
execute as @e[tag=040-ZaihouA2,tag=first,limit=1] at @s run teleport @s ~ ~ ~ ~-90 0
execute as @e[tag=040-ZaihouA3,tag=first,limit=1] at @s run teleport @s ~ ~ ~ ~90 -45
execute as @e[tag=040-ZaihouA4,tag=first,limit=1] at @s run teleport @s ~ ~ ~ ~-90 -45
execute as @e[tag=040-ZaihouA5,tag=first,limit=1] at @s run teleport @s ~ ~ ~ ~-90 -90
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber

data merge storage random: {min:0,max:5}
execute store result score #tmp counter_1 run function project-c:general/random
scoreboard players operation @e[tag=first] counter_1 = #tmp counter_1
scoreboard players add @e[tag=040-ZaihouA2,tag=first,limit=1] counter_1 1
scoreboard players add @e[tag=040-ZaihouA3,tag=first,limit=1] counter_1 2
scoreboard players add @e[tag=040-ZaihouA4,tag=first,limit=1] counter_1 3
scoreboard players add @e[tag=040-ZaihouA5,tag=first,limit=1] counter_1 4
scoreboard players operation @e[tag=first] counter_1 %= #5 counter
tag @e[tag=first] remove first
scoreboard players reset #tmp


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
data merge block 107 2 -71 {auto:1b}