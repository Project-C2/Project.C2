#スキル13
execute if score @s counter_3 matches 13 run tag @s add skill1_use
execute if score @s counter_4 matches 13 run tag @s add skill2_use
execute if score @s counter_5 matches 13 run tag @s add skill3_use
#===================================================================

scoreboard players set #106_CT counter 400

function project-c:jobaction/106/items/skill/bulk



playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1.5
particle minecraft:witch ~ ~1 ~ 0.2 0.2 0.2 0.4 10 force


summon minecraft:bat ~ ~ ~ {Tags:["106_perforate_bullet","106_perforate_bullet_no_1","number_operation"],Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
summon minecraft:bat ~ ~ ~ {Tags:["106_perforate_bullet","106_perforate_bullet_no_2","number_operation"],Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
summon minecraft:bat ~ ~ ~ {Tags:["106_perforate_bullet","106_perforate_bullet_no_3","number_operation"],Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
#summon minecraft:creeper ~ ~ ~ {CustomName:'{\"text\":\"ボム\"}",Tags:["bomb","number_operation"],ignited:1b,ExplosionRadius:2b,Fuse:1000s,NoAI:1b}

scoreboard players operation @e[type=minecraft:bat,tag=number_operation,tag=106_perforate_bullet] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join Red @e[tag=number_operation,limit=3]
execute if entity @s[team=Blue] run team join Blue @e[tag=number_operation,limit=3]
tag @e[type=minecraft:bat,tag=number_operation,tag=106_perforate_bullet] remove number_operation
