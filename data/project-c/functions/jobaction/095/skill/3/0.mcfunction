scoreboard players set @s CT3 700
replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 25

playsound minecraft:block.portal.travel master @a ~ ~ ~ 0.5 2
particle minecraft:explosion_emitter ^ ^ ^2 0 0 0 1 1 force @a
particle minecraft:explosion_emitter ^ ^ ^2 0.5 0.5 0.5 1 4 normal @a

execute as @e[tag=095-3] if score @s playerNumber = @a[limit=1,sort=nearest,distance=..1] playerNumber run data merge entity @s {SaddleItem:{Count:0b},ArmorItem:{Count:0b},Health:0.0f}

summon turtle ~ ~ ~ {Invulnerable:1b,Tags:["Battle","095setMotion","095set","095-3"],Silent:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Attributes:[{Name:"minecraft:generic.follow_range",Base:0},{Name:"minecraft:generic.movement_speed",Base:0},{Name:"minecraft:generic.attack_damage",Base:0}],Passengers:[{id:"minecraft:horse",Attributes:[{Name:"generic.max_health",Base:8.0d},{Name:"generic.movement_speed",Base:0.01d}],Health:7.0f,SaddleItem:{id:"minecraft:saddle",Count:1b},Tags:["095Hippoglyphe","095set","095-3","095-3noInv"],Tame:1b,NoAI:1b,NoGravity:1b,Silent:1b},{id:"minecraft:silverfish",Invulnerable:1b,NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["Battle","095set","095-3","095s1"],Passengers:[{id:"minecraft:silverfish",Invulnerable:1b,NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["Battle","095set","095-3","095s2"],Passengers:[{id:"minecraft:silverfish",Invulnerable:1b,NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["Battle","095set","095-3","095s3"],Passengers:[{id:"minecraft:phantom",Invulnerable:1b,Silent:1b,Size:0,NoAI:1b,ActiveEffects:[{Id:12b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["Battle","095set","095-3","095-3wing","095-3noInv"]}]}]}]}]}
execute rotated ~ 0 positioned ^ ^ ^1.5 rotated as @s run tp @e[tag=095set,type=turtle] ~ ~ ~ ~ ~
execute as @e[tag=095set,type=horse] positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=095set,type=phantom] positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[team=Red] run team join Red @e[tag=095set,type=!turtle,type=!silverfish]
execute if entity @s[team=Red] run team join RedDummy @e[tag=095set,type=turtle]
execute if entity @s[team=Red] run team join RedDummy @e[tag=095set,type=silverfish]
execute if entity @s[team=Blue] run team join Blue @e[tag=095set,type=!turtle,type=!silverfish]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=095set,type=turtle]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=095set,type=silverfish]
scoreboard players set @e[tag=095set,tag=095-3noInv] subcounter 3
scoreboard players set @e[tag=095set] counter_5 520
scoreboard players set @e[tag=095set,tag=095Hippoglyphe] sneak 100
scoreboard players operation @e[tag=095set] playerNumber = @s playerNumber
tag @e[tag=095set] remove 095set


data merge block 39 2 89 {auto:1b}
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3

