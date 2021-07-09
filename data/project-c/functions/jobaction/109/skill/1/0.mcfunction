scoreboard players set @s CT1 1060
item replace entity @s hotbar.1 with minecraft:compass{display:{Name:'"CoolTime"'}} 7
particle minecraft:poof ~ ~0.1 ~ 0.15 0.15 0.15 0.1 100 normal @a
particle minecraft:poof ~ ~ ~ 0 0 0 0.1 25 force @a
playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1.2 0.9
playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.6 0.9

playsound minecraft:entity.iron_golem.attack player @a ~ ~ ~ 1.2 1.5
tp @s @s
summon minecraft:area_effect_cloud ~ ~1 ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:12b,Duration:4,ShowParticles:0b}]}
execute rotated ~ 0 run summon area_effect_cloud ^ ^ ^-0.1 {Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:14,NoAI:1b,Health:0f}]}

scoreboard players set @s counter_2 1
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
