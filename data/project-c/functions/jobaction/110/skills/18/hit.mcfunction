execute unless entity @s[tag=110geometric] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Tags:["110dmgAEC"],Particle:"splash",Duration:5,Age:4,WaitTime:1,Radius:1.0f,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:2b,Duration:1}]}
execute if entity @s[tag=110geometric] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Tags:["110dmgAEC"],Particle:"splash",Duration:5,Age:4,WaitTime:1,Radius:1.0f,Effects:[{Id:7b,Amplifier:2b,Duration:1}]}
data modify entity @e[tag=110dmgAEC,limit=1,sort=nearest] Owner set from entity @s Owner
tag @e[tag=110dmgAEC] remove 110dmgAEC
particle minecraft:dust 0 0 1 2 ^1 ^ ^1 0 1.5 0 1 100 force @a
particle minecraft:dust 0 0 1 2 ^-1 ^ ^1 0 1.5 0 1 100 force @a
particle minecraft:dust 0 0 1 2 ^-1 ^ ^-1 0 1.5 0 1 100 force @a
particle minecraft:dust 0 0 1 2 ^1 ^ ^-1 0 1.5 0 1 100 force @a
particle minecraft:dust 0 0 1 2 ^1.414 ^ ^ 0 1.5 0 1 100 normal @a
particle minecraft:dust 0 0 1 2 ^-1.414 ^ ^ 0 1.5 0 1 100 normal @a
particle minecraft:dust 0 0 1 2 ^ ^ ^1.414 0 1.5 0 1 100 normal @a
particle minecraft:dust 0 0 1 2 ^ ^ ^-1.414 0 1.5 0 1 100 normal @a
tp @s ~ ~ ~
tag @e[tag=suirou-hit,limit=1,sort=nearest] add suirou-hitting
tag @e[tag=suirou-hit] remove suirou-hit
scoreboard players set @s counter 100