#スキル8
execute as @a[tag=106_soul_curse_hit] if entity @s[gamemode=spectator] run tag @s remove 106_soul_curse_hit


execute if entity @s[scores={counter_2=1..2}] as @e[tag=106_soul_curse_hit] at @s run summon area_effect_cloud ~ ~1 ~ {Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:2b,Duration:1,ShowIcon:0b},{Id:7b,Amplifier:0b,Duration:1,ShowIcon:0b}]}
execute if entity @s[scores={counter_2=3..4}] as @e[tag=106_soul_curse_hit] at @s run summon area_effect_cloud ~ ~1 ~ {Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:1b,Duration:1,ShowIcon:0b},{Id:7b,Amplifier:0b,Duration:1,ShowIcon:0b}]}
execute if entity @s[scores={counter_2=5..6}] as @e[tag=106_soul_curse_hit] at @s run summon area_effect_cloud ~ ~1 ~ {Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowIcon:0b},{Id:7b,Amplifier:0b,Duration:1,ShowIcon:0b}]}
execute if entity @s[scores={counter_2=7..}] as @e[tag=106_soul_curse_hit] at @s run summon area_effect_cloud ~ ~1 ~ {Particle:"",Radius:0.3f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowIcon:0b}]}


tag @e[tag=106_soul_curse_hit] remove 106_soul_curse_hit