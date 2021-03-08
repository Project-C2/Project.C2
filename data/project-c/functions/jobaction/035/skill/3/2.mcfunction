tag @s add 035dummy
scoreboard players operation @s counter_3 = @s counter_2
execute if score @s counter_3 matches 256.. run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 2.0 1
execute if score @s counter_3 matches 256.. run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 1.6 0.88
execute if score @s counter_3 matches 128..255 run playsound minecraft:item.trident.riptide_2 master @a ~ ~ ~ 1.2 0.75
execute if score @s counter_3 matches 1..127 run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 0.8 0.5
#ダメージ判定(視線判定法使用)
execute if score @s counter_3 matches 384.. if entity @s[tag=035-animaShotR] rotated as @s as @e[distance=..4.5,team=!Red,team=!RedDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.5] run tag @s add 035-hit1
execute if score @s counter_3 matches 384.. if entity @s[tag=035-animaShotB] rotated as @s as @e[distance=..4.5,team=!Blue,team=!BlueDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.5] run tag @s add 035-hit1
execute if score @s counter_3 matches 384.. if entity @s[tag=035-animaShotR] rotated as @s as @e[distance=..4.5,team=!Red,team=!RedDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=1.5..3.0] run tag @s add 035-hit2
execute if score @s counter_3 matches 384.. if entity @s[tag=035-animaShotB] rotated as @s as @e[distance=..4.5,team=!Blue,team=!BlueDummy] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=1.5..3.0] run tag @s add 035-hit2
execute if entity @e[tag=035-hit1,limit=1] as @e[tag=035-hit1] run tp @s @s
execute if entity @e[tag=035-hit1,limit=1] as @e[tag=035-hit1] run effect clear @s minecraft:absorption
execute if entity @e[tag=035-hit1,limit=1] as @e[tag=035-hit1,tag=Battle] at @s run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"アニマディヴァイン","color":"gold","underlined":true}',Particle:"",Radius:0.7f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:22b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b},{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b},{Id:7b,Amplifier:4b,Duration:1,ShowParticles:0b,ShowIcon:0b},{Id:24b,Amplifier:0b,Duration:100,ShowParticles:0b,ShowIcon:1b}]}
execute if entity @e[tag=035-hit2,limit=1] as @e[tag=035-hit2] run tp @s @s
execute if entity @e[tag=035-hit2,limit=1] as @e[tag=035-hit2,tag=Battle] at @s run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"アニマディヴァイン","color":"gold","underlined":true}',Particle:"",Radius:0.7f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b},{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b,ShowIcon:0b},{Id:24b,Amplifier:0b,Duration:100,ShowParticles:0b,ShowIcon:1b}]}
execute if entity @e[tag=035-hit1,limit=1] run tag @e[tag=035-hit1] remove 035-hit1
execute if entity @e[tag=035-hit2,limit=1] run tag @e[tag=035-hit2] remove 035-hit2
execute if score @s counter_3 matches 256..383 if entity @s[tag=035-animaShotR] as @e[distance=..3.5,team=!Red,team=!RedDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.35] run effect give @s minecraft:instant_damage 1 2
execute if score @s counter_3 matches 256..383 if entity @s[tag=035-animaShotB] as @e[distance=..3.5,team=!Blue,team=!BlueDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.35] run effect give @s minecraft:instant_damage 1 2
execute if score @s counter_3 matches 256..383 if entity @s[tag=035-animaShotR] as @e[distance=..3.5,team=!Red,team=!RedDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=1.35..2.4] run effect give @s minecraft:instant_damage 1 1
execute if score @s counter_3 matches 256..383 if entity @s[tag=035-animaShotB] as @e[distance=..3.5,team=!Blue,team=!BlueDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=1.35..2.4] run effect give @s minecraft:instant_damage 1 1
execute if score @s counter_3 matches 128..255 if entity @s[tag=035-animaShotR] as @e[distance=..2.5,team=!Red,team=!RedDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.2] run effect give @s minecraft:absorption 1 0
execute if score @s counter_3 matches 128..255 if entity @s[tag=035-animaShotB] as @e[distance=..2.5,team=!Blue,team=!BlueDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.2] run effect give @s minecraft:absorption 1 0
execute if score @s counter_3 matches 128..255 if entity @s[tag=035-animaShotR] as @e[distance=..2.5,team=!Red,team=!RedDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.2] run effect give @s minecraft:instant_damage 1 2
execute if score @s counter_3 matches 128..255 if entity @s[tag=035-animaShotB] as @e[distance=..2.5,team=!Blue,team=!BlueDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.2] run effect give @s minecraft:instant_damage 1 2
execute if score @s counter_3 matches 128..255 if entity @s[tag=035-animaShotR] as @e[distance=..2.5,team=!Red,team=!RedDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=1.2..1.8] run effect give @s minecraft:resistance 1 0
execute if score @s counter_3 matches 128..255 if entity @s[tag=035-animaShotB] as @e[distance=..2.5,team=!Blue,team=!BlueDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=1.2..1.8] run effect give @s minecraft:resistance 1 0
execute if score @s counter_3 matches 128..255 if entity @s[tag=035-animaShotR] as @e[distance=..2.5,team=!Red,team=!RedDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=1.2..1.8] run effect give @s minecraft:instant_damage 1 1
execute if score @s counter_3 matches 128..255 if entity @s[tag=035-animaShotB] as @e[distance=..2.5,team=!Blue,team=!BlueDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=1.2..1.8] run effect give @s minecraft:instant_damage 1 1
execute if score @s counter_3 matches ..127 if entity @s[tag=035-animaShotR] as @e[distance=..1.5,team=!Red,team=!RedDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.05] run effect give @s minecraft:instant_damage 1 1
execute if score @s counter_3 matches ..127 if entity @s[tag=035-animaShotB] as @e[distance=..1.5,team=!Blue,team=!BlueDummy,tag=Battle] positioned as @s positioned ^ ^ ^-50 facing entity @e[tag=035dummy,limit=1] feet positioned ^ ^ ^50 if entity @s[distance=..1.05] run effect give @s minecraft:instant_damage 1 1
tag @s remove 035dummy

