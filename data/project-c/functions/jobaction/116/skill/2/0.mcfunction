scoreboard players set @s CT2 1000

tp @s @s
scoreboard players set @s counter_2 1
scoreboard players set @s counter_4 12
function project-c:jobaction/116/skill/3/summon
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=this] ~ ~0.2 ~
tag @e[tag=this] remove this

attribute @s minecraft:generic.knockback_resistance modifier add 116-116-116-116-116 116_3 1 add
tag @s add 116knockback_resist
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Particle:"enchanted_hit",Duration:5,Age:4,WaitTime:1,Radius:1.0f,Effects:[{Id:14b,Amplifier:4b,Duration:3,ShowIcon:0b},{Id:28b,Amplifier:0b,Duration:20}]}


schedule function project-c:jobaction/116/skill/3/stopsound 2t replace

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
