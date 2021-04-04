scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1060

scoreboard players set @s counter_1 1

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1
tp @s @s
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:10b,Duration:6,ShowParticles:0b}]}
execute rotated ~ 0 run summon area_effect_cloud ^ ^ ^-0.35 {Tags:[Re_D.Jump_Slime],Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]}]}

execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["128-Whirlwind","128-WhirlwindR"],Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["128-Whirlwind","128-WhirlwindB"],Marker:1b}

teleport @e[limit=1,sort=nearest,tag=128-Whirlwind] ^ ^1.5 ^ ~90 ~

particle minecraft:firework ~ ~1 ~ 0 0 0 0.1 10 force

tag @s remove SkillReady1
execute as @e[tag=128-Whirlwind] at @s run function project-c:jobaction/128/skill/1/2