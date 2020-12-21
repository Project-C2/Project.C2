summon area_effect_cloud ~ ~ ~ {Tags:["this"],Duration:5,Age:4,WaitTime:1,Radius:1.8f,Particle:"splash",Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowIcon:0b}]}
summon area_effect_cloud ~ ~-1 ~ {Tags:["this"],Duration:5,Age:4,WaitTime:1,Radius:1.5f,Particle:"splash",Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowIcon:0b}]}
summon area_effect_cloud ~ ~1 ~ {Tags:["this"],Duration:5,Age:4,WaitTime:1,Radius:1.5f,Particle:"splash",Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowIcon:0b}]}
tag @s add it
execute as @e[tag=this] run data modify entity @s Owner set from entity @e[tag=it,limit=1,sort=nearest] Owner
tag @s remove it
playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1 2
particle minecraft:block water ~ ~0.3 ~ 1 0.1 1 1 100 normal @a
particle minecraft:block water ~ ~0.3 ~ 1 0.1 1 1 25 force @a

tag @e[tag=this] remove this
kill @s
