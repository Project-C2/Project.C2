#ダメージ処理等
execute if block ~ ~-0.3 ~ #project-c:wancomatter/like_air if block ~ ~-1.3 ~ #project-c:wancomatter/like_air if block ~ ~-2.3 ~ #project-c:wancomatter/like_air run tag @s add 054-0hit2
execute if entity @s[tag=!054-0hit2] run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"エアブラスター","color":"green"}',Particle:'',Radius:0.67f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
execute if entity @s[tag=054-0hit2] run tp @s @s
execute if entity @s[tag=054-0hit2] run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"エアブラスター","color":"green"}',Particle:'',Radius:0.5f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b},{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
#hit音
execute if entity @s[tag=054-0hit] as @a[scores={jobNumber=54}] if score @s playerNumber = @e[tag=054dummy,limit=1] playerNumber run tag @s add user
execute as @a[tag=user] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~-20 ~ 0 0.5 0.5
execute if entity @s[tag=054-0hit2] as @a[tag=user] at @s run playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~-20 ~ 0 1 0.6
tag @a[tag=user] remove user
#タグ除去
execute if entity @s[tag=054-0hit2] run tag @s remove 054-0hit2
tag @s remove 054-0hit
