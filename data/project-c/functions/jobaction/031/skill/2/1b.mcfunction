execute unless block ~ ~0.1 ~ air run scoreboard players set @s counter_1 2
execute unless block ~ ~-0.1 ~ air run scoreboard players set @s counter_1 -2
execute unless block ~0.1 ~ ~ air run scoreboard players set @s counter_1 1
execute unless block ~-0.1 ~ ~ air run scoreboard players set @s counter_1 -1
execute unless block ~ ~ ~0.1 air run scoreboard players set @s counter_1 3
execute unless block ~ ~ ~-0.1 air run scoreboard players set @s counter_1 -3
execute if entity @s[scores={counter_1=2}] run summon armor_stand ~ ~ ~ {Tags:["031-necroCF","031-necroC","031-necroC+2","031-necroCY"],Invisible:1b,Marker:1b,NoGravity:1b}
execute if entity @s[scores={counter_1=1}] run summon armor_stand ~ ~ ~ {Tags:["031-necroCF","031-necroC","031-necroC+1","031-necroCXZ","031-necroCX"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f]}
execute if entity @s[scores={counter_1=3}] run summon armor_stand ~ ~ ~ {Tags:["031-necroCF","031-necroC","031-necroC+3","031-necroCXZ","031-necroCZ"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f]}
execute if entity @s[scores={counter_1=-2}] run summon armor_stand ~ ~ ~ {Tags:["031-necroCF","031-necroC","031-necroC-2","031-necroCY"],Invisible:1b,Marker:1b,NoGravity:1b}
execute if entity @s[scores={counter_1=-1}] run summon armor_stand ~ ~ ~ {Tags:["031-necroCF","031-necroC","031-necroC-1","031-necroCXZ","031-necroCX"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f]}
execute if entity @s[scores={counter_1=-3}] run summon armor_stand ~ ~ ~ {Tags:["031-necroCF","031-necroC","031-necroC-3","031-necroCXZ","031-necroCZ"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f]}
execute if entity @s[team=RedDummy] run team join RedDummy @e[tag=031-necroCF]
execute if entity @s[team=BlueDummy] run team join BlueDummy @e[tag=031-necroCF]
scoreboard players operation @e[tag=031-necroCF] playerNumber = @s playerNumber
scoreboard players set @e[tag=031-necroCF] counter 30
tag @e[tag=031-necroCF] remove 031-necroCF
particle minecraft:witch ~ ~ ~ 1 1 1 1 200 normal @a
particle minecraft:witch ~ ~ ~ 1 1 1 1 50 force @a
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 3 2
tag @s add 031-necroK
data merge block 1 5 -71 {auto:1b}