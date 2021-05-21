execute as @a[tag=046-3-1b] at @s run tp @s @s
scoreboard players add @a[tag=046-3-1b] counter_6 1

execute if entity @e[tag=046-3-1b,scores={counter_6=1..},limit=1,team=Red] as @e[tag=046-3-1b,scores={counter_6=1..},team=Red] at @s as @e[tag=!Stable,type=!armor_stand,distance=..10,team=!Red] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["046-3-TP","046-3-TPR"]}
execute if entity @e[tag=046-3-1b,scores={counter_6=1..},limit=1,team=Blue] as @e[tag=046-3-1b,scores={counter_6=1..},team=Blue] at @s as @e[tag=!Stable,type=!armor_stand,distance=..10,team=!Blue] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["046-3-TP","046-3-TPB"]}

execute if entity @e[tag=046-3-TP,tag=046-3-TPR,limit=1] as @e[tag=046-3-TP,tag=046-3-TPR] at @s facing entity @e[tag=046-3-1b,limit=1,team=Red] feet if block ^ ^ ^0.5 #project-c:wancomatter/like_air positioned ^ ^ ^0.2 rotated as @s run tp @e[tag=!Stable,type=!armor_stand,limit=1,sort=nearest,team=!Red] ~ ~ ~
execute if entity @e[tag=046-3-TP,tag=046-3-TPB,limit=1] as @e[tag=046-3-TP,tag=046-3-TPB] at @s facing entity @e[tag=046-3-1b,limit=1,team=Blue] feet if block ^ ^ ^0.5 #project-c:wancomatter/like_air positioned ^ ^ ^0.2 rotated as @s run tp @e[tag=!Stable,type=!armor_stand,limit=1,sort=nearest,team=!Blue] ~ ~ ~

execute if entity @e[tag=046-3-TP,tag=046-3-TPR,limit=1] as @e[tag=046-3-TP,tag=046-3-TPR] at @s as @e[tag=!Stable,type=!armor_stand,limit=1,sort=nearest,team=!Red] at @s run effect give @s minecraft:levitation 1 0 false
execute if entity @e[tag=046-3-TP,tag=046-3-TPB,limit=1] as @e[tag=046-3-TP,tag=046-3-TPB] at @s as @e[tag=!Stable,type=!armor_stand,limit=1,sort=nearest,team=!Blue] at @s run effect give @s minecraft:levitation 1 0 false

execute if entity @e[tag=046-3-TP,limit=1] as @e[tag=046-3-TP] at @s run kill @s
execute if entity @e[tag=046-3-1b,scores={counter_6=1..},limit=1] as @e[tag=046-3-1b,scores={counter_6=1..}] at @s run particle minecraft:enchant ~ ~1.5 ~ 0.1 0.5 0.1 1 1000

execute if entity @e[tag=046-3-1b,scores={counter_6=1..},limit=1] as @e[tag=046-3-1b,scores={counter_6=1..}] at @s run function project-c:jobaction/046/skill/3/circle
execute if entity @e[tag=046-3-1b,scores={counter_6=1..},limit=1] as @e[tag=046-3-1b,scores={counter_6=1..}] at @s run function project-c:jobaction/046/skill/3/sound

execute if entity @e[tag=046-3-1b,scores={counter_6=50..},limit=1,team=Red] as @e[tag=046-3-1b,scores={counter_6=50..},team=Red] at @s as @e[distance=..5,team=Red] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:2,Age:-1,WaitTime:-1,Effects:[{Id:11b,Amplifier:127b,Duration:2}]}
execute if entity @e[tag=046-3-1b,scores={counter_6=50..},limit=1,team=Red] as @e[tag=046-3-1b,scores={counter_6=50..},team=Red] at @s run summon creeper ~ ~ ~ {Team:"Red",ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"フェイズシフト"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:26b,Amplifier:127b,Duration:1,ShowParticles:0b}]}

execute if entity @e[tag=046-3-1b,scores={counter_6=50..},limit=1,team=Blue] as @e[tag=046-3-1b,scores={counter_6=50..},team=Blue] at @s as @e[distance=..5,team=Blue] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:2,Age:-1,WaitTime:-1,Effects:[{Id:11b,Amplifier:127b,Duration:2}]}
execute if entity @e[tag=046-3-1b,scores={counter_6=50..},limit=1,team=Blue] as @e[tag=046-3-1b,scores={counter_6=50..},team=Blue] at @s run summon creeper ~ ~ ~ {Team:"Blue",ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"フェイズシフト"}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:26b,Amplifier:127b,Duration:1,ShowParticles:0b}]}

execute if entity @e[tag=046-3-1b,scores={counter_6=50..},limit=1,team=Blue] as @e[tag=046-3-1b,scores={counter_6=50..},team=Blue] at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1

execute if entity @e[tag=046-3-1b,scores={counter_6=50..},limit=1] as @e[tag=046-3-1b,scores={counter_6=50..}] at @s run scoreboard players set @s counter_4 0
execute if entity @e[tag=046-3-1b,scores={counter_6=50..},limit=1] as @e[tag=046-3-1b,scores={counter_6=50..}] at @s run tag @e[tag=046-3-1b,scores={counter_6=50..}] add 046-3-reset
execute if entity @e[tag=046-3-reset,limit=1] as @e[tag=046-3-reset] at @s run tag @e[tag=046-3-reset] remove 046-3-1b
execute if entity @e[tag=046-3-reset,limit=1] as @e[tag=046-3-reset] at @s run scoreboard players reset @s counter_6
tag @a[tag=046-3-reset] remove 046-3-reset