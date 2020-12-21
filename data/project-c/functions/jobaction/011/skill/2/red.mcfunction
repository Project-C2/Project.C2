execute as @e[tag=SculptureR] if score @s playerNumber = @a[sort=nearest,limit=1] playerNumber run kill @s
summon armor_stand ~ ~ ~ {Tags:["Reset","Stand","SculptureStandR","Sculpture","SculptureStandSet"],Marker:1b,ArmorItems:[{id:leather_boots,Count:1b,tag:{Unbreakable:1b,display:{color:16711680}}},{},{},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],DisabledSlots:2039583,Passengers:[{id:"minecraft:vindicator",Tags:["SculptureR","StandVillager","SculptureSet"],Attributes:[{Name:generic.maxHealth,Base:30}],Health:30.0f,NoAI:1b,Silent:1b,Team:"Red",ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}]}
scoreboard players operation @e[tag=SculptureSet] playerNumber = @s playerNumber
scoreboard players set @e[tag=SculptureStandSet] counter_1 1
tag @e[tag=SculptureSet] remove SculptureSet
tag @e[tag=SculptureStandSet] remove SculptureStandSet