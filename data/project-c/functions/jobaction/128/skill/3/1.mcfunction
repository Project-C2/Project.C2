scoreboard players add @s counter 1
execute if block ^ ^ ^1 #project-c:wancomatter/like_air run teleport @s ^ ^ ^1 ~ ~
execute if block ^ ^ ^1 #project-c:wancomatter/like_air run teleport @s ^ ^ ^1 ~ ~
teleport @a[scores={jobNumber=128,CT3=..1199},limit=1,sort=nearest] ^ ^ ^ ~ ~
effect give @a[scores={jobNumber=128,CT3=..1199},limit=1,sort=nearest,distance=0..3] resistance 1 5 true
effect give @a[scores={jobNumber=128,CT3=..1199},limit=1,sort=nearest,distance=0..3] slow_falling 1 0 true

particle minecraft:dust 0.5 0.5 1 3 ~ ~ ~ 0.3 0.3 0.3 0 3

execute if entity @s[tag=128-EviscerateR,scores={counter=4..}] if entity @e[tag=Battle,distance=..3,team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["128-EviscerateS","128-EviscerateSR"],Marker:1b}
execute if entity @s[tag=128-EviscerateB,scores={counter=4..}] if entity @e[tag=Battle,distance=..3,team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["128-EviscerateS","128-EviscerateSB"],Marker:1b}

execute if entity @s[scores={counter=9..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:8b,Duration:5,ShowParticles:0b}]}
execute if entity @s[scores={counter=9..}] run effect clear @a[scores={jobNumber=128,CT3=..1199},limit=1,sort=nearest,distance=0..3] resistance
kill @s[scores={counter=9..}]

execute if entity @s[scores={counter=4..}] if entity @e[tag=128-EviscerateS,distance=..3] run teleport @e[limit=1,sort=nearest,tag=128-EviscerateS] @s
execute if entity @s[scores={counter=4..}] if entity @e[tag=128-EviscerateS,distance=..3] run data merge block -96 64 -11 {auto:1b}
execute if entity @s[scores={counter=4..}] if entity @e[tag=128-EviscerateS,distance=..3] run kill @s
