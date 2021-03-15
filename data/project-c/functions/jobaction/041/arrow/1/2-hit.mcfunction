execute if entity @s[team=Red] at @e[tag=Battle,team=Blue,distance=..1.3] run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"カーディナルフェザー","color":"red"}',Radius:0.5f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}]}
execute if entity @s[team=Blue] at @e[tag=Battle,team=Red,distance=..1.3] run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"カーディナルフェザー","color":"blue"}',Radius:0.5f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}]}
particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 normal @a
playsound minecraft:entity.parrot.death master @a ~ ~ ~ 1.5 1
playsound minecraft:entity.parrot.death master @a ~ ~ ~ 1.5 1
particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.5 0.5 0.5 1 51 normal @a
particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.5 0.5 0.5 1 17 force @a
kill @s