scoreboard players set @s CT1 1100
scoreboard players set @s usedSkill 1

playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1
particle minecraft:crit ^ ^ ^2 1 1 1 1 80


execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=1},limit=1] playerNumber run scoreboard players remove @s subcounter 1
execute as @e[tag=Turlet,scores={subcounter=0}] at @s run kill @s




execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"text":"タレット"}',Invisible:1b,CustomNameVisible:0b,Tags:["TurletStand","TurletStandRed"],Marker:1b,NoGravity:1b,DisabledSlots:2039583,Passengers:[{id:"minecraft:vindicator",Tags:["Turlet","TurletSet","TurletRed"],Attributes:[{Name:"generic.maxHealth",Base:10}],Health:10.0f,PersistenceRequired:1b,NoAI:1b,Silent:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}]}

execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],CustomName:'{"text":"タレット"}',Invisible:1b,CustomNameVisible:0b,Tags:["TurletStand","TurletStandBlue"],Marker:1b,NoGravity:1b,DisabledSlots:2039583,Passengers:[{id:"minecraft:vindicator",Tags:["Turlet","TurletSet","TurletBlue"],Attributes:[{Name:"generic.maxHealth",Base:10}],Health:10.0f,PersistenceRequired:1b,NoAI:1b,Silent:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}]}

scoreboard players operation @e[tag=Turlet,sort=nearest,limit=1] playerNumber = @s playerNumber
scoreboard players set @e[tag=Turlet,sort=nearest,limit=1] subcounter 5


teleport @e[limit=1,sort=nearest,tag=TurletStand] ^ ^ ^ ~ 0
teleport @e[limit=1,sort=nearest,tag=TurletSet] ^ ^ ^ ~ 0

execute as @e[limit=1,sort=nearest,tag=TurletStand] at @s run teleport @s ^ ^ ^1 ~ 0
execute as @e[limit=1,sort=nearest,tag=TurletSet] at @s run teleport @s ^ ^ ^ ~ 0

tag @e[tag=TurletSet] remove TurletSet

tag @s remove SkillReady1


data merge block -61 2 89 {auto:1b}
data merge block -61 5 89 {auto:1b}