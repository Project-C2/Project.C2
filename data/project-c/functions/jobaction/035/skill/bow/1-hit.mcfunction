execute if entity @s[tag=035-1ShotR] at @e[tag=035-1hit] run summon area_effect_cloud ~ ~1 ~ {CustomName:"{\"text\":\"299792458[m/s]\",\"color\":\"red\"}",ShotParticle:"",Radius:0.4f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7,Amplifier:1,Duration:1}]}
execute if entity @s[tag=035-1ShotB] at @e[tag=035-1hit] run summon area_effect_cloud ~ ~1 ~ {CustomName:"{\"text\":\"299792458[m/s]\",\"color\":\"blue\"}",ShotParticle:"",Radius:0.4f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7,Amplifier:1,Duration:1}]}
tag @e[tag=035-1hit] remove 035-1hit
kill @s