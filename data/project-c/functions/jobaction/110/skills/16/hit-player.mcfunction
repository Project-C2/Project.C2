execute store result score #110- counter run data get entity @s Health 100
execute unless score #110- counter > #110- subcounter run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"水鉄砲","color":"aqua"}',Particle:"enchanted_hit",Radius:0.7f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
execute if score #110- counter > #110- subcounter run scoreboard players operation @s ScoreToHealth = #110- counter
execute if score #110- counter > #110- subcounter run scoreboard players operation @s ScoreToHealth -= #110- subcounter
execute if score #110- counter > #110- subcounter if data entity @s {HurtTime:0s} run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"水鉄砲","color":"aqua"}',Particle:"enchanted_hit",Radius:0.7f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:4b,Duration:1,ShowParticles:1b,ShowIcon:1b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
