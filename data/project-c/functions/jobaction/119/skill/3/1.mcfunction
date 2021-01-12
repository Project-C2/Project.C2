scoreboard players add @s counter_4 1
execute if score @s counter_4 matches ..19 run summon minecraft:area_effect_cloud ~ ~0.2 ~ {Effects:[{Id:2b,Amplifier:6b,Duration:2,Ambient:1b,ShowParticles:0b,ShowIcon:1b}],Duration:5,Age:4,WaitTime:1,Radius:0.4f,Particle:"minecraft:dust 0 0 0 0"}
execute if data entity @s {HurtTime:9s} run function project-c:jobaction/119/skill/3/fail
execute if score @s counter_4 matches 20.. run function project-c:jobaction/119/skill/3/2
