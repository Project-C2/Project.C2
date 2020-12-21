summon area_effect_cloud ~ ~0.3 ~ {CustomName:"{\"text\":\"ブラッドカクテル\",\"color\":\"red\"}",Particle:"flame",Radius:2.5f,WaitTime:1,Duration:300,Age:4,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0
particle flame ~ ~ ~ 0 0 0 1 60
kill @s