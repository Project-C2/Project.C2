playsound minecraft:entity.elder_guardian.hurt master @a[tag=!user] ~ ~ ~ 1.2 1.5
playsound minecraft:entity.elder_guardian.hurt master @a[tag=user] ~ ~ ~ 10 1.5
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.9 2
particle minecraft:heart ~ ~1 ~ 0.4 0.4 0.4 1 8 normal @a
particle minecraft:heart ~ ~1 ~ 0.4 0.4 0.4 1 2 force @a
particle minecraft:totem_of_undying ~ ~1 ~ 0.4 0.4 0.4 0.7 100 normal @a
particle minecraft:totem_of_undying ~ ~1 ~ 0.4 0.4 0.4 0.7 25 force @a

execute at @e[tag=119_3particle] run particle minecraft:dust 1.00 0.33 1.00 1.2 ~ ~-0.1 ~ 0.2 0.2 0.2 1 4 normal @a
execute at @e[tag=119_3particle] run particle minecraft:dust 1.00 0.33 1.00 1.2 ~ ~-0.1 ~ 0 0 0 1 1 force @a

summon minecraft:area_effect_cloud ~ ~0.2 ~ {Effects:[{Id:6b,Amplifier:0b},{Id:6b,Amplifier:2b},{Id:22b,Amplifier:1b,Duration:80,Ambient:1b}],Duration:5,Age:4,WaitTime:1,Radius:0.8f,Particle:"minecraft:dust 0 0 0 0"}
tag @s remove hit

