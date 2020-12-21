scoreboard players set @s CT1 1000
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 10
#scoreboard players set @s counter_1 1

tp @s ~ ~ ~ ~ ~
tp @s @s
tag @s add 099-S1-P3-tp
execute rotated ~ 0 positioned ^ ^ ^0.09 run summon area_effect_cloud ~ ~1 ~ {Particle:"",Radius:0.1f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:25b,Amplifier:13b,Duration:6,ShowIcon:0b}]}
execute rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^0.5 ^-0.1 {Particle:"",Duration:4,Passengers:[{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]},{id:"minecraft:slime",DeathTime:16s,Health:0f,Size:0,Attributes:[{Name:generic.maxHealth,Base:0}]}]}

playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.8
particle minecraft:cloud ~ ~ ~ 0 0 0 0.3 50
#effect give @s resistance 1 4

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1