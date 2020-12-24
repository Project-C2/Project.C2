execute unless entity @s[tag=110geometric] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Tags:["110dmgAEC"],Particle:"lava",Duration:5,Age:4,WaitTime:1,Radius:2.4f,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:1b,Duration:1}]}
execute if entity @s[tag=110geometric] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Tags:["110dmgAEC"],Particle:"lava",Duration:5,Age:4,WaitTime:1,Radius:2.4f,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
data modify entity @e[tag=110dmgAEC,limit=1,sort=nearest] Owner set from entity @s Owner
tag @e[tag=110dmgAEC] remove 110dmgAEC
particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 1 8 normal @a
particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 1 2 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.25 80 normal @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.25 20 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
scoreboard players set @s counter 101