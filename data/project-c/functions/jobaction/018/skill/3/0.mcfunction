scoreboard players set @s CT3 700
execute rotated ~ 0 run summon armor_stand ^ ^ ^1 {NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wheat_seeds",Count:1b}],DisabledSlots:2039583,Small:1b,Tags:["018-seed","Stand","018-seedReady"]}
execute if entity @s[team=Red] run team join RedDummy @e[tag=018-seedReady]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=018-seedReady]
scoreboard players operation @e[tag=018-seedReady] playerNumber = @s playerNumber

execute at @e[tag=018-seedReady] run summon minecraft:vindicator ~ ~-0.4 ~ {Silent:1b,NoAI:1b,Health:20f,Attributes:[{Name:"generic.max_health",Base:20d},{Name:"generic.knockback_resistance",Base:1d}],Tags:["StandVillager","018-seedVil","018-seedVilReady"],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:0b}]}
execute if entity @s[team=Red] run team join Red @e[tag=018-seedVilReady]
execute if entity @s[team=Blue] run team join Blue @e[tag=018-seedVilReady]

execute at @e[tag=018-seedReady] run particle minecraft:block dirt ~ ~2 ~ 0.3 0.3 0.3 1 50 normal @a
particle minecraft:block dirt ~ ~1 ~ 0.7 1.0 0.7 1 40 force @a
particle minecraft:block dirt ~ ~1 ~ 0.7 1.0 0.7 1 160 normal @a
particle minecraft:rain ~ ~ ~ 1.2 1.5 1.2 1 250 normal @a
particle minecraft:happy_villager ~ ~ ~ 2 1 2 1 150 normal @a
particle minecraft:happy_villager ~ ~ ~ 2 1 2 1 50 force @a
playsound minecraft:block.grass.break master @a ~ ~ ~ 3 0.5
tag @e[tag=018-seedReady] remove 018-seedReady
tag @e[tag=018-seedVilReady] remove 018-seedVilReady


data merge block -113 5 -122 {auto:1b}
data merge block 99 2 -122 {auto:1b}
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3