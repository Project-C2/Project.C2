execute store result score #123- counter run data get entity @s Health 100
execute if score @s ScoreToHealth matches 1.. run scoreboard players operation #123- counter = @s ScoreToHealth

execute store result score #123- counter run data get entity @s Health 100
execute unless score #123- counter > #123- subcounter run summon area_effect_cloud ~ ~0.3 ~ {Tags:["first"],CustomName:'{"text":"CrossFire-十字砲火","color":"dark_gray"}',Particle:"dust 0 0 0 0",Radius:0.5f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
execute if score #123- counter > #123- subcounter run scoreboard players operation @s ScoreToHealth = #123- counter
execute if score #123- counter > #123- subcounter run scoreboard players operation @s ScoreToHealth -= #123- subcounter
execute if score #123- counter > #123- subcounter if data entity @s {HurtTime:0s} run summon area_effect_cloud ~ ~0.3 ~ {Tags:["first"],CustomName:'{"text":"CrossFire-十字砲火","color":"dark_gray"}',Particle:"dust 0 0 0 0",Radius:0.5f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:11b,Amplifier:4b,Duration:1,ShowParticles:1b,ShowIcon:1b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
execute if entity @e[tag=first,limit=1] run data modify entity @e[tag=first,limit=1] Owner set from entity @e[tag=123-3,limit=1] Owner

