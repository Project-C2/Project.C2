execute store result score @s CT1 run data get entity @s SelectedItem.tag.wnkmSkillCT 1

summon zombie_horse ~ ~ ~ {Tags:["first","117_1"],Invulnerable:1b,DeathLootTable:"empty",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0d}],Tame:1b,NoAI:1b,Silent:1b}
execute rotated ~ 0 run tp @e[tag=first,limit=1,sort=nearest] ^ ^ ^2 ~ 0
execute at @e[tag=first,limit=1,sort=nearest] run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1.6 2
execute at @e[tag=first,limit=1,sort=nearest] run particle minecraft:portal ~ ~1 ~ 0.2 0.2 0.2 1.6 1000 normal @a
execute at @e[tag=first,limit=1,sort=nearest] run particle minecraft:portal ~ ~1 ~ 0.0 0.0 0.0 1.6 250 force @a
execute at @e[tag=first,limit=1,sort=nearest] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2.5 1
execute at @e[tag=first,limit=1,sort=nearest] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 2 normal @a
execute at @e[tag=first,limit=1,sort=nearest] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
execute if entity @s[team=Red] run tag @e[tag=first] add 117_1R
execute if entity @s[team=Blue] run tag @e[tag=first] add 117_1B
tag @e[tag=first] remove first


data merge block 32 61 -62 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
