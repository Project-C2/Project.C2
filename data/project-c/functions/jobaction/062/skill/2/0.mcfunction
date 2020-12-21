#CT
scoreboard players set @s CT2 900
scoreboard players set @s counter_1 20
#スキル効果
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1
#共通
execute as @s[team=Red] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["062-2Spawner","062-2SpawnerR","062-2SpawnerUnlocated"]}

execute as @s[team=Blue] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["062-2Spawner","062-2SpawnerB","062-2SpawnerUnlocated"]}


teleport @e[tag=062-2SpawnerUnlocated] ^3 ^ ^1 ~90 -10
tag @e[tag=062-2SpawnerUnlocated] remove 062-2SpawnerUnlocated

#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block -107 2 31 {auto:1b}