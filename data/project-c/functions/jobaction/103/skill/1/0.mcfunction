scoreboard players set @s CT1 1092


execute anchored eyes run summon fireball ^ ^-0.55 ^1.5 {ExplosionPower:2,Tags:["103enchanted","103fireball1","this"]}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.11 {Tags:["103vector"],Duration:1}
data modify entity @e[tag=this,limit=1] power set from entity @e[tag=103vector,limit=1] Pos
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=103vector,limit=1] Pos
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
tag @e[tag=103vector,limit=1] remove 103vector
tag @e[tag=this] remove this

playsound minecraft:entity.evoker.prepare_attack master @a ~ ~1 ~ 2 1.2
particle minecraft:witch ~ ~1 ~ 1 1 1 1 48 normal @a
particle minecraft:witch ~ ~1 ~ 1 1 1 1 12 force @a

data merge block 131 2 89 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
