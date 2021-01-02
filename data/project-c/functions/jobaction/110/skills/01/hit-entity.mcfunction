execute unless entity @s[tag=110geometric] run summon minecraft:area_effect_cloud ~ ~1.2 ~ {Tags:["110dmgAEC"],Particle:"lava",Duration:5,Age:4,WaitTime:1,Radius:0.8f,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:1b,Duration:1}]}
execute if entity @s[tag=110geometric] run summon minecraft:area_effect_cloud ~ ~1.2 ~ {Tags:["110dmgAEC"],Particle:"lava",Duration:5,Age:4,WaitTime:1,Radius:0.8f,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
data modify entity @e[tag=110dmgAEC,limit=1,sort=nearest] Owner set from entity @s Owner
tag @e[tag=110dmgAEC] remove 110dmgAEC
