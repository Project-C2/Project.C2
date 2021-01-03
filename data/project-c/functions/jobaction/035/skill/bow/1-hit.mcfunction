execute if entity @s[tag=035-1ShotR] at @e[tag=035-1hit] run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"299792458[m/s]","color":"red"}',Particle:"instant_effect",Radius:0.4f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
execute if entity @s[tag=035-1ShotB] at @e[tag=035-1hit] run summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"299792458[m/s]","color":"blue"}',Particle:"instant_effect",Radius:0.4f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:1b,Duration:1}]}
execute if entity @e[tag=035-1hit,tag=!035-first,limit=1] as @a[tag=035-dummy-bow] at @s run playsound minecraft:entity.villager.hurt master @s ~ -20 ~ 0 2 1
execute if entity @e[tag=035-1hit,tag=!035-first,limit=1] as @a[tag=035-dummy-bow] at @s run playsound minecraft:entity.villager.hurt master @s ~ -20 ~ 0 2 1
execute if entity @e[tag=035-1hit,tag=!035-first,limit=1] run tag @a[tag=035-dummy-bow] remove 035-dummy-bow
tag @e[tag=035-1hit] remove 035-1hit
kill @s
