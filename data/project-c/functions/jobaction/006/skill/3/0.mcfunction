scoreboard players set @s CT3 800


playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
particle portal ~ ~1 ~ 0 0 0 4 300

#既にビーコンがある場合kill
execute if entity @s[team=Red] as @e[tag=BeaconR] if score @s playerNumber = @a[team=Red,sort=nearest,limit=1] playerNumber run kill @s
execute if entity @s[team=Blue] as @e[tag=BeaconB] if score @s playerNumber = @a[team=Blue,sort=nearest,limit=1] playerNumber run kill @s

execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"ビーコン\"}",CustomNameVisible:1b,Team:"RedDummy",Tags:["BeaconStand"],Marker:1b,NoGravity:1b,DisabledSlots:2039583,Passengers:[{id:"minecraft:vindicator",Tags:["Beacon","BeaconR","BeaconSet"],Attributes:[{Name:generic.maxHealth,Base:10}],Health:10.0f,PersistenceRequired:1b,NoAI:1b,Silent:1b,Team:"Red",ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}]}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"ビーコン\"}",CustomNameVisible:1b,Team:"BlueDummy",Tags:["BeaconStand"],Marker:1b,NoGravity:1b,DisabledSlots:2039583,Passengers:[{id:"minecraft:vindicator",Tags:["Beacon","BeaconB","BeaconSet"],Attributes:[{Name:generic.maxHealth,Base:10}],Health:10.0f,NoAI:1b,Silent:1b,PersistenceRequired:1b,Team:"Blue",ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}]}

tp @e[tag=BeaconSet] @s

scoreboard players operation @e[tag=BeaconSet,limit=1] playerNumber = @s playerNumber
tag @e[tag=BeaconSet] remove BeaconSet

data merge block -45 2 -122 {auto:1b}

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3