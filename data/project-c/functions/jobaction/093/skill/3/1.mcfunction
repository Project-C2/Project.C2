scoreboard players set @s counter_3 0

execute if entity @s[team=Red] at @a[team=Red,gamemode=!spectator,distance=..20] run summon area_effect_cloud ~ ~0.7 ~ {Tags:["this"],Particle:"heart",Radius:0.8f,Duration:5,Age:4,WaitTime:1,Potion:"minecraft:healing"}
execute if entity @s[team=Blue] at @a[team=Blue,gamemode=!spectator,distance=..20] run summon area_effect_cloud ~ ~0.7 ~ {Tags:["this"],Particle:"heart",Radius:0.8f,Duration:5,Age:4,WaitTime:1,Potion:"minecraft:healing"}
execute at @e[tag=this] run playsound minecraft:entity.player.levelup master @a[limit=1,sort=nearest] ~ ~ ~ 0.6 2
execute as @e[tag=this] run data modify entity @s Owner set from entity @a[scores={jobNumber=93,counter_3=0},gamemode=!spectator,limit=1,sort=nearest,distance=..0.1] UUID

execute rotated ~ 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~10 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~20 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~30 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~40 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~50 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~60 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~70 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~80 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~90 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~100 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~110 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~120 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~130 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~140 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~150 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~160 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~170 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~180 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~190 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~200 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~210 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~220 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~230 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~240 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~250 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~260 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~270 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~280 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~290 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~300 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~310 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~320 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~330 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
execute rotated ~340 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 force @a
execute rotated ~350 0 run particle minecraft:dust 0 0 1 1 ^ ^ ^19.5 1 1 1 1 20 normal @a
