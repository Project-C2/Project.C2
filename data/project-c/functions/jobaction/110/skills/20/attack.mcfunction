execute unless entity @s[tag=110geometric] run summon area_effect_cloud ~ ~ ~ {Tags:["this"],Particle:"lava",Duration:5,Radius:2.3f,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:2b,Duration:1}]}
execute if entity @s[tag=110geometric] run summon area_effect_cloud ~ ~ ~ {Tags:["this"],Particle:"lava",Duration:5,Radius:2.3f,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:2b,Duration:1}]}
particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 1 8 normal @a
particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 1 2 force @a
particle flame ~ ~1 ~ 0.4 0.6 0.4 0.01 120 normal @a
particle flame ~ ~1 ~ 0.4 0.6 0.4 0.01 30 force @a
particle flame ~ ~0.1 ~ 1.4 0.1 1.4 0.01 120 normal @a
particle flame ~ ~0.1 ~ 1.4 0.1 1.4 0.01 30 force @a
