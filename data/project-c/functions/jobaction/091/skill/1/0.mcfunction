#CT
scoreboard players set @s CT1 800
#スキル効果
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1
#共通

execute as @s[team=Red] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["091-2Spawner","091-2SpawnerR","091-2SpawnerUnlocated"]}

execute as @s[team=Blue] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["091-2Spawner","091-2SpawnerB","091-2SpawnerUnlocated"]}


teleport @e[tag=091-2SpawnerUnlocated] ^6 ^ ^3 ~90 0
tag @e[tag=091-2SpawnerUnlocated] remove 091-2SpawnerUnlocated

#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
data merge block -13 2 89 {auto:1b}