execute store result score @s CT2 run data get entity @s SelectedItem.tag.wnkmSkillCT 1
#scoreboard players set @s counter_2 20
scoreboard players set @s counter_3 1
tag @s add SkillDelay2

summon minecraft:silverfish ~ ~ ~ {Tags:["first","119_2"],Team:"bb.no_collide",Silent:1b,Invulnerable:1b,DeathTime:19s,DeathLootTable:"empty",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:0b}]}
scoreboard players operation @e[tag=first,limit=1,sort=nearest] playerNumber = @s playerNumber
execute anchored eyes run tp @e[tag=first,limit=1] ^ ^ ^ ~ ~

execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.66 {Tags:["119vector"],Duration:1}
data modify entity @e[tag=first,limit=1] Motion set from entity @e[tag=119vector,limit=1] Pos
execute as @e[tag=first,limit=1] store result score @s counter_1 run data get entity @s Motion[0] 1000
execute as @e[tag=first,limit=1] store result score @s counter_2 run data get entity @s Motion[1] 1000
execute as @e[tag=first,limit=1] store result score @s counter_3 run data get entity @s Motion[2] 1000

tag @e[tag=first] remove first
kill @e[tag=119vector]
tag @s add 119_2using

data merge block 58 61 -62 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
function project-c:jobaction/119/snowball