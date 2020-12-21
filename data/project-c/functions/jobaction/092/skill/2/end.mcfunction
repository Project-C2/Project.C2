particle minecraft:explosion ~ ~ ~ 0.6 0.6 0.6 1 8 normal @a
particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 1 3 force @a
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 1 8 normal @a
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 1 2 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 0.5

execute if entity @s[team=RedDummy] run tag @e[tag=Battle,team=!Red,distance=..2.5] add hit
execute if entity @s[team=BlueDummy] run tag @e[tag=Battle,team=!Blue,distance=..2.5] add hit

execute at @e[tag=hit] run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"タワー・オブ・ストーンヘブン","color":"gold","bold":true}',Particle:"cloud",Radius:0.7f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
tag @e[tag=hit] remove hit

kill @s
