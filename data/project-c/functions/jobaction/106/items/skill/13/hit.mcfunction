#スキル16
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6
execute as @a[tag=106_perforate_hit] if entity @s[gamemode=spectator] run tag @s remove 106_perforate_hit

execute if score @s counter_4 matches 1 as @e[tag=106_perforate_hit] at @s run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"パーフォレイトショット","italic": false}',Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:3b,Duration:1,ShowIcon:0b},{Id:7b,Amplifier:1b,Duration:1,ShowIcon:0b}]}
execute if score @s counter_4 matches 2 as @e[tag=106_perforate_hit] at @s run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"パーフォレイトショット","italic": false}',Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:2b,Duration:1,ShowIcon:0b},{Id:7b,Amplifier:1b,Duration:1,ShowIcon:0b}]}
execute if score @s counter_4 matches 3 as @e[tag=106_perforate_hit] at @s run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"パーフォレイトショット","italic": false}',Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:1b,Duration:1,ShowIcon:0b},{Id:7b,Amplifier:1b,Duration:1,ShowIcon:0b}]}
execute if score @s counter_4 matches 4 as @e[tag=106_perforate_hit] at @s run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"パーフォレイトショット","italic": false}',Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowIcon:0b},{Id:7b,Amplifier:1b,Duration:1,ShowIcon:0b}]}
execute if score @s counter_4 matches 5 as @e[tag=106_perforate_hit] at @s run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"パーフォレイトショット","italic": false}',Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowIcon:0b}]}
execute if score @s counter_4 matches 6 as @e[tag=106_perforate_hit] at @s run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"パーフォレイトショット","italic": false}',Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:1b,Duration:1,ShowIcon:0b},{Id:7b,Amplifier:2b,Duration:1,ShowIcon:0b}]}

tag @e[tag=106_perforate_hit] remove 106_perforate_hit