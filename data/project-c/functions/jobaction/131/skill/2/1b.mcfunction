execute unless block ~ ~0.1 ~ air run scoreboard players set @s counter_1 2
execute unless block ~ ~-0.1 ~ air run scoreboard players set @s counter_1 -2
execute unless block ~0.1 ~ ~ air run scoreboard players set @s counter_1 1
execute unless block ~-0.1 ~ ~ air run scoreboard players set @s counter_1 -1
execute unless block ~ ~ ~0.1 air run scoreboard players set @s counter_1 3
execute unless block ~ ~ ~-0.1 air run scoreboard players set @s counter_1 -3
execute if entity @s[scores={counter_1=2}] run summon armor_stand ~ ~ ~ {Tags:["131-necroCF","131-necroC","131-necroC+2","131-necroCY"],Invisible:1b,Marker:1b,NoGravity:1b}
execute if entity @s[scores={counter_1=1}] run summon armor_stand ~ ~ ~ {Tags:["131-necroCF","131-necroC","131-necroC+1","131-necroCXZ","131-necroCX"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f]}
execute if entity @s[scores={counter_1=3}] run summon armor_stand ~ ~ ~ {Tags:["131-necroCF","131-necroC","131-necroC+3","131-necroCXZ","131-necroCZ"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f]}
execute if entity @s[scores={counter_1=-2}] run summon armor_stand ~ ~ ~ {Tags:["131-necroCF","131-necroC","131-necroC-2","131-necroCY"],Invisible:1b,Marker:1b,NoGravity:1b}
execute if entity @s[scores={counter_1=-1}] run summon armor_stand ~ ~ ~ {Tags:["131-necroCF","131-necroC","131-necroC-1","131-necroCXZ","131-necroCX"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f]}
execute if entity @s[scores={counter_1=-3}] run summon armor_stand ~ ~ ~ {Tags:["131-necroCF","131-necroC","131-necroC-3","131-necroCXZ","131-necroCZ"],Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[90.0f,0.0f]}
execute if entity @s[team=RedDummy] run team join RedDummy @e[tag=131-necroCF]
execute if entity @s[team=BlueDummy] run team join BlueDummy @e[tag=131-necroCF]
scoreboard players operation @e[tag=131-necroCF] playerNumber = @s playerNumber
scoreboard players set @e[tag=131-necroCF] counter 30
scoreboard players set @e[tag=131-necroCF] counter_4 0
tag @e[tag=131-necroCF] remove 131-necroCF
particle minecraft:flash ~ ~ ~ 0 0 0 0 2 force @a
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 3 2
tag @s add 131-necroK
data merge block -62 64 -11 {auto:1b}