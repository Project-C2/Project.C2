scoreboard players add @s counter 1
execute if entity @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 2

execute as @s[tag=091-2SpawnerR] run summon shulker ~ ~ ~ {AttachFace:0b,Color:14b,Attributes:[{Name:generic.maxHealth,Base:40}],Health:15.0f,NoAI:1b,Silent:1b,Team:"Red",Tags:["Battle","091StoneR","091Stone"]}

execute as @s[tag=091-2SpawnerB] run summon shulker ~ ~ ~ {AttachFace:0b,Color:11b,Attributes:[{Name:generic.maxHealth,Base:40}],Health:15.0f,NoAI:1b,Silent:1b,Team:"Blue",Tags:["Battle","091StoneB","091Stone"]}

execute as @s[tag=091-2SpawnerR] run summon shulker ~ ~1 ~ {AttachFace:0b,Color:14b,Attributes:[{Name:generic.maxHealth,Base:40}],Health:15.0f,NoAI:1b,Silent:1b,Team:"Red",Tags:["Battle","091StoneR","091Stone"]}

execute as @s[tag=091-2SpawnerB] run summon shulker ~ ~1 ~ {AttachFace:0b,Color:11b,Attributes:[{Name:generic.maxHealth,Base:40}],Health:15.0f,NoAI:1b,Silent:1b,Team:"Blue",Tags:["Battle","091StoneB","091Stone"]}

execute as @s[tag=091-2SpawnerR] run summon shulker ~ ~2 ~ {AttachFace:0b,Color:14b,Attributes:[{Name:generic.maxHealth,Base:40}],Health:15.0f,NoAI:1b,Silent:1b,Team:"Red",Tags:["Battle","091StoneR","091Stone"]}

execute as @s[tag=091-2SpawnerB] run summon shulker ~ ~2 ~ {AttachFace:0b,Color:11b,Attributes:[{Name:generic.maxHealth,Base:40}],Health:15.0f,NoAI:1b,Silent:1b,Team:"Blue",Tags:["Battle","091StoneB","091Stone"]}

teleport @s ^ ^ ^1 ~ ~

particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 0.5 10 force
kill @s[scores={counter=13..}]
data merge block -13 5 89 {auto:1b}