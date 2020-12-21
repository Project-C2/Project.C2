execute at @e[tag=hit,distance=..1.4] run summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["this"],Particle:"sweep_attack",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5,DurationOnUse:0,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b}],CustomName:'{"text":"心斬","color":"aqua","bold":true}'}
execute at @e[tag=hit,distance=1.4..2.7] run summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["this"],Particle:"sweep_attack",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5,DurationOnUse:0,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b}],CustomName:'{"text":"心斬","color":"aqua","bold":true}'}
execute at @e[tag=hit,distance=2.7..4.5] run summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["this"],Particle:"sweep_attack",Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5,DurationOnUse:0,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b}],CustomName:'{"text":"心斬","color":"aqua","bold":true}'}
tag @s add user
execute as @e[type=area_effect_cloud,tag=this] run data modify entity @s Owner set from entity @a[tag=user,limit=1] UUID
tag @s remove user
scoreboard players add @s CT1 100
tag @e[tag=this] remove this
tag @e[tag=hit] remove hit
