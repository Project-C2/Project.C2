scoreboard players set @s CT2 1000

tp @s @s
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Particle:"enchanted_hit",Duration:5,Age:4,WaitTime:1,Radius:1.0f,Effects:[{Id:11b,Amplifier:4b,Duration:1,ShowIcon:0b},{Id:28b,Amplifier:0b,Duration:220}]}
scoreboard players set @s counter_2 1
scoreboard players set @s counter_4 4
function project-c:jobaction/116/skill/3/summon
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=this] ~ ~0.2 ~
tag @e[tag=this] remove this

attribute @s minecraft:generic.knockback_resistance modifier add 116-116-116-116-117 116_2 1 add
tag @s add 116knockback_resist2


schedule function project-c:jobaction/116/skill/2/stopsound 1t replace

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
