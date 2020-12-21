scoreboard players set @s CT3 900
scoreboard players set @s counter_3 1
kill @e[type=snowball,limit=1]

playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 1
tp @s @s
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:16b,Duration:6,ShowParticles:0b}]}
execute rotated ~ 0 run summon area_effect_cloud ^ ^ ^-0.35 {Tags:[Re_D.Jump_Slime],Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]}]}
effect give @s resistance 1 4

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3