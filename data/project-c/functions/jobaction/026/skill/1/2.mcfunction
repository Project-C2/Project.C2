execute if entity @s[tag=026-water-R] run tag @e[team=Red,distance=..8,tag=Battle] add 026regene
execute if entity @s[tag=026-water-B] run tag @e[team=Blue,distance=..8,tag=Battle] add 026regene
execute if entity @e[tag=026regene,limit=1] at @e[tag=026regene] run summon area_effect_cloud ~ ~0.2 ~ {Particle:"splash",Duration:5,Age:4,WaitTime:1,Radius:0.9f,Effects:[{Id:29b,Amplifier:0b,Duration:35},{Id:6b,Amplifier:0b,Duration:1}]}
execute if entity @e[tag=026regene,limit=1] run scoreboard players add @e[tag=026regene] CT1 20
execute if entity @e[tag=026regene,limit=1] run scoreboard players add @e[tag=026regene] CT2 20
execute if entity @e[tag=026regene,limit=1] run scoreboard players add @e[tag=026regene] CT3 20
execute if entity @e[tag=026regene,limit=1] run tag @e[tag=026regene] remove 026regene
particle minecraft:rain ~ ~3 ~ 3 1 3 1 200 normal @a
particle minecraft:rain ~ ~3 ~ 3 1 3 1 50 force @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.4 120 normal @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.4 30 force @a
playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 1 2
playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 1 2
playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1 1
playsound minecraft:ambient.underwater.enter master @a ~ ~ ~ 1 1
scoreboard players add @s subcounter 1
scoreboard players set @s counter -1
