scoreboard players set @s CT3 900


playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~1 ~ 1 1
particle witch ~ ~ ~ 0 0 0 1 30

execute if entity @s[team=Red] as @e[tag=VindicationR] if score @s playerNumber = @p playerNumber run kill @s
execute if entity @s[team=Blue] as @e[tag=VindicationB] if score @s playerNumber = @p playerNumber run kill @s

execute if entity @s[team=Red] run summon vindicator ~ ~ ~ {CustomName:"{\"text\":\"ヴィンディケーター\"}",CustomNameVisible:1b,HandItems:[{id:iron_axe,Count:1b,tag:{Unbreakable:1,AttributeModifiers:[{Name:generic.followRange,Base:40},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:166565,UUIDMost:162104}],display:{Name:"Iron Scythe"}}},{}],HandDropChances:[0.0F,0.0F],Team:"Red",Tags:["VindicationR","VindicationSet"],PersistenceRequired:1b}
execute if entity @s[team=Blue] run summon vindicator ~ ~ ~ {CustomName:"{\"text\":\"ヴィンディケーター\"}",CustomNameVisible:1b,HandItems:[{id:iron_axe,Count:1b,tag:{Unbreakable:1,AttributeModifiers:[{Name:generic.followRange,Base:40},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:166565,UUIDMost:162104}],display:{Name:"Iron Scythe"}}},{}],HandDropChances:[0.0F,0.0F],Team:"Blue",Tags:["VindicationB","VindicationSet"],PersistenceRequired:1b}

scoreboard players operation @e[tag=VindicationSet] playerNumber = @s playerNumber
tag @e[tag=VindicationSet] remove VindicationSet


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3