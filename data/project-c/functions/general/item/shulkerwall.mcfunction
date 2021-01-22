execute as @e[tag=ShulkerWall] at @s run summon shulker ~ ~ ~ {Silent:0b,NoAI:1b,AttachFace:0b,Color:16b,ActiveEffects:[{Id:20b,Amplifier:2b,Duration:1200,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:14}]}
execute as @e[tag=ShulkerWall] at @s run summon shulker ~ ~1 ~ {Silent:0b,NoAI:1b,AttachFace:0b,Color:16b,ActiveEffects:[{Id:20b,Amplifier:2b,Duration:1200,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:14}]}

kill @e[tag=ShulkerWall]