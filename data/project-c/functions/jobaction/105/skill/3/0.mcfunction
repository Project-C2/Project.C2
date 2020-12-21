scoreboard players set @s CT3 1160
replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 2
scoreboard players add @s counter_5 1
execute if score @s counter_5 matches 2.. run scoreboard players set @s counter_5 0

execute if score @s counter_5 matches 0 run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.3 200 normal @a
execute if score @s counter_5 matches 0 run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.3 50 force @a
execute if score @s counter_5 matches 1 run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.3 200 normal @a
execute if score @s counter_5 matches 1 run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.3 50 force @a
playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 1.2 0.9

#myチームに他プレイヤーがいる時にセリフ吐くやつ(5秒毎)
execute unless entity @s[scores={counter=1..}] run tag @s add 105_3
execute if entity @s[team=Red,tag=105_3] if entity @a[team=Red,tag=!105_3,scores={jobNumber=105},limit=1] run say 祭りだ！ 祭りだ！
execute if entity @s[team=Blue,tag=105_3] if entity @a[team=Blue,tag=!105_3,scores={jobNumber=105},limit=1] run say 祭りだ！ 祭りだ！
execute if entity @s[tag=105_3] run scoreboard players set @s counter 200
execute if entity @s[tag=105_3] run tag @s remove 105_3

particle minecraft:poof ~ ~ ~ 0 0 0 0.1 5
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
playsound minecraft:entity.iron_golem.attack player @a ~ ~ ~ 1.5 1.5
tp @s @s
summon minecraft:area_effect_cloud ~ ~1 ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:12b,Duration:5,ShowParticles:0b}],Tags:["105_3"]}
execute as @e[tag=105_3] store result entity @s Rotation[0] float 1 run data get entity @s UUID[0] 0.0001
execute rotated as @e[tag=105_3] run summon area_effect_cloud ^ ^ ^-0.35 {Tags:[Re_D.Jump_Slime],Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]}]}
tag @e[tag=105_3] remove 105_3

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
