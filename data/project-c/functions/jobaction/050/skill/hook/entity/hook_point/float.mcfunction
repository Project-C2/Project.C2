# 距離によって違う強さの浮遊
    execute if entity @s[distance=..30] run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:20b,Duration:2,ShowParticles:0b}]}
    execute if entity @s[distance=30..60] run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:10b,Duration:2,ShowParticles:0b}]}
    execute if entity @s[distance=60..90] run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:5b,Duration:2,ShowParticles:0b}]}