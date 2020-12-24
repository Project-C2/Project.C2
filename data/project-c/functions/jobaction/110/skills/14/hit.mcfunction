#ダメージ処理
execute if block ~ ~-0.3 ~ #project-c:wancomatter/like_air if block ~ ~-1.3 ~ #project-c:wancomatter/like_air if block ~ ~-2.3 ~ #project-c:wancomatter/like_air run tag @s add hit2
execute if entity @s[tag=!hit2] run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"対空魔砲","color":"gray"}',Particle:'',Radius:0.67f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
execute if entity @s[tag=hit2] run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"対空魔砲","color":"gray"}',Particle:'',Radius:0.5f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b},{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
execute if entity @s[tag=hit2] run tp @s @s

#hit音
execute as @a[tag=user] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~-20 ~ 0 0.5 0.5
execute if entity @s[tag=hit2] as @a[tag=user] at @s run playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~-20 ~ 0 1 0.6
#後処理
execute if entity @s[tag=hit2] run tag @s remove hit2
tag @s remove hit
scoreboard players set @e[tag=110dummy] counter 20