#パーティクル演出等
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
execute if score @s counter_3 matches 96.. run particle minecraft:explosion ^ ^ ^0.96 0 0 0 0 1 force @a
execute if score @s counter_3 matches 192.. run particle minecraft:explosion ^ ^ ^1.92 0 0 0 0 1 force @a
execute if score @s counter_3 matches 288.. run particle minecraft:explosion ^ ^ ^2.88 0 0 0 0 1 force @a
execute if score @s counter_3 matches 384.. run particle minecraft:explosion ^ ^ ^3.84 0 0 0 0 1 force @a
execute if score @s counter_3 matches 384.. run particle minecraft:sweep_attack ~ ~ ~ 2 2 2 1 4 force @a
execute if score @s counter_3 matches 384.. run particle minecraft:sweep_attack ~ ~ ~ 2 2 2 1 16 normal @a
execute if score @s counter_3 matches 256.. run particle minecraft:poof ~ ~ ~ 1.5 1.5 1.5 0 4 force @a
execute if score @s counter_3 matches 256.. run particle minecraft:poof ~ ~ ~ 1.5 1.5 1.5 0 16 normal @a
execute if score @s counter_3 matches 128..255 run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0 8 force @a
execute if score @s counter_3 matches 128..255 run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0 32 normal @a

#tp処理
execute if score @s counter_3 matches 256.. at @s run tp @s ^ ^ ^2.56
execute if score @s counter_3 matches 256.. at @s unless block ^ ^ ^0.64 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 256.. at @s unless block ^ ^ ^1.28 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 256.. at @s unless block ^ ^ ^1.92 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 256.. at @s unless block ^ ^ ^2.56 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 256.. run scoreboard players remove @s counter_3 256
execute if score @s counter_3 matches 128.. at @s run tp @s ^ ^ ^1.28
execute if score @s counter_3 matches 128.. at @s unless block ^ ^ ^0.64 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 128.. at @s unless block ^ ^ ^1.28 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 128.. run scoreboard players remove @s counter_3 128
execute if score @s counter_3 matches 64.. at @s run tp @s ^ ^ ^0.64
execute if score @s counter_3 matches 64.. at @s unless block ^ ^ ^0.64 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 64.. run scoreboard players remove @s counter_3 064
execute if score @s counter_3 matches 32.. at @s run tp @s ^ ^ ^0.32
execute if score @s counter_3 matches 32.. at @s unless block ^ ^ ^0.32 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 32.. run scoreboard players remove @s counter_3 032
execute if score @s counter_3 matches 16.. at @s run tp @s ^ ^ ^0.16
execute if score @s counter_3 matches 16.. at @s unless block ^ ^ ^0.16 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 16.. run scoreboard players remove @s counter_3 016
execute if score @s counter_3 matches 8.. at @s run tp @s ^ ^ ^0.08
execute if score @s counter_3 matches 8.. at @s unless block ^ ^ ^0.08 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 8.. run scoreboard players remove @s counter_3 008
execute if score @s counter_3 matches 4.. at @s run tp @s ^ ^ ^0.04
execute if score @s counter_3 matches 4.. at @s unless block ^ ^ ^0.04 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 4.. run scoreboard players remove @s counter_3 004
execute if score @s counter_3 matches 2.. at @s run tp @s ^ ^ ^0.02
execute if score @s counter_3 matches 2.. at @s unless block ^ ^ ^0.02 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 2.. run scoreboard players remove @s counter_3 002
execute if score @s counter_3 matches 1.. at @s run tp @s ^ ^ ^0.01
execute if score @s counter_3 matches 1.. at @s unless block ^ ^ ^0.01 #project-c:wancomatter/like_air run kill @s
execute if score @s counter_3 matches 1.. run scoreboard players remove @s counter_3 001
scoreboard players add @s counter 1
execute if score @s counter matches 35.. run kill @s